// AI Tutor JavaScript - frontend/static/js/ai-tutor.js

// Configuration
const API_BASE = '/api/ai-tutor';
let currentSessionId = null;
let contextType = 'general';
let contextId = null;
let preferredModel = 'claude';

// Initialize on page load
document.addEventListener('DOMContentLoaded', () => {
    initializeChat();
    setupEventListeners();
    loadContextFromURL();
});

// Setup event listeners
function setupEventListeners() {
    const chatInput = document.getElementById('chatInput');
    const sendButton = document.getElementById('sendButton');

    // Auto-resize textarea
    chatInput.addEventListener('input', () => {
        chatInput.style.height = 'auto';
        chatInput.style.height = chatInput.scrollHeight + 'px';
    });

    // Send on Enter (Shift+Enter for new line)
    chatInput.addEventListener('keydown', (e) => {
        if (e.key === 'Enter' && !e.shiftKey) {
            e.preventDefault();
            sendMessage();
        }
    });
}

// Initialize chat session
async function initializeChat() {
    try {
        const response = await fetch(`${API_BASE}/chat/start`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                context_type: contextType,
                course_id: contextId && contextType === 'course' ? contextId : null,
                module_id: contextId && contextType === 'module' ? contextId : null,
                quiz_id: contextId && contextType === 'quiz' ? contextId : null
            })
        });

        const data = await response.json();

        if (data.success) {
            currentSessionId = data.session.session_id;
            
            // Display welcome message
            if (data.session.messages && data.session.messages.length > 0) {
                data.session.messages.forEach(msg => {
                    if (msg.role === 'assistant') {
                        displayMessage(msg.content, 'assistant', msg.created_at);
                    }
                });
                hideWelcomeScreen();
            }
        } else {
            showError('Failed to start chat session');
        }
    } catch (error) {
        console.error('Error initializing chat:', error);
        showError('Failed to connect to AI tutor');
    }
}

// Load context from URL parameters
function loadContextFromURL() {
    const urlParams = new URLSearchParams(window.location.search);
    
    contextType = urlParams.get('context_type') || 'general';
    contextId = urlParams.get('context_id') || null;
    
    updateContextDisplay();
}

// Update context info display
function updateContextDisplay() {
    const contextInfo = document.getElementById('contextInfo');
    
    const contextLabels = {
        'general': '💬 General Chat',
        'course': '📚 Course Help',
        'module': '📖 Module Help',
        'quiz': '📝 Quiz Help'
    };
    
    contextInfo.textContent = contextLabels[contextType] || 'General Chat';
}

// Send message
async function sendMessage() {
    const chatInput = document.getElementById('chatInput');
    const message = chatInput.value.trim();

    if (!message) return;

    if (!currentSessionId) {
        showError('Chat session not initialized');
        return;
    }

    // Display user message immediately
    displayMessage(message, 'user');
    chatInput.value = '';
    chatInput.style.height = 'auto';

    // Hide welcome screen
    hideWelcomeScreen();

    // Show typing indicator
    showTypingIndicator();

    // Disable send button
    const sendButton = document.getElementById('sendButton');
    sendButton.disabled = true;

    try {
        const response = await fetch(`${API_BASE}/chat/${currentSessionId}/message`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                content: message,
                preferred_model: preferredModel
            })
        });

        const data = await response.json();

        // Hide typing indicator
        hideTypingIndicator();

        if (data.success) {
            // Display AI response
            displayMessage(
                data.ai_message.content,
                'assistant',
                data.ai_message.created_at,
                data.ai_message.ai_model
            );

            // Update model badge
            updateModelBadge(data.ai_message.ai_model);
        } else {
            showError(data.error || 'Failed to send message');
        }
    } catch (error) {
        console.error('Error sending message:', error);
        hideTypingIndicator();
        showError('Failed to communicate with AI tutor');
    } finally {
        sendButton.disabled = false;
    }
}

