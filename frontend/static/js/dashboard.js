// ============================================
// MAGICAL DASHBOARD JAVASCRIPT
// ============================================

document.addEventListener('DOMContentLoaded', function() {
    initDashboard();
});

// ============================================
// INITIALIZE DASHBOARD
// ============================================
function initDashboard() {
    createParticles();
    initProgressBars();
    initStatCards();
    initHoverEffects();
    loadDashboardStats();
    
    // Add entrance animation to page elements
    animatePageEntrance();
}

// ============================================
// CREATE FLOATING PARTICLES
// ============================================
function createParticles() {
    const container = document.querySelector('.dashboard-container');
    if (!container) return;
    
    // Create particles container if it doesn't exist
    let particlesContainer = document.querySelector('.particles-container');
    if (!particlesContainer) {
        particlesContainer = document.createElement('div');
        particlesContainer.className = 'particles-container';
        container.appendChild(particlesContainer);
    }
    
    // Create particles
    const particleCount = 15;
    for (let i = 0; i < particleCount; i++) {
        const particle = document.createElement('div');
        particle.className = 'particle';
        
        // Random properties
        const size = Math.random() * 10 + 5;
        const left = Math.random() * 100;
        const animationDuration = Math.random() * 20 + 10;
        const animationDelay = Math.random() * 5;
        
        particle.style.width = `${size}px`;
        particle.style.height = `${size}px`;
        particle.style.left = `${left}%`;
        particle.style.animationDuration = `${animationDuration}s`;
        particle.style.animationDelay = `${animationDelay}s`;
        
        particlesContainer.appendChild(particle);
    }
}

// ============================================
// ANIMATE PAGE ENTRANCE
// ============================================
function animatePageEntrance() {
    const elements = document.querySelectorAll('.dashboard-section, .quick-actions, .dashboard-header');
    
    elements.forEach((element, index) => {
        element.style.opacity = '0';
        element.style.transform = 'translateY(30px)';
        
        setTimeout(() => {
            element.style.transition = 'all 0.6s cubic-bezier(0.22, 0.61, 0.36, 1)';
            element.style.opacity = '1';
            element.style.transform = 'translateY(0)';
        }, index * 100);
    });
}

// ============================================
// ANIMATE PROGRESS BARS
// ============================================
function initProgressBars() {
    const progressBars = document.querySelectorAll('.progress-fill');
    
    progressBars.forEach(bar => {
        const targetWidth = bar.style.width;
        bar.style.width = '0%';
        
        setTimeout(() => {
            bar.style.transition = 'width 1.2s cubic-bezier(0.22, 0.61, 0.36, 1)';
            bar.style.width = targetWidth;
        }, 300);
    });
}

// ============================================
// ANIMATE STAT CARDS
// ============================================
function initStatCards() {
    const statCards = document.querySelectorAll('.stat-card');
    
    statCards.forEach((card, index) => {
        card.style.opacity = '0';
        card.style.transform = 'translateY(20px) scale(0.95)';
        
        setTimeout(() => {
            card.style.transition = 'all 0.5s cubic-bezier(0.22, 0.61, 0.36, 1)';
            card.style.opacity = '1';
            card.style.transform = 'translateY(0) scale(1)';
        }, 500 + (index * 100));
    });
}

// ============================================
// INITIALIZE HOVER EFFECTS
// ============================================
function initHoverEffects() {
    // Add ripple effect to buttons
    const buttons = document.querySelectorAll('.btn');
    buttons.forEach(button => {
        button.addEventListener('click', function(e) {
            createRippleEffect(e, this);
        });
    });
    
    // Add subtle pulse animation to action cards
    const actionCards = document.querySelectorAll('.action-card');
    actionCards.forEach(card => {
        card.addEventListener('mouseenter', function() {
            this.style.animation = 'pulse 2s infinite';
        });
        
        card.addEventListener('mouseleave', function() {
            this.style.animation = 'none';
        });
    });
}

