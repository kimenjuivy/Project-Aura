USE elearning_db;


SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE modules;
SET FOREIGN_KEY_CHECKS = 1;


INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(1, 1, 'Week 1: Introduction to Psychology', 'Overview of psychology as a science and its major perspectives', 'Understand what psychology is and its historical development', 1),
(1, 2, 'Week 2: Research Methods', 'Scientific methods used in psychological research', 'Learn about experiments, surveys, and observational studies', 2),
(1, 3, 'Week 3: Biological Psychology', 'The brain, nervous system, and behavior', 'Understand brain structure and neurotransmitters', 3),
(1, 4, 'Week 4: Sensation and Perception', 'How we perceive the world through our senses', 'Explore sensory systems and perceptual processes', 4),
(1, 5, 'Week 5: Learning and Conditioning', 'Classical and operant conditioning principles', 'Apply learning theories to real-world situations', 5),
(1, 6, 'Week 6: Memory and Cognition', 'How memory works and cognitive processes', 'Understand memory types and improvement strategies', 6),
(1, 7, 'Week 7: Development Psychology', 'Human development from birth to old age', 'Learn about developmental stages and milestones', 7),
(1, 8, 'Week 8: Social Psychology', 'How people influence each other in social contexts', 'Understand conformity, obedience, and group dynamics', 8);

-- Cognitive Psychology Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(2, 1, 'Week 1: Foundations of Cognitive Psychology', 'History and scope of cognitive psychology', 'Understand cognitive revolution and key concepts', 1),
(2, 2, 'Week 2: Attention and Consciousness', 'How we focus and become aware', 'Learn about selective attention and awareness', 2),
(2, 3, 'Week 3: Pattern Recognition', 'How we recognize objects and faces', 'Understand visual perception and recognition', 3),
(2, 4, 'Week 4: Memory Systems', 'Working memory and long-term memory', 'Explore memory models and processes', 4),
(2, 5, 'Week 5: Knowledge Representation', 'How information is stored in mind', 'Learn about schemas and mental models', 5),
(2, 6, 'Week 6: Language Processing', 'Understanding and producing language', 'Explore psycholinguistics and comprehension', 6),
(2, 7, 'Week 7: Problem Solving', 'Strategies for solving complex problems', 'Apply problem-solving techniques', 7),
(2, 8, 'Week 8: Decision Making', 'How we make choices and judgments', 'Understand biases and heuristics', 8);

-- Business Fundamentals Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(3, 1, 'Week 1: Introduction to Business', 'Overview of business environment and systems', 'Understand what business is and how it operates', 1),
(3, 2, 'Week 2: Business Strategy', 'Strategic planning and competitive advantage', 'Learn to analyze markets and competition', 2),
(3, 3, 'Week 3: Marketing Basics', 'Marketing principles and the 4Ps', 'Understand customer needs and marketing mix', 3),
(3, 4, 'Week 4: Operations Management', 'Production and service delivery', 'Learn about efficiency and quality control', 4),
(3, 5, 'Week 5: Human Resource Management', 'Managing people in organizations', 'Understand recruitment and employee development', 5),
(3, 6, 'Week 6: Financial Management', 'Business finance and budgeting', 'Learn to read financial statements', 6),
(3, 7, 'Week 7: Business Ethics', 'Ethical decision-making in business', 'Apply ethical frameworks to business scenarios', 7),
(3, 8, 'Week 8: Entrepreneurship', 'Starting and growing a business', 'Develop a basic business plan', 8);

