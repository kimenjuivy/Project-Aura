// ============================================
// ENHANCED AUTHENTICATION JAVASCRIPT
// ============================================

document.addEventListener('DOMContentLoaded', function() {
    initPasswordStrength();
    initPasswordMatch();
    initUsernameValidation();
    initFormAnimations();
    initButtonRipple();
    initInputFocus();
    initFormValidation();
});

// ============================================
// PASSWORD STRENGTH INDICATOR (ENHANCED)
// ============================================
function initPasswordStrength() {
    const passwordInput = document.getElementById('password');
    if (!passwordInput) return;

    // Create enhanced strength indicator
    const strengthIndicator = document.createElement('div');
    strengthIndicator.className = 'password-strength';
    passwordInput.parentNode.appendChild(strengthIndicator);

    passwordInput.addEventListener('input', function() {
        const password = this.value;
        const strength = calculatePasswordStrength(password);
        
        // Create animated bars
        const barsHTML = Array.from({length: 4}, (_, i) => {
            const isActive = i < strength;
            const color = isActive ? getStrengthColor(strength) : 'var(--gray-200)';
            return `<div class="password-strength-bar ${isActive ? 'active' : ''}" style="background: ${color};"></div>`;
        }).join('');
        
        strengthIndicator.innerHTML = `
            <div class="password-strength-bars">${barsHTML}</div>
            <span class="password-strength-text" style="color: ${getStrengthColor(strength)};">
                ${getStrengthText(strength)}
            </span>
        `;
    });
}

function calculatePasswordStrength(password) {
    if (!password) return 0;
    
    let strength = 0;
    
    if (password.length >= 8) strength++;
    if (password.match(/[a-z]/) && password.match(/[A-Z]/)) strength++;
    if (password.match(/[0-9]/)) strength++;
    if (password.match(/[^a-zA-Z0-9]/)) strength++;
    
    return Math.min(strength, 4);
}

function getStrengthColor(strength) {
    const colors = {
        0: '#ef4444',
        1: '#ef4444',
        2: '#f59e0b',
        3: '#10b981',
        4: '#10b981'
    };
    return colors[strength];
}

function getStrengthText(strength) {
    const texts = {
        0: 'Too short',
        1: 'Weak',
        2: 'Fair',
        3: 'Good',
        4: 'Strong'
    };
    return texts[strength];
}

// ============================================
// PASSWORD MATCH VALIDATION (ENHANCED)
// ============================================
function initPasswordMatch() {
    const password = document.getElementById('password');
    const confirmPassword = document.getElementById('confirm_password');
    
    if (!password || !confirmPassword) return;

    confirmPassword.addEventListener('input', function() {
        if (!this.value) {
            this.classList.remove('valid', 'invalid');
            removeMatchFeedback(confirmPassword);
            return;
        }

        if (this.value === password.value) {
            this.classList.remove('invalid');
            this.classList.add('valid');
            showMatchFeedback(confirmPassword, true);
        } else {
            this.classList.remove('valid');
            this.classList.add('invalid');
            showMatchFeedback(confirmPassword, false);
        }
    });

    // Also check when password changes
    password.addEventListener('input', function() {
        if (confirmPassword.value) {
            confirmPassword.dispatchEvent(new Event('input'));
        }
    });
}

function showMatchFeedback(element, isMatch) {
    removeMatchFeedback(element);
    
    const feedback = document.createElement('div');
    feedback.className = 'password-match-feedback';
    feedback.style.color = isMatch ? 'var(--success)' : 'var(--error)';
    feedback.innerHTML = isMatch 
        ? '<i class="fas fa-check-circle"></i> <span>Passwords match</span>' 
        : '<i class="fas fa-times-circle"></i> <span>Passwords do not match</span>';
    
    element.parentNode.appendChild(feedback);
}

function removeMatchFeedback(element) {
    const existing = element.parentNode.querySelector('.password-match-feedback');
    if (existing) existing.remove();
}

// ============================================
// USERNAME VALIDATION (ENHANCED)
// ============================================
function initUsernameValidation() {
    const usernameInput = document.getElementById('username');
    if (!usernameInput) return;

    let typingTimer;
    const typingDelay = 500;

    usernameInput.addEventListener('input', function() {
        clearTimeout(typingTimer);
        
        let value = this.value;
        
        // Remove invalid characters
        value = value.replace(/[^a-zA-Z0-9_]/g, '');
        
        if (value !== this.value) {
            this.value = value;
        }
        
        // Visual feedback
        this.classList.remove('valid', 'invalid');
        
        if (value.length === 0) {
            // Empty - neutral state
        } else if (value.length < 3) {
            this.classList.add('invalid');
        } else {
            this.classList.add('valid');
        }
        
        // Debounced validation
        typingTimer = setTimeout(() => {
            validateUsername(value, this);
        }, typingDelay);
    });
}