// ============================================
// CREATE RIPPLE EFFECT
// ============================================
function createRippleEffect(event, element) {
    const ripple = document.createElement('span');
    const rect = element.getBoundingClientRect();
    const size = Math.max(rect.width, rect.height);
    const x = event.clientX - rect.left - size / 2;
    const y = event.clientY - rect.top - size / 2;
    
    ripple.style.width = ripple.style.height = `${size}px`;
    ripple.style.left = `${x}px`;
    ripple.style.top = `${y}px`;
    ripple.classList.add('ripple');
    
    // Remove existing ripples
    const existingRipples = element.querySelectorAll('.ripple');
    existingRipples.forEach(ripple => ripple.remove());
    
    element.appendChild(ripple);
    
    // Remove ripple after animation
    setTimeout(() => {
        ripple.remove();
    }, 600);
}

// ============================================
// LOAD DASHBOARD STATISTICS
// ============================================
function loadDashboardStats() {
    const statsEndpoint = '/progress/api/my-progress';
    
    // Show loading state
    const statNumbers = document.querySelectorAll('.stat-card h3');
    statNumbers.forEach(number => {
        if (!number.querySelector('.loading')) {
            const loading = document.createElement('div');
            loading.className = 'loading';
            number.innerHTML = '';
            number.appendChild(loading);
        }
    });
    
    fetch(statsEndpoint)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            updateDashboardStats(data);
        })
        .catch(error => {
            console.error('Failed to load dashboard stats:', error);
            // Set default values if fetch fails
            const defaultData = {
                total_courses: 0,
                active_courses: 0,
                completed_courses: 0,
                average_progress: 0
            };
            updateDashboardStats(defaultData);
            showToast('Failed to load statistics. Using default values.', 'danger');
        });
}

// ============================================
// UPDATE DASHBOARD STATISTICS
// ============================================
function updateDashboardStats(data) {
    animateNumber('total-courses', data.total_courses);
    animateNumber('active-courses', data.active_courses);
    animateNumber('completed-courses', data.completed_courses);
    animateNumber('average-progress', data.average_progress, '%');
}

// ============================================
// ANIMATE NUMBERS
// ============================================
function animateNumber(elementId, targetValue, suffix = '') {
    const element = document.getElementById(elementId);
    if (!element) return;

    const duration = 1500; // 1.5 seconds
    const steps = 60;
    const increment = targetValue / steps;
    let current = 0;

    const interval = setInterval(() => {
        current += increment;
        if (current >= targetValue) {
            current = targetValue;
            clearInterval(interval);
        }
        element.textContent = Math.round(current) + suffix;
    }, duration / steps);
}

// ============================================
// UNENROLL CONFIRMATION
// ============================================
function confirmUnenroll(courseName) {
    return new Promise((resolve) => {
        // Create a beautiful confirmation modal instead of default confirm
        const modalHtml = `
            <div class="modal-overlay" style="position: fixed; top: 0; left: 0; right: 0; bottom: 0; background: rgba(0,0,0,0.5); display: flex; align-items: center; justify-content: center; z-index: 9999;">
                <div class="modal-content" style="background: white; padding: 2rem; border-radius: 12px; max-width: 400px; width: 90%; box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);">
                    <h3 style="margin-bottom: 1rem; color: var(--gray-800);">Confirm Unenrollment</h3>
                    <p style="margin-bottom: 1.5rem; color: var(--gray-600);">Are you sure you want to unenroll from <strong>"${courseName}"</strong>?</p>
                    <p style="margin-bottom: 2rem; color: var(--gray-500); font-size: 0.875rem;">Your progress will be saved, but you'll lose access to course materials.</p>
                    <div style="display: flex; gap: 0.75rem; justify-content: flex-end;">
                        <button id="cancelUnenroll" class="btn btn-secondary" style="padding: 0.5rem 1rem;">Cancel</button>
                        <button id="confirmUnenroll" class="btn btn-primary" style="padding: 0.5rem 1rem;">Unenroll</button>
                    </div>
                </div>
            </div>
        `;
        
        document.body.insertAdjacentHTML('beforeend', modalHtml);
        
        document.getElementById('cancelUnenroll').addEventListener('click', () => {
            document.querySelector('.modal-overlay').remove();
            resolve(false);
        });
        
        document.getElementById('confirmUnenroll').addEventListener('click', () => {
            document.querySelector('.modal-overlay').remove();
            resolve(true);
        });
    });
}

