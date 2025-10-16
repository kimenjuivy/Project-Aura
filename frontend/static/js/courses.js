// ============================================
// COURSES JAVASCRIPT
// ============================================

document.addEventListener('DOMContentLoaded', function() {
    initCourseFilters();
    initEnrollmentButtons();
});

// ============================================
// COURSE FILTERS
// ============================================
function initCourseFilters() {
    const filterForm = document.querySelector('.filters-form');
    if (!filterForm) return;

    // Auto-submit on select change
    const selects = filterForm.querySelectorAll('select');
    selects.forEach(select => {
        select.addEventListener('change', function() {
            filterForm.submit();
        });
    });
}

// ============================================
// ENROLLMENT BUTTONS
// ============================================
function initEnrollmentButtons() {
    const enrollButtons = document.querySelectorAll('[data-enroll-course]');
    
    enrollButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            const courseTitle = this.dataset.courseTitle;
            if (!confirm(`Enroll in "${courseTitle}"?`)) {
                e.preventDefault();
            }
        });
    });
}

// ============================================
// MARK RESOURCE AS COMPLETE
// ============================================
function markResourceComplete(resourceId) {
    showLoading();
    
    fetch(`/progress/resource/${resourceId}/complete`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            time_spent_minutes: 0
        })
    })
    .then(response => response.json())
    .then(data => {
        hideLoading();
        if (data.success) {
            showToast('Resource marked as complete!', 'success');
            
            // Update button
            const button = document.querySelector(`[data-resource-id="${resourceId}"]`);
            if (button) {
                button.innerHTML = '<i class="fas fa-check"></i> Completed';
                button.classList.remove('btn-success');
                button.classList.add('btn-secondary');
                button.disabled = true;
            }
        } else {
            showToast('Failed to mark resource as complete', 'danger');
        }
    })
    .catch(error => {
        hideLoading();
        showToast('An error occurred', 'danger');
        console.error('Error:', error);
    });
}

// ============================================
// MARK MODULE AS COMPLETE
// ============================================
function markModuleComplete(moduleId) {
    if (!confirm('Mark this module as complete? This will update your progress.')) {
        return;
    }
    
    showLoading();
    
    fetch(`/progress/module/${moduleId}/complete`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        }
    })
    .then(response => response.json())
    .then(data => {
        hideLoading();
        if (data.success) {
            showToast(`Module completed! Your course progress is now ${data.course_progress.toFixed(1)}%`, 'success');
            setTimeout(() => {
                location.reload();
            }, 1500);
        } else {
            showToast('Failed to mark module as complete', 'danger');
        }
    })
    .catch(error => {
        hideLoading();
        showToast('An error occurred', 'danger');
        console.error('Error:', error);
    });
}

// ============================================
// LOAD COURSE STATS (for instructors)
// ============================================
function viewCourseStats(courseId) {
    showLoading();
    
    fetch(`/courses/api/courses/${courseId}/stats`)
        .then(response => response.json())
        .then(data => {
            hideLoading();
            
            const message = `
Course Statistics:

Total Enrollments: ${data.total_enrollments}
Active Students: ${data.active_enrollments}
Completed: ${data.completed_enrollments}
Average Progress: ${data.average_progress.toFixed(1)}%
            `;
            
            alert(message);
        })
        .catch(error => {
            hideLoading();
            showToast('Failed to load statistics', 'danger');
            console.error('Error:', error);
        });
}

// ============================================
// SEARCH COURSES
// ============================================
function searchCourses() {
    const searchInput = document.getElementById('search');
    if (!searchInput) return;

    const searchTerm = searchInput.value.toLowerCase();
    const courseCards = document.querySelectorAll('.course-card');

    courseCards.forEach(card => {
        const title = card.querySelector('h3').textContent.toLowerCase();
        const description = card.querySelector('.course-description')?.textContent.toLowerCase() || '';

        if (title.includes(searchTerm) || description.includes(searchTerm)) {
            card.style.display = '';
        } else {
            card.style.display = 'none';
        }
    });
}

