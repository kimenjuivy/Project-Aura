USE elearning_db;

-- ============================================
-- INSERT QUIZZES (ONE PER MODULE)
-- ============================================

-- Create quizzes for all 120 modules (15 courses × 8 weeks)
-- Psychology 101 Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(1, 'Week 1 Quiz: Introduction to Psychology', 'Test your understanding of psychology basics', 20, 70.00, 3),
(2, 'Week 2 Quiz: Research Methods', 'Assessment on scientific research methods', 20, 70.00, 3),
(3, 'Week 3 Quiz: Biological Psychology', 'Quiz on brain and nervous system', 20, 70.00, 3),
(4, 'Week 4 Quiz: Sensation and Perception', 'Test on sensory systems', 20, 70.00, 3),
(5, 'Week 5 Quiz: Learning and Conditioning', 'Assessment on learning theories', 20, 70.00, 3),
(6, 'Week 6 Quiz: Memory and Cognition', 'Quiz on memory processes', 20, 70.00, 3),
(7, 'Week 7 Quiz: Development Psychology', 'Test on human development', 20, 70.00, 3),
(8, 'Week 8 Quiz: Social Psychology', 'Final assessment on social behavior', 25, 70.00, 3);

-- Cognitive Psychology Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(9, 'Week 1 Quiz: Foundations', 'Test on cognitive psychology basics', 20, 70.00, 3),
(10, 'Week 2 Quiz: Attention', 'Assessment on attention processes', 20, 70.00, 3),
(11, 'Week 3 Quiz: Pattern Recognition', 'Quiz on perception and recognition', 20, 70.00, 3),
(12, 'Week 4 Quiz: Memory Systems', 'Test on memory models', 20, 70.00, 3),
(13, 'Week 5 Quiz: Knowledge', 'Assessment on knowledge representation', 20, 70.00, 3),
(14, 'Week 6 Quiz: Language', 'Quiz on language processing', 20, 70.00, 3),
(15, 'Week 7 Quiz: Problem Solving', 'Test on problem-solving strategies', 20, 70.00, 3),
(16, 'Week 8 Quiz: Decision Making', 'Final assessment on decision making', 25, 70.00, 3);

-- Business Fundamentals Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(17, 'Week 1 Quiz: Business Basics', 'Test on business fundamentals', 20, 70.00, 3),
(18, 'Week 2 Quiz: Strategy', 'Assessment on business strategy', 20, 70.00, 3),
(19, 'Week 3 Quiz: Marketing', 'Quiz on marketing principles', 20, 70.00, 3),
(20, 'Week 4 Quiz: Operations', 'Test on operations management', 20, 70.00, 3),
(21, 'Week 5 Quiz: HR Management', 'Assessment on human resources', 20, 70.00, 3),
(22, 'Week 6 Quiz: Finance', 'Quiz on financial management', 20, 70.00, 3),
(23, 'Week 7 Quiz: Ethics', 'Test on business ethics', 20, 70.00, 3),
(24, 'Week 8 Quiz: Entrepreneurship', 'Final assessment on starting businesses', 25, 70.00, 3);

-- Microeconomics Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(25, 'Week 1 Quiz: Economic Thinking', 'Test on economic principles', 20, 70.00, 3),
(26, 'Week 2 Quiz: Supply and Demand', 'Assessment on market forces', 20, 70.00, 3),
(27, 'Week 3 Quiz: Elasticity', 'Quiz on price elasticity', 20, 70.00, 3),
(28, 'Week 4 Quiz: Consumer Behavior', 'Test on consumer choice', 20, 70.00, 3),
(29, 'Week 5 Quiz: Production', 'Assessment on production and costs', 20, 70.00, 3),
(30, 'Week 6 Quiz: Competition', 'Quiz on perfect competition', 20, 70.00, 3),
(31, 'Week 7 Quiz: Monopoly', 'Test on market structures', 20, 70.00, 3),
(32, 'Week 8 Quiz: Market Failures', 'Final assessment on market failures', 25, 70.00, 3);

-- Personal Finance Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(33, 'Week 1 Quiz: Goal Setting', 'Test on financial goals', 20, 70.00, 3),
(34, 'Week 2 Quiz: Budgeting', 'Assessment on budgeting skills', 20, 70.00, 3),
(35, 'Week 3 Quiz: Saving', 'Quiz on banking and savings', 20, 70.00, 3),
(36, 'Week 4 Quiz: Credit', 'Test on credit management', 20, 70.00, 3),
(37, 'Week 5 Quiz: Investing', 'Assessment on investment basics', 20, 70.00, 3),
(38, 'Week 6 Quiz: Retirement', 'Quiz on retirement planning', 20, 70.00, 3),
(39, 'Week 7 Quiz: Insurance', 'Test on insurance products', 20, 70.00, 3),
(40, 'Week 8 Quiz: Taxes', 'Final assessment on tax planning', 25, 70.00, 3);

