USE elearning_db;

-- ============================================
-- INSERT SAMPLE DATA
-- ============================================

-- Insert Instructors
INSERT INTO users (username, email, password_hash, full_name, role, bio) VALUES
('sarah_smith', 'sarah.smith@elearning.edu', 'hashed_password_1', 'Dr. Sarah Smith', 'instructor', 'PhD in Psychology with 15 years of teaching and published research on cognitive development.'),
('michael_johnson', 'michael.johnson@elearning.edu', 'hashed_password_2', 'Prof. Michael Johnson', 'instructor', 'Professor of Business Administration specializing in economics and entrepreneurship with 20+ years of industry experience.'),
('emily_williams', 'emily.williams@elearning.edu', 'hashed_password_3', 'Dr. Emily Williams', 'instructor', 'Computer Science lecturer focusing on software engineering, web technologies, and AI applications.'),
('david_brown', 'david.brown@elearning.edu', 'hashed_password_4', 'Prof. David Brown', 'instructor', 'Health and Wellness researcher with expertise in nutrition, fitness, and preventive healthcare.'),
('maria_garcia', 'maria.garcia@elearning.edu', 'hashed_password_5', 'Dr. Maria Garcia', 'instructor', 'Creative Arts educator with a background in graphic design, photography, and digital storytelling.');

-- Insert Sample Students
INSERT INTO users (username, email, password_hash, full_name, role) VALUES
('john_doe', 'john.doe@student.elearning.edu', 'hashed_password_6', 'John Doe', 'student'),
('jane_smith', 'jane.smith@student.elearning.edu', 'hashed_password_7', 'Jane Smith', 'student'),
('bob_wilson', 'bob.wilson@student.elearning.edu', 'hashed_password_8', 'Bob Wilson', 'student');

-- ============================================
-- INSERT 15 COURSES
-- ============================================

INSERT INTO courses (course_code, title, description, instructor_id, category, difficulty_level, duration_weeks) VALUES
('PSY101', 'Introduction to Psychology', 'Explore the fundamentals of human behavior, cognition, and mental processes. Perfect for beginners interested in understanding the mind.', 1, 'Psychology', 'beginner', 8),
('PSY201', 'Cognitive Psychology', 'Deep dive into memory, perception, attention, and problem-solving. Learn how the human mind processes information.', 1, 'Psychology', 'intermediate', 8),
('BUS101', 'Business Fundamentals', 'Learn essential business concepts including management, marketing, and organizational behavior.', 2, 'Business', 'beginner', 8),
('ECON101', 'Microeconomics', 'Understand supply and demand, market structures, consumer behavior, and economic decision-making.', 2, 'Economics', 'beginner', 8),
('FIN101', 'Personal Finance', 'Master budgeting, saving, investing, and financial planning for personal wealth building.', 2, 'Finance', 'beginner', 8),
('CS101', 'Introduction to Programming', 'Learn programming fundamentals using Python. No prior experience required.', 3, 'Technology', 'beginner', 8),
('WEB101', 'Web Development Basics', 'Build websites using HTML, CSS, and JavaScript. Create your first web project.', 3, 'Technology', 'beginner', 8),
('DATA101', 'Data Analysis Fundamentals', 'Learn to analyze data, create visualizations, and derive insights using popular tools.', 3, 'Technology', 'beginner', 8),
('HEALTH101', 'Nutrition and Wellness', 'Understand proper nutrition, healthy eating habits, and lifestyle choices for better health.', 4, 'Health', 'beginner', 8),
('FIT101', 'Fitness and Exercise Science', 'Learn about exercise physiology, workout planning, and maintaining an active lifestyle.', 4, 'Health', 'beginner', 8),
('ART101', 'Digital Design Basics', 'Introduction to graphic design principles, color theory, and digital tools.', 5, 'Creative Arts', 'beginner', 8),
('PHOTO101', 'Photography Fundamentals', 'Master camera settings, composition, lighting, and photo editing techniques.', 5, 'Creative Arts', 'beginner', 8),
('WRITE101', 'Creative Writing', 'Develop your writing skills through storytelling, character development, and narrative techniques.', 5, 'Creative Arts', 'beginner', 8),
('COMM101', 'Public Speaking', 'Build confidence in public speaking, presentation skills, and effective communication.', 1, 'Communication', 'beginner', 8),
('LEAD101', 'Leadership Skills', 'Develop essential leadership qualities, team management, and decision-making abilities.', 2, 'Business', 'intermediate', 8);

