// ============================================
// QUIZ JAVASCRIPT
// ============================================

let quizTimer;
let timeRemaining;

document.addEventListener('DOMContentLoaded', function() {
    initQuizTimer();
    initQuizProgress();
    initQuizSubmit();
    initAnswerSelection();
});

// ============================================
// QUIZ TIMER
// ============================================
function initQuizTimer() {
    const timerElement = document.getElementById('timeRemaining');
    if (!timerElement) return;

    const quizForm = document.getElementById('quizForm');
    const durationMinutes = parseInt(timerElement.dataset.duration || 30);
    
    timeRemaining = durationMinutes * 60; // Convert to seconds

    quizTimer = setInterval(() => {
        timeRemaining--;
        updateTimerDisplay(timerElement);

        // Warning at 5 minutes
        if (timeRemaining === 300) {
            showToast('5 minutes remaining!', 'warning');
            timerElement.style.color = '#f59e0b';
        }

        // Warning at 1 minute
        if (timeRemaining === 60) {
            showToast('1 minute remaining!', 'danger');
            timerElement.style.color = '#ef4444';
        }

        // Time's up
        if (timeRemaining <= 0) {
            clearInterval(quizTimer);
            alert('Time is up! Submitting quiz...');
            quizForm.submit();
        }
    }, 1000);
}

function updateTimerDisplay(element) {
    const minutes = Math.floor(timeRemaining / 60);
    const seconds = timeRemaining % 60;
    element.textContent = `${minutes}:${seconds.toString().padStart(2, '0')}`;
}

// ============================================
// QUIZ PROGRESS TRACKING
// ============================================
function initQuizProgress() {
    const progressFill = document.getElementById('progressFill');
    const answeredCount = document.getElementById('answeredCount');
    
    if (!progressFill || !answeredCount) return;

    const totalQuestions = document.querySelectorAll('.question-card').length;
    
    // Track answer changes
    const inputs = document.querySelectorAll('input[type="radio"], textarea');
    inputs.forEach(input => {
        input.addEventListener('change', () => updateProgress());
        input.addEventListener('input', () => updateProgress());
    });

    function updateProgress() {
        const answeredQuestions = new Set();
        
        document.querySelectorAll('.question-card').forEach(card => {
            const questionId = card.dataset.questionId;
            const radioChecked = card.querySelector('input[type="radio"]:checked');
            const textareaFilled = card.querySelector('textarea')?.value.trim();
            
            if (radioChecked || textareaFilled) {
                answeredQuestions.add(questionId);
            }
        });
        
        const count = answeredQuestions.size;
        const percentage = (count / totalQuestions) * 100;
        
        progressFill.style.width = percentage + '%';
        answeredCount.textContent = count;
    }

    // Initial check
    updateProgress();
}

// ============================================
// QUIZ SUBMISSION
// ============================================
function initQuizSubmit() {
    const quizForm = document.getElementById('quizForm');
    if (!quizForm) return;

    quizForm.addEventListener('submit', function(e) {
        // Check if all questions are answered
        const totalQuestions = document.querySelectorAll('.question-card').length;
        const answeredQuestions = document.querySelectorAll('input[type="radio"]:checked, textarea[value!=""]').length;

        if (answeredQuestions < totalQuestions) {
            if (!confirm(`You have only answered ${answeredQuestions} out of ${totalQuestions} questions. Submit anyway?`)) {
                e.preventDefault();
                return false;
            }
        }

        // Final confirmation
        if (!confirm('Are you sure you want to submit? You cannot change your answers after submission.')) {
            e.preventDefault();
            return false;
        }

        // Clear timer
        if (quizTimer) {
            clearInterval(quizTimer);
        }

        showLoading();
    });
}

// ============================================
// ANSWER SELECTION
// ============================================
function initAnswerSelection() {
    const optionLabels = document.querySelectorAll('.option-label');
    
    optionLabels.forEach(label => {
        label.addEventListener('click', function() {
            // Remove previous selection highlight from siblings
            const parent = this.parentElement;
            parent.querySelectorAll('.option-label').forEach(l => {
                l.style.borderColor = '';
                l.style.background = '';
            });
            
            // Highlight selected option
            setTimeout(() => {
                if (this.querySelector('input[type="radio"]').checked) {
                    this.style.borderColor = 'var(--primary-color)';
                    this.style.background = 'rgba(37, 99, 235, 0.05)';
                }
            }, 10);
        });
    });
}

// ============================================
// NAVIGATE TO QUESTION
// ============================================
function scrollToQuestion(questionNumber) {
    const questions = document.querySelectorAll('.question-card');
    if (questions[questionNumber - 1]) {
        questions[questionNumber - 1].scrollIntoView({ 
            behavior: 'smooth', 
            block: 'center' 
        });
    }
}

// ============================================
// REVIEW ANSWERS
// ============================================
function reviewAnswers() {
    const unanswered = [];
    
    document.querySelectorAll('.question-card').forEach((card, index) => {
        const questionNum = index + 1;
        const radioChecked = card.querySelector('input[type="radio"]:checked');
        const textareaFilled = card.querySelector('textarea')?.value.trim();
        
        if (!radioChecked && !textareaFilled) {
            unanswered.push(questionNum);
        }
    });
    
    if (unanswered.length > 0) {
        alert(`Unanswered questions: ${unanswered.join(', ')}`);
        scrollToQuestion(unanswered[0]);
    } else {
        alert('All questions answered! You can submit when ready.');
    }
}

// ============================================
// WARN BEFORE LEAVING
// ============================================
window.addEventListener('beforeunload', function(e) {
    if (document.getElementById('quizForm')) {
        e.preventDefault();
        e.returnValue = '';
    }
});