-- Programming Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(41, 'Week 1 Quiz: Basics', 'Test on programming fundamentals', 20, 70.00, 3),
(42, 'Week 2 Quiz: Control Flow', 'Assessment on if statements and loops', 20, 70.00, 3),
(43, 'Week 3 Quiz: Functions', 'Quiz on function creation', 20, 70.00, 3),
(44, 'Week 4 Quiz: Data Structures', 'Test on lists and dictionaries', 20, 70.00, 3),
(45, 'Week 5 Quiz: Strings', 'Assessment on string manipulation', 20, 70.00, 3),
(46, 'Week 6 Quiz: Files', 'Quiz on file handling', 20, 70.00, 3),
(47, 'Week 7 Quiz: Errors', 'Test on error handling', 20, 70.00, 3),
(48, 'Week 8 Quiz: Final Project Review', 'Final programming assessment', 30, 70.00, 2);

-- Web Development Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(49, 'Week 1 Quiz: HTML', 'Test on HTML structure', 20, 70.00, 3),
(50, 'Week 2 Quiz: CSS Styling', 'Assessment on CSS basics', 20, 70.00, 3),
(51, 'Week 3 Quiz: Layout', 'Quiz on CSS layout techniques', 20, 70.00, 3),
(52, 'Week 4 Quiz: JavaScript Basics', 'Test on JavaScript fundamentals', 20, 70.00, 3),
(53, 'Week 5 Quiz: DOM', 'Assessment on DOM manipulation', 20, 70.00, 3),
(54, 'Week 6 Quiz: Forms', 'Quiz on form handling', 20, 70.00, 3),
(55, 'Week 7 Quiz: APIs', 'Test on API integration', 20, 70.00, 3),
(56, 'Week 8 Quiz: Responsive Design', 'Final web development assessment', 25, 70.00, 3);

-- Data Analysis Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(57, 'Week 1 Quiz: Introduction', 'Test on data analysis basics', 20, 70.00, 3),
(58, 'Week 2 Quiz: Working with Data', 'Assessment on data handling', 20, 70.00, 3),
(59, 'Week 3 Quiz: Cleaning', 'Quiz on data cleaning techniques', 20, 70.00, 3),
(60, 'Week 4 Quiz: Statistics', 'Test on descriptive statistics', 20, 70.00, 3),
(61, 'Week 5 Quiz: Visualization', 'Assessment on data visualization', 20, 70.00, 3),
(62, 'Week 6 Quiz: Correlation', 'Quiz on relationships in data', 20, 70.00, 3),
(63, 'Week 7 Quiz: Predictions', 'Test on predictive analytics', 20, 70.00, 3),
(64, 'Week 8 Quiz: Presentation', 'Final data analysis assessment', 25, 70.00, 3);

-- Nutrition Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(65, 'Week 1 Quiz: Nutrition Basics', 'Test on essential nutrients', 20, 70.00, 3),
(66, 'Week 2 Quiz: Food Labels', 'Assessment on reading labels', 20, 70.00, 3),
(67, 'Week 3 Quiz: Meal Planning', 'Quiz on balanced meals', 20, 70.00, 3),
(68, 'Week 4 Quiz: Weight Management', 'Test on healthy weight strategies', 20, 70.00, 3),
(69, 'Week 5 Quiz: Special Diets', 'Assessment on dietary patterns', 20, 70.00, 3),
(70, 'Week 6 Quiz: Hydration', 'Quiz on fluid intake', 20, 70.00, 3),
(71, 'Week 7 Quiz: Food Safety', 'Test on safe food handling', 20, 70.00, 3),
(72, 'Week 8 Quiz: Sustainable Eating', 'Final nutrition assessment', 25, 70.00, 3);

-- Fitness Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(73, 'Week 1 Quiz: Fitness Fundamentals', 'Test on fitness components', 20, 70.00, 3),
(74, 'Week 2 Quiz: Cardio', 'Assessment on cardiovascular exercise', 20, 70.00, 3),
(75, 'Week 3 Quiz: Strength', 'Quiz on strength training', 20, 70.00, 3),
(76, 'Week 4 Quiz: Flexibility', 'Test on stretching techniques', 20, 70.00, 3),
(77, 'Week 5 Quiz: Programming', 'Assessment on workout planning', 20, 70.00, 3),
(78, 'Week 6 Quiz: Injury Prevention', 'Quiz on exercise safety', 20, 70.00, 3),
(79, 'Week 7 Quiz: Recovery', 'Test on rest and recovery', 20, 70.00, 3),
(80, 'Week 8 Quiz: Lifelong Fitness', 'Final fitness assessment', 25, 70.00, 3);