function validateUsername(username, inputElement) {
    if (username.length < 3) return;
    
    // Add your actual validation logic here
    // For now, just visual feedback is handled above
    console.log('Validating username:', username);
}

// ============================================
// FORM ANIMATIONS
// ============================================
function initFormAnimations() {
    const formGroups = document.querySelectorAll('.form-group, .form-group-checkbox');
    
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
            }
        });
    }, {
        threshold: 0.1
    });

    formGroups.forEach(group => {
        observer.observe(group);
    });
}

// ============================================
// BUTTON RIPPLE EFFECT
// ============================================
function initButtonRipple() {
    const buttons = document.querySelectorAll('.btn');
    
    buttons.forEach(button => {
        button.addEventListener('click', function(e) {
            const ripple = document.createElement('span');
            const rect = this.getBoundingClientRect();
            const size = Math.max(rect.width, rect.height);
            const x = e.clientX - rect.left - size / 2;
            const y = e.clientY - rect.top - size / 2;
            
            ripple.style.width = ripple.style.height = size + 'px';
            ripple.style.left = x + 'px';
            ripple.style.top = y + 'px';
            ripple.classList.add('ripple');
            
            this.appendChild(ripple);
            
            setTimeout(() => ripple.remove(), 600);
        });
    });
}

// ============================================
// INPUT FOCUS ENHANCEMENTS
// ============================================
function initInputFocus() {
    const inputs = document.querySelectorAll('.form-control');
    
    inputs.forEach(input => {
        // Add focus class to parent
        input.addEventListener('focus', function() {
            this.closest('.form-group')?.classList.add('focused');
        });
        
        input.addEventListener('blur', function() {
            this.closest('.form-group')?.classList.remove('focused');
        });
        
        // Add filled class when input has value
        input.addEventListener('input', function() {
            if (this.value.trim()) {
                this.closest('.form-group')?.classList.add('filled');
            } else {
                this.closest('.form-group')?.classList.remove('filled');
            }
        });
        
        // Check initial state
        if (input.value.trim()) {
            input.closest('.form-group')?.classList.add('filled');
        }
    });
}

// ============================================
// FORM VALIDATION & SUBMISSION
// ============================================
function initFormValidation() {
    const forms = document.querySelectorAll('.auth-form');
    
    forms.forEach(form => {
        form.addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Validate all fields
            const isValid = validateForm(this);
            
            if (isValid) {
                showLoadingState(this);
                
                // Submit form after animation
                setTimeout(() => {
                    this.submit();
                }, 500);
            } else {
                // Shake animation for invalid form
                this.classList.add('shake');
                setTimeout(() => this.classList.remove('shake'), 500);
            }
        });
    });
}

function validateForm(form) {
    let isValid = true;
    const inputs = form.querySelectorAll('.form-control[required]');
    
    inputs.forEach(input => {
        if (!input.value.trim()) {
            input.classList.add('invalid');
            isValid = false;
        } else {
            input.classList.remove('invalid');
        }
    });
    
    // Additional validation for password match
    const password = form.querySelector('#password');
    const confirmPassword = form.querySelector('#confirm_password');
    
    if (password && confirmPassword && confirmPassword.value) {
        if (password.value !== confirmPassword.value) {
            confirmPassword.classList.add('invalid');
            isValid = false;
        }
    }
    
    return isValid;
}

function showLoadingState(form) {
    const submitButton = form.querySelector('button[type="submit"]');
    if (!submitButton) return;
    
    submitButton.classList.add('loading');
    submitButton.disabled = true;
}

// ============================================
// TOGGLE PASSWORD VISIBILITY
// ============================================
function togglePasswordVisibility(inputId) {
    const input = document.getElementById(inputId);
    if (!input) return;

    const type = input.type === 'password' ? 'text' : 'password';
    input.type = type;
    
    // Animate the change
    input.style.transform = 'scale(0.98)';
    setTimeout(() => {
        input.style.transform = 'scale(1)';
    }, 150);
}

// ============================================
// SHAKE ANIMATION FOR ERRORS
// ============================================
const style = document.createElement('style');
style.textContent = `
    @keyframes shake {
        0%, 100% { transform: translateX(0); }
        10%, 30%, 50%, 70%, 90% { transform: translateX(-5px); }
        20%, 40%, 60%, 80% { transform: translateX(5px); }
    }
    
    .shake {
        animation: shake 0.5s ease-in-out;
    }
    
    .ripple {
        position: absolute;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.6);
        transform: scale(0);
        animation: ripple-animation 0.6s ease-out;
        pointer-events: none;
    }
    
    @keyframes ripple-animation {
        to {
            transform: scale(4);
            opacity: 0;
        }
    }
`;
document.head.appendChild(style);