// ============================================
// LOAD ENROLLMENT PROGRESS
// ============================================
function loadEnrollmentProgress(enrollmentId) {
    showLoading();
    
    fetch(`/enrollment/api/enrollment/${enrollmentId}/progress`)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            hideLoading();
            displayProgressModal(data);
        })
        .catch(error => {
            hideLoading();
            showToast('Failed to load progress details', 'danger');
            console.error('Error:', error);
        });
}

// ============================================
// DISPLAY PROGRESS MODAL
// ============================================
function displayProgressModal(data) {
    let modulesList = '<ul style="list-style: none; padding: 0; margin: 0;">';
    
    data.modules.forEach(module => {
        const statusIcon = module.status === 'completed' 
            ? '<i class="fas fa-check-circle" style="color: #10b981;"></i>'
            : module.status === 'in_progress'
            ? '<i class="fas fa-spinner fa-pulse" style="color: #f59e0b;"></i>'
            : '<i class="fas fa-circle" style="color: #94a3b8;"></i>';
        
        modulesList += `
            <li style="padding: 0.75rem 0; border-bottom: 1px solid #e2e8f0; display: flex; align-items: center; gap: 0.75rem;">
                ${statusIcon} 
                <span>${module.module_title}</span>
            </li>
        `;
    });
    
    modulesList += '</ul>';
    
    const progressPercentage = data.progress_percentage.toFixed(1);
    const progressBar = `
        <div style="margin: 1rem 0;">
            <div style="display: flex; justify-content: space-between; margin-bottom: 0.5rem;">
                <span style="font-weight: 500;">Overall Progress</span>
                <span style="font-weight: 600; color: var(--primary-blue);">${progressPercentage}%</span>
            </div>
            <div class="progress-bar" style="height: 8px; background-color: #e2e8f0; border-radius: 4px; overflow: hidden;">
                <div class="progress-fill" style="height: 100%; background: linear-gradient(90deg, var(--primary-blue), var(--accent-blue)); width: ${progressPercentage}%; border-radius: 4px;"></div>
            </div>
        </div>
    `;
    
    const modalHtml = `
        <div class="modal-overlay" style="position: fixed; top: 0; left: 0; right: 0; bottom: 0; background: rgba(0,0,0,0.5); display: flex; align-items: center; justify-content: center; z-index: 9999;" onclick="this.remove()">
            <div class="modal-content" style="background: white; padding: 2rem; border-radius: 12px; max-width: 500px; width: 90%; max-height: 80vh; overflow-y: auto; box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.25);" onclick="event.stopPropagation()">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1rem;">
                    <h2 style="margin: 0; color: var(--gray-800);">${data.course_title}</h2>
                    <button onclick="this.closest('.modal-overlay').remove()" style="background: none; border: none; font-size: 1.5rem; cursor: pointer; color: var(--gray-500);">&times;</button>
                </div>
                ${progressBar}
                <div style="margin: 1.5rem 0;">
                    <p><strong>Status:</strong> <span style="text-transform: capitalize;">${data.status}</span></p>
                </div>
                <h3 style="margin-bottom: 1rem; color: var(--gray-700);">Module Progress</h3>
                ${modulesList}
                <button onclick="this.closest('.modal-overlay').remove()" class="btn btn-primary" style="margin-top: 1.5rem; width: 100%;">Close</button>
            </div>
        </div>
    `;
    
    document.body.insertAdjacentHTML('beforeend', modalHtml);
    
    // Animate the progress bar in the modal
    setTimeout(() => {
        const progressFill = document.querySelector('.modal-content .progress-fill');
        if (progressFill) {
            const targetWidth = progressFill.style.width;
            progressFill.style.width = '0%';
            setTimeout(() => {
                progressFill.style.transition = 'width 1s ease-out';
                progressFill.style.width = targetWidth;
            }, 100);
        }
    }, 300);
}