-- Digital Design Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(81, 'Week 1 Quiz: Design Principles', 'Test on design fundamentals', 20, 70.00, 3),
(82, 'Week 2 Quiz: Color Theory', 'Assessment on color usage', 20, 70.00, 3),
(83, 'Week 3 Quiz: Typography', 'Quiz on font selection', 20, 70.00, 3),
(84, 'Week 4 Quiz: Composition', 'Test on layout design', 20, 70.00, 3),
(85, 'Week 5 Quiz: Digital Tools', 'Assessment on design software', 20, 70.00, 3),
(86, 'Week 6 Quiz: Logo Design', 'Quiz on branding', 20, 70.00, 3),
(87, 'Week 7 Quiz: Social Graphics', 'Test on social media design', 20, 70.00, 3),
(88, 'Week 8 Quiz: Portfolio', 'Final design assessment', 25, 70.00, 3);

-- Photography Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(89, 'Week 1 Quiz: Camera Basics', 'Test on camera controls', 20, 70.00, 3),
(90, 'Week 2 Quiz: Exposure', 'Assessment on exposure triangle', 20, 70.00, 3),
(91, 'Week 3 Quiz: Composition', 'Quiz on composition rules', 20, 70.00, 3),
(92, 'Week 4 Quiz: Lighting', 'Test on lighting techniques', 20, 70.00, 3),
(93, 'Week 5 Quiz: Portraits', 'Assessment on portrait photography', 20, 70.00, 3),
(94, 'Week 6 Quiz: Landscapes', 'Quiz on landscape photography', 20, 70.00, 3),
(95, 'Week 7 Quiz: Editing', 'Test on photo editing', 20, 70.00, 3),
(96, 'Week 8 Quiz: Portfolio Building', 'Final photography assessment', 25, 70.00, 3);

-- Creative Writing Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(97, 'Week 1 Quiz: Writing Voice', 'Test on developing style', 20, 70.00, 3),
(98, 'Week 2 Quiz: Characters', 'Assessment on character creation', 20, 70.00, 3),
(99, 'Week 3 Quiz: Plot', 'Quiz on story structure', 20, 70.00, 3),
(100, 'Week 4 Quiz: Dialogue', 'Test on writing dialogue', 20, 70.00, 3),
(101, 'Week 5 Quiz: Setting', 'Assessment on world-building', 20, 70.00, 3),
(102, 'Week 6 Quiz: Show Don\t Tell', 'Quiz on writing techniques', 20, 70.00, 3),
(103, 'Week 7 Quiz: Editing', 'Test on revision skills', 20, 70.00, 3),
(104, 'Week 8 Quiz: Publishing', 'Final writing assessment', 25, 70.00, 3);

-- Public Speaking Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(105, 'Week 1 Quiz: Overcoming Fear', 'Test on managing anxiety', 20, 70.00, 3),
(106, 'Week 2 Quiz: Speech Structure', 'Assessment on organizing speeches', 20, 70.00, 3),
(107, 'Week 3 Quiz: Vocal Delivery', 'Quiz on voice techniques', 20, 70.00, 3),
(108, 'Week 4 Quiz: Body Language', 'Test on nonverbal communication', 20, 70.00, 3),
(109, 'Week 5 Quiz: Visual Aids', 'Assessment on using visuals', 20, 70.00, 3),
(110, 'Week 6 Quiz: Persuasion', 'Quiz on persuasive speaking', 20, 70.00, 3),
(111, 'Week 7 Quiz: Impromptu Speaking', 'Test on spontaneous speaking', 20, 70.00, 3),
(112, 'Week 8 Quiz: Professional Presentations', 'Final speaking assessment', 25, 70.00, 3);

-- Leadership Skills Quizzes
INSERT INTO quizzes (module_id, title, description, duration_minutes, passing_score, max_attempts) VALUES
(113, 'Week 1 Quiz: Leadership Basics', 'Test on leadership foundations', 20, 70.00, 3),
(114, 'Week 2 Quiz: Self-Awareness', 'Assessment on leadership styles', 20, 70.00, 3),
(115, 'Week 3 Quiz: Communication', 'Quiz on leader communication', 20, 70.00, 3),
(116, 'Week 4 Quiz: Team Building', 'Test on building teams', 20, 70.00, 3),
(117, 'Week 5 Quiz: Decision Making', 'Assessment on making decisions', 20, 70.00, 3),
(118, 'Week 6 Quiz: Conflict', 'Quiz on conflict resolution', 20, 70.00, 3),
(119, 'Week 7 Quiz: Change Management', 'Test on leading change', 20, 70.00, 3),
(120, 'Week 8 Quiz: Ethical Leadership', 'Final leadership assessment', 25, 70.00, 3);