// Display message in chat
function displayMessage(content, role, timestamp = null, model = null) {
    const chatMessages = document.getElementById('chatMessages');
    
    const messageDiv = document.createElement('div');
    messageDiv.className = `message ${role}`;

    const bubbleDiv = document.createElement('div');
    bubbleDiv.className = 'message-bubble';

    // Format message content (handle markdown-like formatting)
    bubbleDiv.innerHTML = formatMessageContent(content);

    // Add timestamp
    if (timestamp) {
        const timeSpan = document.createElement('span');
        timeSpan.className = 'message-time';
        timeSpan.textContent = formatTimestamp(timestamp);
        bubbleDiv.appendChild(timeSpan);
    }

    messageDiv.appendChild(bubbleDiv);
    chatMessages.appendChild(messageDiv);

    // Scroll to bottom
    scrollToBottom();
}

// Format message content
function formatMessageContent(content) {
    // Convert markdown-like syntax to HTML
    let formatted = content
        // Bold
        .replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>')
        // Italic
        .replace(/\*(.+?)\*/g, '<em>$1</em>')
        // Code blocks
        .replace(/```(.+?)```/gs, '<pre><code>$1</code></pre>')
        // Inline code
        .replace(/`(.+?)`/g, '<code>$1</code>')
        // Line breaks
        .replace(/\n/g, '<br>');

    return formatted;
}

// Format timestamp
function formatTimestamp(timestamp) {
    const date = new Date(timestamp);
    const now = new Date();
    const diff = now - date;

    // If less than 1 minute ago
    if (diff < 60000) {
        return 'Just now';
    }
    // If less than 1 hour ago
    else if (diff < 3600000) {
        const minutes = Math.floor(diff / 60000);
        return `${minutes}m ago`;
    }
    // If today
    else if (date.toDateString() === now.toDateString()) {
        return date.toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit' });
    }
    // Otherwise show date
    else {
        return date.toLocaleDateString('en-US', { month: 'short', day: 'numeric' });
    }
}

// Show typing indicator
function showTypingIndicator() {
    const chatMessages = document.getElementById('chatMessages');
    
    const typingDiv = document.createElement('div');
    typingDiv.className = 'message assistant';
    typingDiv.id = 'typingIndicator';

    typingDiv.innerHTML = `
        <div class="typing-indicator active">
            <div class="typing-dots">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    `;

    chatMessages.appendChild(typingDiv);
    scrollToBottom();
}

// Hide typing indicator
function hideTypingIndicator() {
    const indicator = document.getElementById('typingIndicator');
    if (indicator) {
        indicator.remove();
    }
}

// Show error message
function showError(message) {
    const errorDiv = document.getElementById('errorMessage');
    errorDiv.textContent = message;
    errorDiv.classList.add('show');

    setTimeout(() => {
        errorDiv.classList.remove('show');
    }, 5000);
}

// Hide welcome screen
function hideWelcomeScreen() {
    const welcomeScreen = document.getElementById('welcomeScreen');
    if (welcomeScreen) {
        welcomeScreen.style.display = 'none';
    }

    // Show quick actions
    const quickActions = document.getElementById('quickActions');
    quickActions.style.display = 'flex';
}

// Update model badge
function updateModelBadge(model) {
    const badge = document.getElementById('modelBadge');
    
    const modelNames = {
        'claude-sonnet-4-5-20250929': 'Claude',
        'gpt-4': 'GPT-4',
        'gpt-3.5-turbo': 'GPT-3.5',
        'gemini-pro': 'Gemini'
    };

    badge.textContent = modelNames[model] || model;
}

// Scroll to bottom of chat
function scrollToBottom() {
    const chatMessages = document.getElementById('chatMessages');
    chatMessages.scrollTop = chatMessages.scrollHeight;
}

// Quick question function
function askQuestion(question) {
    const chatInput = document.getElementById('chatInput');
    chatInput.value = question;
    chatInput.focus();
    sendMessage();
}

// Export functions for external use
window.aiTutor = {
    sendMessage,
    askQuestion,
    setContext: (type, id) => {
        contextType = type;
        contextId = id;
        updateContextDisplay();
    },
    setModel: (model) => {
        preferredModel = model;
    }
};