-- Microeconomics Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(4, 1, 'Week 1: Economic Thinking', 'Scarcity, choice, and opportunity cost', 'Think like an economist about trade-offs', 1),
(4, 2, 'Week 2: Supply and Demand', 'Market forces and equilibrium', 'Analyze how prices are determined', 2),
(4, 3, 'Week 3: Elasticity', 'Price sensitivity of consumers and producers', 'Calculate and interpret elasticity', 3),
(4, 4, 'Week 4: Consumer Behavior', 'How consumers make decisions', 'Apply utility theory to choices', 4),
(4, 5, 'Week 5: Production and Costs', 'How firms produce goods efficiently', 'Understand cost structures', 5),
(4, 6, 'Week 6: Perfect Competition', 'Markets with many small firms', 'Analyze competitive market outcomes', 6),
(4, 7, 'Week 7: Monopoly and Market Power', 'Markets dominated by few firms', 'Compare market structures', 7),
(4, 8, 'Week 8: Market Failures', 'When markets dont work efficiently', 'Identify externalities and public goods', 8);

-- Personal Finance Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(5, 1, 'Week 1: Financial Goal Setting', 'Creating SMART financial goals', 'Develop personal financial objectives', 1),
(5, 2, 'Week 2: Budgeting Basics', 'Tracking income and expenses', 'Create a practical budget', 2),
(5, 3, 'Week 3: Banking and Saving', 'Using banks and building emergency funds', 'Choose appropriate savings accounts', 3),
(5, 4, 'Week 4: Credit and Debt', 'Understanding credit scores and managing debt', 'Use credit responsibly', 4),
(5, 5, 'Week 5: Investing Fundamentals', 'Stocks, bonds, and mutual funds', 'Understand basic investment vehicles', 5),
(5, 6, 'Week 6: Retirement Planning', 'Planning for your financial future', 'Calculate retirement needs', 6),
(5, 7, 'Week 7: Insurance', 'Protecting yourself and your assets', 'Choose appropriate insurance coverage', 7),
(5, 8, 'Week 8: Tax Planning', 'Understanding taxes and deductions', 'Plan for tax efficiency', 8);

-- Programming Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(6, 1, 'Week 1: Programming Basics', 'Variables, data types, and operators', 'Write your first Python program', 1),
(6, 2, 'Week 2: Control Flow', 'If statements and loops', 'Control program execution flow', 2),
(6, 3, 'Week 3: Functions', 'Creating reusable code blocks', 'Write and call functions', 3),
(6, 4, 'Week 4: Data Structures', 'Lists, tuples, and dictionaries', 'Work with collections of data', 4),
(6, 5, 'Week 5: String Manipulation', 'Working with text data', 'Process and format strings', 5),
(6, 6, 'Week 6: File Handling', 'Reading and writing files', 'Persist data to disk', 6),
(6, 7, 'Week 7: Error Handling', 'Dealing with exceptions', 'Write robust error-free code', 7),
(6, 8, 'Week 8: Final Project', 'Build a complete application', 'Apply all learned concepts', 8);

-- Web Development Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(7, 1, 'Week 1: HTML Basics', 'Structure of web pages', 'Create basic HTML documents', 1),
(7, 2, 'Week 2: CSS Styling', 'Making websites beautiful', 'Style HTML with CSS', 2),
(7, 3, 'Week 3: CSS Layout', 'Flexbox and Grid systems', 'Create responsive layouts', 3),
(7, 4, 'Week 4: JavaScript Basics', 'Adding interactivity', 'Write basic JavaScript', 4),
(7, 5, 'Week 5: DOM Manipulation', 'Changing web pages dynamically', 'Interact with HTML using JavaScript', 5),
(7, 6, 'Week 6: Forms and Validation', 'Collecting user input', 'Create and validate forms', 6),
(7, 7, 'Week 7: APIs and Fetch', 'Getting data from servers', 'Use APIs in your applications', 7),
(7, 8, 'Week 8: Responsive Design', 'Mobile-friendly websites', 'Build sites that work everywhere', 8);