// ============================================
// EMAIL VALIDATION
// ============================================
function initEmailValidation() {
    const emailInput = document.getElementById('email');
    if (!emailInput) return;

    let typingTimer;
    const typingDelay = 500;

    emailInput.addEventListener('input', function() {
        clearTimeout(typingTimer);
        
        const email = this.value.trim();
        
        this.classList.remove('valid', 'invalid');
        
        if (!email) return;
        
        typingTimer = setTimeout(() => {
            if (isValidEmail(email)) {
                this.classList.add('valid');
            } else if (email.length > 0) {
                this.classList.add('invalid');
            }
        }, typingDelay);
    });
}

function isValidEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

// ============================================
// KEYBOARD SHORTCUTS
// ============================================
document.addEventListener('keydown', function(e) {
    // Enter to submit form when focused on input
    if (e.key === 'Enter' && e.target.classList.contains('form-control')) {
        const form = e.target.closest('form');
        if (form) {
            const submitButton = form.querySelector('button[type="submit"]');
            if (submitButton) submitButton.click();
        }
    }
});

// ============================================
// AUTO-FOCUS FIRST INPUT
// ============================================
window.addEventListener('load', function() {
    const firstInput = document.querySelector('.form-control');
    if (firstInput && !firstInput.value) {
        setTimeout(() => firstInput.focus(), 300);
    }
});

// ============================================
// FLOATING PARTICLES ANIMATION (OPTIONAL)
// ============================================
function createFloatingParticles() {
    const container = document.querySelector('.auth-container');
    if (!container) return;

    for (let i = 0; i < 20; i++) {
        const particle = document.createElement('div');
        particle.className = 'floating-particle';
        particle.style.cssText = `
            position: absolute;
            width: ${Math.random() * 4 + 2}px;
            height: ${Math.random() * 4 + 2}px;
            background: rgba(255, 255, 255, 0.3);
            border-radius: 50%;
            left: ${Math.random() * 100}%;
            top: ${Math.random() * 100}%;
            animation: float-particle ${Math.random() * 10 + 15}s infinite ease-in-out;
            animation-delay: ${Math.random() * 5}s;
            pointer-events: none;
        `;
        container.appendChild(particle);
    }

    const particleStyle = document.createElement('style');
    particleStyle.textContent = `
        @keyframes float-particle {
            0%, 100% {
                transform: translate(0, 0);
                opacity: 0;
            }
            10% {
                opacity: 1;
            }
            90% {
                opacity: 1;
            }
            50% {
                transform: translate(${Math.random() * 100 - 50}px, ${Math.random() * 100 - 50}px);
            }
        }
    `;
    document.head.appendChild(particleStyle);
}

// Initialize particles (uncomment if you want this effect)
// createFloatingParticles();

// ============================================
// FULL NAME VALIDATION
// ============================================
function initFullNameValidation() {
    const fullNameInput = document.getElementById('full_name');
    if (!fullNameInput) return;

    fullNameInput.addEventListener('input', function() {
        const value = this.value.trim();
        
        this.classList.remove('valid', 'invalid');
        
        if (!value) return;
        
        if (value.length >= 3 && value.includes(' ')) {
            this.classList.add('valid');
        } else if (value.length > 0) {
            this.classList.add('invalid');
        }
    });
}

// ============================================
// SMOOTH SCROLL TO ERROR
// ============================================
function scrollToFirstError() {
    const firstError = document.querySelector('.form-control.invalid');
    if (firstError) {
        firstError.scrollIntoView({ 
            behavior: 'smooth', 
            block: 'center' 
        });
        firstError.focus();
    }
}

// ============================================
// INITIALIZE ALL ENHANCEMENTS
// ============================================
document.addEventListener('DOMContentLoaded', function() {
    initEmailValidation();
    initFullNameValidation();
    
    // Add smooth transitions to all inputs
    document.querySelectorAll('.form-control').forEach(input => {
        input.style.transition = 'all 0.3s cubic-bezier(0.4, 0, 0.2, 1)';
    });
});

// ============================================
// CONSOLE EASTER EGG
// ============================================
console.log('%c🎨 Beautiful Auth Pages', 'font-size: 20px; font-weight: bold; color: #2563eb;');
console.log('%cMade with ❤️ and lots of CSS magic', 'font-size: 14px; color: #60a5fa;');