// ============================================
// SHOW TOAST NOTIFICATION
// ============================================
function showToast(message, type = 'info') {
    // Remove existing toasts
    const existingToasts = document.querySelectorAll('.toast');
    existingToasts.forEach(toast => toast.remove());
    
    const toast = document.createElement('div');
    toast.className = `toast toast-${type}`;
    toast.innerHTML = `
        <div style="display: flex; align-items: center; gap: 0.75rem;">
            <i class="fas ${getToastIcon(type)}"></i>
            <span>${message}</span>
        </div>
    `;
    
    document.body.appendChild(toast);
    
    // Show toast
    setTimeout(() => {
        toast.classList.add('show');
    }, 100);
    
    // Hide toast after 5 seconds
    setTimeout(() => {
        toast.classList.remove('show');
        setTimeout(() => {
            if (toast.parentNode) {
                toast.parentNode.removeChild(toast);
            }
        }, 300);
    }, 5000);
}

function getToastIcon(type) {
    switch (type) {
        case 'success': return 'fa-check-circle';
        case 'danger': return 'fa-exclamation-circle';
        case 'info': 
        default: return 'fa-info-circle';
    }
}

// ============================================
// LOADING INDICATORS
// ============================================
function showLoading() {
    // You can implement a global loading indicator here
    console.log('Loading...');
}

function hideLoading() {
    // Hide the global loading indicator
    console.log('Loading complete');
}

// ============================================
// VIEW COURSE STATS (FOR INSTRUCTOR DASHBOARD)
// ============================================
function viewCourseStats(courseId) {
    showLoading();
    
    fetch('/courses/api/courses/' + courseId + '/stats')
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            hideLoading();
            displayCourseStatsModal(data);
        })
        .catch(error => {
            hideLoading();
            showToast('Failed to load course statistics', 'danger');
            console.error('Error:', error);
        });
}

// ============================================
// DISPLAY COURSE STATS MODAL
// ============================================
function displayCourseStatsModal(data) {
    const modalHtml = `
        <div class="modal-overlay" style="position: fixed; top: 0; left: 0; right: 0; bottom: 0; background: rgba(0,0,0,0.5); display: flex; align-items: center; justify-content: center; z-index: 9999;" onclick="this.remove()">
            <div class="modal-content" style="background: white; padding: 2rem; border-radius: 12px; max-width: 500px; width: 90%; box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.25);" onclick="event.stopPropagation()">
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1.5rem;">
                    <h2 style="margin: 0; color: var(--gray-800);">Course Statistics</h2>
                    <button onclick="this.closest('.modal-overlay').remove()" style="background: none; border: none; font-size: 1.5rem; cursor: pointer; color: var(--gray-500);">&times;</button>
                </div>
                
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-bottom: 1.5rem;">
                    <div class="stat-box" style="text-align: center; padding: 1rem; background: var(--gray-50); border-radius: 8px;">
                        <div style="font-size: 2rem; font-weight: 700; color: var(--primary-blue);">${data.total_enrollments}</div>
                        <div style="font-size: 0.875rem; color: var(--gray-600);">Total Enrollments</div>
                    </div>
                    <div class="stat-box" style="text-align: center; padding: 1rem; background: var(--gray-50); border-radius: 8px;">
                        <div style="font-size: 2rem; font-weight: 700; color: var(--success);">${data.active_enrollments}</div>
                        <div style="font-size: 0.875rem; color: var(--gray-600);">Active Students</div>
                    </div>
                    <div class="stat-box" style="text-align: center; padding: 1rem; background: var(--gray-50); border-radius: 8px;">
                        <div style="font-size: 2rem; font-weight: 700; color: var(--warning);">${data.completed_enrollments}</div>
                        <div style="font-size: 0.875rem; color: var(--gray-600);">Completed</div>
                    </div>
                    <div class="stat-box" style="text-align: center; padding: 1rem; background: var(--gray-50); border-radius: 8px;">
                        <div style="font-size: 2rem; font-weight: 700; color: var(--accent-blue);">${data.average_progress.toFixed(1)}%</div>
                        <div style="font-size: 0.875rem; color: var(--gray-600);">Average Progress</div>
                    </div>
                </div>
                
                <button onclick="this.closest('.modal-overlay').remove()" class="btn btn-primary" style="width: 100%;">Close</button>
            </div>
        </div>
    `;
    
    document.body.insertAdjacentHTML('beforeend', modalHtml);
}