-- Data Analysis Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(8, 1, 'Week 1: Introduction to Data Analysis', 'What is data analysis and why it matters', 'Understand the data analysis process', 1),
(8, 2, 'Week 2: Working with Data', 'Loading and exploring datasets', 'Import and examine data', 2),
(8, 3, 'Week 3: Data Cleaning', 'Handling missing and incorrect data', 'Clean and prepare data for analysis', 3),
(8, 4, 'Week 4: Descriptive Statistics', 'Summarizing data with numbers', 'Calculate mean, median, and mode', 4),
(8, 5, 'Week 5: Data Visualization', 'Creating charts and graphs', 'Visualize data effectively', 5),
(8, 6, 'Week 6: Correlation and Relationships', 'Finding patterns in data', 'Identify relationships between variables', 6),
(8, 7, 'Week 7: Basic Predictions', 'Introduction to predictive analytics', 'Build simple prediction models', 7),
(8, 8, 'Week 8: Presenting Insights', 'Communicating findings', 'Create data-driven presentations', 8);

-- Nutrition Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(9, 1, 'Week 1: Nutrition Basics', 'Macronutrients and micronutrients', 'Understand essential nutrients', 1),
(9, 2, 'Week 2: Reading Food Labels', 'Decoding nutritional information', 'Make informed food choices', 2),
(9, 3, 'Week 3: Meal Planning', 'Creating balanced meals', 'Plan nutritious weekly menus', 3),
(9, 4, 'Week 4: Weight Management', 'Healthy approaches to weight', 'Understand energy balance', 4),
(9, 5, 'Week 5: Special Diets', 'Vegetarian, vegan, and other diets', 'Evaluate different dietary patterns', 5),
(9, 6, 'Week 6: Hydration', 'Importance of water and fluids', 'Maintain proper hydration', 6),
(9, 7, 'Week 7: Food Safety', 'Preventing foodborne illness', 'Handle and store food safely', 7),
(9, 8, 'Week 8: Sustainable Eating', 'Nutrition and environmental impact', 'Make eco-friendly food choices', 8);

-- Fitness Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(10, 1, 'Week 1: Fitness Fundamentals', 'Components of physical fitness', 'Understand fitness principles', 1),
(10, 2, 'Week 2: Cardiovascular Exercise', 'Heart health and endurance', 'Design cardio workouts', 2),
(10, 3, 'Week 3: Strength Training', 'Building muscle and bone strength', 'Perform basic strength exercises', 3),
(10, 4, 'Week 4: Flexibility and Mobility', 'Stretching and range of motion', 'Improve flexibility safely', 4),
(10, 5, 'Week 5: Exercise Programming', 'Creating workout plans', 'Design personalized routines', 5),
(10, 6, 'Week 6: Injury Prevention', 'Staying safe during exercise', 'Recognize and avoid injuries', 6),
(10, 7, 'Week 7: Recovery and Rest', 'Importance of rest days', 'Optimize recovery strategies', 7),
(10, 8, 'Week 8: Lifelong Fitness', 'Maintaining active lifestyle', 'Create sustainable fitness habits', 8);

-- Digital Design Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(11, 1, 'Week 1: Design Principles', 'Fundamentals of good design', 'Apply basic design principles', 1),
(11, 2, 'Week 2: Color Theory', 'Understanding color and emotion', 'Create effective color palettes', 2),
(11, 3, 'Week 3: Typography', 'Fonts and text in design', 'Choose appropriate typefaces', 3),
(11, 4, 'Week 4: Composition', 'Arranging elements effectively', 'Create balanced layouts', 4),
(11, 5, 'Week 5: Digital Tools', 'Introduction to design software', 'Use basic design tools', 5),
(11, 6, 'Week 6: Logo Design', 'Creating brand identities', 'Design simple logos', 6),
(11, 7, 'Week 7: Social Media Graphics', 'Designing for platforms', 'Create engaging social content', 7),
(11, 8, 'Week 8: Portfolio Development', 'Showcasing your work', 'Build a design portfolio', 8);

-- Photography Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(12, 1, 'Week 1: Camera Basics', 'Understanding your camera', 'Master camera controls', 1),
(12, 2, 'Week 2: Exposure Triangle', 'Aperture, shutter speed, ISO', 'Control exposure manually', 2),
(12, 3, 'Week 3: Composition Rules', 'Rule of thirds and leading lines', 'Compose compelling photos', 3),
(12, 4, 'Week 4: Lighting', 'Natural and artificial light', 'Use light creatively', 4),
(12, 5, 'Week 5: Portrait Photography', 'Taking photos of people', 'Capture great portraits', 5),
(12, 6, 'Week 6: Landscape Photography', 'Capturing nature and scenery', 'Shoot stunning landscapes', 6),
(12, 7, 'Week 7: Photo Editing', 'Post-processing techniques', 'Edit photos effectively', 7),
(12, 8, 'Week 8: Building a Portfolio', 'Showcasing your best work', 'Curate a photo portfolio', 8);

-- Creative Writing Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(13, 1, 'Week 1: Finding Your Voice', 'Developing your writing style', 'Explore different writing voices', 1),
(13, 2, 'Week 2: Character Development', 'Creating memorable characters', 'Build complex characters', 2),
(13, 3, 'Week 3: Plot Structure', 'Story arcs and narrative flow', 'Structure compelling stories', 3),
(13, 4, 'Week 4: Dialogue', 'Writing realistic conversations', 'Craft natural dialogue', 4),
(13, 5, 'Week 5: Setting and World-building', 'Creating vivid worlds', 'Describe settings effectively', 5),
(13, 6, 'Week 6: Show, Dont Tell', 'Advanced writing techniques', 'Use sensory details', 6),
(13, 7, 'Week 7: Editing and Revision', 'Improving your drafts', 'Self-edit your work', 7),
(13, 8, 'Week 8: Publishing Paths', 'Getting your work out there', 'Understand publishing options', 8);

-- Public Speaking Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(14, 1, 'Week 1: Overcoming Fear', 'Managing public speaking anxiety', 'Build speaking confidence', 1),
(14, 2, 'Week 2: Speech Structure', 'Organizing your message', 'Structure effective speeches', 2),
(14, 3, 'Week 3: Vocal Delivery', 'Using your voice effectively', 'Improve vocal techniques', 3),
(14, 4, 'Week 4: Body Language', 'Nonverbal communication', 'Use gestures and posture', 4),
(14, 5, 'Week 5: Visual Aids', 'Using slides and props', 'Design supporting visuals', 5),
(14, 6, 'Week 6: Persuasive Speaking', 'Influencing your audience', 'Build persuasive arguments', 6),
(14, 7, 'Week 7: Impromptu Speaking', 'Thinking on your feet', 'Speak without preparation', 7),
(14, 8, 'Week 8: Professional Presentations', 'Business and formal speaking', 'Deliver polished presentations', 8);

-- Leadership Skills Modules
INSERT INTO modules (course_id, module_number, title, description, learning_objectives, order_index) VALUES
(15, 1, 'Week 1: Leadership Foundations', 'What makes an effective leader', 'Understand leadership theories', 1),
(15, 2, 'Week 2: Self-Awareness', 'Understanding your leadership style', 'Assess your strengths and weaknesses', 2),
(15, 3, 'Week 3: Communication Skills', 'Leading through effective communication', 'Practice active listening and feedback', 3),
(15, 4, 'Week 4: Team Building', 'Creating high-performing teams', 'Build and motivate teams', 4),
(15, 5, 'Week 5: Decision Making', 'Making tough choices as a leader', 'Apply decision-making frameworks', 5),
(15, 6, 'Week 6: Conflict Resolution', 'Managing disputes and disagreements', 'Resolve conflicts constructively', 6),
(15, 7, 'Week 7: Change Management', 'Leading organizations through change', 'Guide teams through transitions', 7),
(15, 8, 'Week 8: Ethical Leadership', 'Leading with integrity and values', 'Apply ethical leadership principles', 8);