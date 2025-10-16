USE railway;
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(1, 'video', 'Week 1 - Introduction to Psychology (MIT Lecture)', 'MIT OpenCourseWare introduction lecture by Prof. John Gabrieli.', 'https://www.youtube.com/watch?v=2fbrl6WoIyo', 50, 1, TRUE),
(1, 'pdf', 'Week 1 - OpenStax Psychology Chapter 1 PDF', 'Chapter 1: Introduction to Psychology (OpenStax textbook).', 'https://openstax.org/books/psychology-2e/pages/1-introduction', 30, 2, TRUE),
(1, 'slides', 'Week 1 - Introduction to Psychology Slides', 'Lecture slides for Week 1 - Overview and history of psychology.', 'https://www.slideserve.com/avak/week-1-introduction-to-psychology', 20, 3, TRUE),
(1, 'article', 'Week 1 - What is Psychology? (APA)', 'American Psychological Association overview of the field.', 'https://www.apa.org/topics/psychology', 10, 4, FALSE);

-- Module 2 (Week 2)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(2, 'video', 'Week 2 - Research Methods in Psychology (CrashCourse)', 'CrashCourse video on psychological research methods.', 'https://www.youtube.com/watch?v=hFV71QPvX2I', 10, 1, TRUE),
(2, 'pdf', 'Week 2 - OpenStax Psychology Chapter 2 PDF', 'Chapter 2: Psychological Research (OpenStax textbook).', 'https://openstax.org/books/psychology-2e/pages/2-introduction', 25, 2, TRUE),
(2, 'slides', 'Week 2 - Research Methods Slides', 'Lecture slides on research design and ethics.', 'https://www.slideshare.net/AndrewJohnson7/research-methods-in-psychology-lecture-slides', 20, 3, TRUE),
(2, 'article', 'Week 2 - APA: Research Ethics', 'Article on research ethics and methodology.', 'https://www.apa.org/research/responsible', 15, 4, FALSE);

-- Module 3 (Week 3)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(3, 'video', 'Week 3 - Biology of Behavior (CrashCourse)', 'Explains neurons, brain structure, and neurotransmission.', 'https://www.youtube.com/watch?v=OZG8M_ldA1M', 10, 1, TRUE),
(3, 'pdf', 'Week 3 - OpenStax Psychology Chapter 3 PDF', 'Chapter 3: Biopsychology (OpenStax textbook).', 'https://openstax.org/books/psychology-2e/pages/3-introduction', 30, 2, TRUE),
(3, 'slides', 'Week 3 - Biopsychology Slides', 'Slides covering the biological bases of behavior.', 'https://www.slideshare.net/ProBonoPsych/biopsychology-lecture-slides', 25, 3, TRUE),
(3, 'article', 'Week 3 - APA: Brain and Behavior', 'APA article on the brain, hormones, and behavior.', 'https://www.apa.org/topics/brain', 15, 4, FALSE);

-- Module 4 (Week 4)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(4, 'video', 'Week 4 - Sensation and Perception (CrashCourse)', 'Covers sensory processing and perception theory.', 'https://www.youtube.com/watch?v=unWnZvXJH2o', 10, 1, TRUE),
(4, 'pdf', 'Week 4 - OpenStax Psychology Chapter 5 PDF', 'Chapter 5: Sensation and Perception (OpenStax textbook).', 'https://openstax.org/books/psychology-2e/pages/5-introduction', 25, 2, TRUE),
(4, 'slides', 'Week 4 - Sensation and Perception Slides', 'Lecture slides on visual and auditory perception.', 'https://www.slideshare.net/AndrewJohnson7/sensation-and-perception-lecture', 25, 3, TRUE),
(4, 'article', 'Week 4 - APA: Perception Research', 'Overview of sensory systems and perception studies.', 'https://www.apa.org/topics/perception', 15, 4, FALSE);

-- Module 5 (Week 5)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(5, 'video', 'Week 5 - Learning (CrashCourse)', 'Covers classical and operant conditioning.', 'https://www.youtube.com/watch?v=H6LEcM0E0io', 10, 1, TRUE),
(5, 'pdf', 'Week 5 - OpenStax Psychology Chapter 6 PDF', 'Chapter 6: Learning (OpenStax textbook).', 'https://openstax.org/books/psychology-2e/pages/6-introduction', 25, 2, TRUE),
(5, 'slides', 'Week 5 - Learning Slides', 'Lecture slides on conditioning and cognitive learning.', 'https://www.slideshare.net/AndrewJohnson7/learning-lecture-slides', 25, 3, TRUE),
(5, 'article', 'Week 5 - APA: How We Learn', 'Article on psychological learning mechanisms.', 'https://www.apa.org/ed/precollege/psn/2013/09/learning', 10, 4, FALSE);

-- Module 6 (Week 6)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(6, 'video', 'Week 6 - Memory (CrashCourse)', 'Explains how memory works and why we forget.', 'https://www.youtube.com/watch?v=bSycdIx-C48', 10, 1, TRUE),
(6, 'pdf', 'Week 6 - OpenStax Psychology Chapter 8 PDF', 'Chapter 8: Memory (OpenStax textbook).', 'https://openstax.org/books/psychology-2e/pages/8-introduction', 25, 2, TRUE),
(6, 'slides', 'Week 6 - Memory Slides', 'Lecture slides on encoding, storage, and retrieval.', 'https://www.slideshare.net/AndrewJohnson7/memory-lecture-slides', 25, 3, TRUE),
(6, 'article', 'Week 6 - APA: Memory and Forgetting', 'Article on memory processes and failures.', 'https://www.apa.org/topics/memory', 10, 4, FALSE);

-- Module 7 (Week 7)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(7, 'video', 'Week 7 - Intelligence (CrashCourse)', 'Covers IQ testing and theories of intelligence.', 'https://www.youtube.com/watch?v=9xTz3QjcloI', 10, 1, TRUE),
(7, 'pdf', 'Week 7 - OpenStax Psychology Chapter 7 PDF', 'Chapter 7: Thinking and Intelligence (OpenStax textbook).', 'https://openstax.org/books/psychology-2e/pages/7-introduction', 25, 2, TRUE),
(7, 'slides', 'Week 7 - Intelligence Slides', 'Slides on problem solving and intelligence testing.', 'https://www.slideshare.net/AndrewJohnson7/thinking-and-intelligence-lecture', 25, 3, TRUE),
(7, 'article', 'Week 7 - APA: Intelligence Research', 'APA article on the nature of human intelligence.', 'https://www.apa.org/topics/intelligence', 10, 4, FALSE);

-- Module 8 (Week 8)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(8, 'video', 'Week 8 - Developmental Psychology (CrashCourse)', 'Explains human development from infancy to adulthood.', 'https://www.youtube.com/watch?v=h6B8-SbNqfw', 10, 1, TRUE),
(8, 'pdf', 'Week 8 - OpenStax Psychology Chapter 9 PDF', 'Chapter 9: Lifespan Development (OpenStax textbook).', 'https://openstax.org/books/psychology-2e/pages/9-introduction', 25, 2, TRUE),
(8, 'slides', 'Week 8 - Developmental Psychology Slides', 'Lecture slides on developmental stages and theories.', 'https://www.slideshare.net/AndrewJohnson7/developmental-psychology-lecture-slides', 25, 3, TRUE),
(8, 'article', 'Week 8 - APA: Development Across the Lifespan', 'APA overview of human development research.', 'https://www.apa.org/topics/development', 10, 4, FALSE);

-- ========================================================
-- COURSE 2: Cognitive Psychology — Weeks 1–8 (Modules 9–16)
-- ========================================================

-- Module 9 (Week 1)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(9, 'video', 'Week 1 Cognitive Psychology – Introduction & Preliminaries', 'Intro lecture: definitions, frameworks, history.', 'https://www.youtube.com/watch?v=rn0s8GVB2lA', 20, 1, TRUE),
(9, 'pdf', 'Week 1 – Foundations of Cognition (OpenStax reading)', 'OpenStax: What Is Cognition?', 'https://openstax.org/books/psychology-2e/pages/7-1-what-is-cognition', 15, 2, TRUE),
(9, 'slides', 'Week 1 – Cognitive Psychology Slide Deck (placeholder)', 'Slide resource to introduce cognition topics', 'https://www.slideshare.net/yourchoice/cognitive-psychology-intro-slides', 20, 3, TRUE),
(9, 'article', 'Week 1 – What Is Cognition? (OpenStax)', 'Article / reading on cognition, mental processes.', 'https://openstax.org/books/psychology-2e/pages/7-1-what-is-cognition', 10, 4, FALSE);

-- Module 10 (Week 2)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(10, 'video', 'Week 2 Cognitive Psychology – Perception Lecture', 'Lecture on perception, Gestalt principles, recognition.', 'https://www.youtube.com/watch?v=mOsSQ1armFU', 15, 1, TRUE),
(10, 'pdf', 'Week 2 – Perception Reading (OpenStax / text)', 'Chapter on perception / sensation (texts)', 'https://openstax.org/books/psychology-2e/pages/5-1-sensation', 20, 2, TRUE),
(10, 'slides', 'Week 2 – Perception Slides', 'Lecture slide deck on perception theories', 'https://www.slideshare.net/yourchoice/perception-cognitive-psychology-slides', 25, 3, TRUE),
(10, 'article', 'Week 2 – Cognition Introduction (OpenStax)', 'Reading: introduction to cognition including perception', 'https://openstax.org/books/psychology-2e/pages/7-introduction', 10, 4, FALSE);

-- Module 11 (Week 3)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(11, 'video', 'Week 3 Cognitive Psychology – Attention Lecture', 'Lecture on attention models (early selection, etc.)', 'https://www.youtube.com/watch?v=tdO8rko4K_E', 15, 1, TRUE),
(11, 'pdf', 'Week 3 – Attention / Cognition Reading', 'Text reading / chapter covering attention theories', 'https://openstax.org/books/psychology-2e/pages/7-3-problem-solving', 20, 2, TRUE),
(11, 'slides', 'Week 3 – Attention Slides', 'Slides on attention & cognitive control models', 'https://www.slideshare.net/yourchoice/attention-lecture-slides', 25, 3, TRUE),
(11, 'article', 'Week 3 – Key Terms in Cognition (OpenStax)', 'Reading of cognitive psychology key terms', 'https://openstax.org/books/psychology-2e/pages/7-key-terms', 10, 4, FALSE);

-- Module 12 (Week 4)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(12, 'video', 'Week 4 Cognitive Psychology – Decision Making / Reasoning Lecture', 'Lecture on decision making, heuristics & biases.', 'https://www.youtube.com/watch?v=2DPd6gvw9tk', 20, 1, TRUE),
(12, 'pdf', 'Week 4 – Reasoning / Decision Text Reading', 'Reading on reasoning, judgment, heuristics', 'https://openstax.org/books/psychology-2e/pages/7-summary', 20, 2, TRUE),
(12, 'slides', 'Week 4 – Decision / Reasoning Slides', 'Slides on decision theories, heuristics', 'https://www.slideshare.net/yourchoice/decision-making-cognitive-psychology-slides', 25, 3, TRUE),
(12, 'article', 'Week 4 – Cognition Summary (OpenStax)', 'Summary / article on cognitive psychology topics', 'https://openstax.org/books/psychology-2e/pages/7-summary', 10, 4, FALSE);

-- Module 13 (Week 5)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(13, 'video', 'Week 5 Cognitive Psychology – Memory Encoding Lecture', 'Lecture on memory: encoding, storage, retrieval.', 'https://www.youtube.com/watch?v=9wG8PffBPgg', 20, 1, TRUE),
(13, 'pdf', 'Week 5 – Memory Function Reading', 'Reading: How memory functions (OpenStax)', 'https://openstax.org/books/psychology-2e/pages/8-1-how-memory-functions', 20, 2, TRUE),
(13, 'slides', 'Week 5 – Memory Slides', 'Slides on memory models and failures', 'https://www.slideshare.net/yourchoice/memory-lecture-slides', 25, 3, TRUE),
(13, 'article', 'Week 5 – Memory Processes (OpenStax / text)', 'Article / reading on memory function & errors', 'https://openstax.org/books/psychology-2e/pages/8-summary', 10, 4, FALSE);

-- Module 14 (Week 6)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(14, 'video', 'Week 6 Cognitive Psychology – Cognitive Neuroscience / Brain (Lecture)', 'Lecture on brain and cognition.', 'https://www.youtube.com/watch?v=QBZ0W_E75ZY', 20, 1, TRUE),
(14, 'pdf', 'Week 6 – Brain & Cognition Reading', 'Reading: cognitive neuroscience / brain basis of cognition', 'https://openstax.org/books/psychology-2e/pages/3-4-cognition-and-memory-in-infants-and-toddlers', 20, 2, TRUE),
(14, 'slides', 'Week 6 – Neuroscience Slides', 'Slides on neuroscience and cognition', 'https://www.slideshare.net/yourchoice/cognitive-neuroscience-slides', 25, 3, TRUE),
(14, 'article', 'Week 6 – Cognitive Neuroscience Intro (OpenStax)', 'Reading on brain-cognition relationships', 'https://openstax.org/books/psychology-2e/pages/3-4-cognition-and-memory-in-infants-and-toddlers', 10, 4, FALSE);

-- Module 15 (Week 7)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(15, 'video', 'Week 7 Cognitive Psychology – Creativity, Expertise, Intelligence', 'Lecture exploring creativity, intelligence, expertise relationships.', 'https://www.youtube.com/watch?v=RGVVxTrVG9g', 25, 1, TRUE),
(15, 'pdf', 'Week 7 – Cognition in Adolescence / Expertise Reading', 'Reading on cognitive development in adolescence and later expertise', 'https://openstax.org/books/lifespan-development/pages/9-3-cognition-in-adolescence', 20, 2, TRUE),
(15, 'slides', 'Week 7 – Creativity & Intelligence Slides', 'Slides on creativity, expertise, and intelligence models', 'https://www.slideshare.net/yourchoice/creativity-intelligence-slides', 25, 3, TRUE),
(15, 'article', 'Week 7 – Cognition in Adolescence (OpenStax)', 'Reading on formal operations, cognitive development', 'https://openstax.org/books/lifespan-development/pages/9-3-cognition-in-adolescence', 10, 4, FALSE);

-- Module 16 (Week 8)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(16, 'video', 'Week 8 Cognitive Psychology – Creativity & Emotions Lecture', 'Lecture combining cognition, creativity, emotion.', 'https://www.youtube.com/watch?v=9FLaCQljOXk', 25, 1, TRUE),
(16, 'pdf', 'Week 8 – Cognition & Emotion Reading', 'Reading: cognition, emotion, and decision making', 'https://openstax.org/books/psychology-2e/pages/7-summary', 20, 2, TRUE),
(16, 'slides', 'Week 8 – Creativity & Emotion Slides', 'Slides on emotion, creativity, cognition', 'https://www.slideshare.net/yourchoice/creativity-emotion-cognitive-slides', 25, 3, TRUE),
(16, 'article', 'Week 8 – Creativity & Emotions (Brunel module)', 'Article / reading on cognition & emotion', 'https://www.youtube.com/watch?v=9FLaCQljOXk', 10, 4, FALSE);


-- ========================================================
-- COURSE 3: Business Fundamentals
-- ========================================================

-- Module 17 (Week 1) - Business Fundamentals: Introduction to Business

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(17, 'video', 'Introduction to Business Fundamentals', 'Overview of business concepts and principles', 'https://www.youtube.com/watch?v=z_PogK1qObI', 18, 1, TRUE),
(17, 'pdf', 'Business Fundamentals Guide', 'Comprehensive introduction to business basics', 'https://openstax.org/books/introduction-business/pages/1-1-the-nature-of-business', 30, 2, TRUE),
(17, 'slides', 'Business Environment Presentation', 'Key concepts in modern business environment', 'https://www.slideshare.net/slideshow/business-fundamentals-ppt/247990691', 25, 3, TRUE),
(17, 'article', 'Understanding Business Models', 'Different types of business models and structures', 'https://hbr.org/2015/01/what-is-a-business-model', 20, 4, FALSE);

-- Module 18 (Week 2) - Business Strategy

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(18, 'video', 'Business Strategy Fundamentals', 'Developing effective business strategies', 'https://www.youtube.com/watch?v=UZkYVoh2LKg', 22, 1, TRUE),
(18, 'pdf', 'Strategic Planning Guide', 'Step-by-step strategic planning process', 'https://www.bdc.ca/en/articles-tools/business-strategy-planning/define-strategy/what-is-strategic-planning', 35, 2, TRUE),
(18, 'slides', 'SWOT Analysis Framework', 'Strategic analysis tools and techniques', 'https://www.slideshare.net/slideshow/swot-analysis-ppt/67932985', 20, 3, TRUE),
(18, 'article', 'Competitive Advantage Strategies', 'How to build sustainable competitive advantage', 'https://www.investopedia.com/terms/c/competitive_advantage.asp', 15, 4, FALSE);

-- Module 19 (Week 3) - Marketing Fundamentals

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(19, 'video', 'Marketing Basics for Business', 'Introduction to marketing principles', 'https://www.youtube.com/watch?v=Q6F6QJBTlL4', 25, 1, TRUE),
(19, 'pdf', 'Marketing 101 Guide', 'Fundamental marketing concepts and strategies', 'https://openstax.org/books/principles-marketing/pages/1-1-marketing-and-the-marketing-process', 40, 2, TRUE),
(19, 'slides', 'Digital Marketing Overview', 'Modern marketing approaches and channels', 'https://www.slideshare.net/slideshow/digital-marketing-ppt/250391693', 30, 3, TRUE),
(19, 'article', 'Understanding Customer Behavior', 'How customers make purchasing decisions', 'https://www.ama.org/topics/customer-behavior/', 25, 4, FALSE);

-- Module 20 (Week 4) - Financial Management

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(20, 'video', 'Financial Management Basics', 'Introduction to business finance', 'https://www.youtube.com/watch?v=O0WzZj4H-1s', 28, 1, TRUE),
(20, 'pdf', 'Financial Statements Guide', 'Understanding balance sheets and income statements', 'https://corporatefinanceinstitute.com/resources/accounting/financial-statements/', 45, 2, TRUE),
(20, 'slides', 'Budgeting and Forecasting', 'Financial planning and analysis techniques', 'https://www.slideshare.net/slideshow/financial-management-ppt/247991184', 35, 3, TRUE),
(20, 'article', 'Cash Flow Management', 'Managing business cash flow effectively', 'https://www.entrepreneur.com/encyclopedia/cash-flow-management', 20, 4, FALSE);

-- Module 21 (Week 5) - Operations Management

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(21, 'video', 'Operations Management Overview', 'Managing business operations efficiently', 'https://www.youtube.com/watch?v=Oo0-7D-M8r8', 20, 1, TRUE),
(21, 'pdf', 'Operations Management Guide', 'Key concepts in production and service operations', 'https://openstax.org/books/introduction-business/pages/10-1-production-and-operations-management—an-overview', 35, 2, TRUE),
(21, 'slides', 'Supply Chain Management', 'Managing logistics and supply chains', 'https://www.slideshare.net/slideshow/operations-management-ppt/247991287', 25, 3, TRUE),
(21, 'article', 'Quality Management Systems', 'Implementing quality control in operations', 'https://asq.org/quality-resources/quality-management-system', 30, 4, FALSE);

-- Module 22 (Week 6) - Human Resources

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(22, 'video', 'HR Management Fundamentals', 'Managing people in organizations', 'https://www.youtube.com/watch?v=8K9w1M1qRw4', 24, 1, TRUE),
(22, 'pdf', 'Human Resources Guide', 'Recruitment, training, and employee development', 'https://openstax.org/books/human-resources/pages/1-1-what-is-human-resources', 40, 2, TRUE),
(22, 'slides', 'Talent Management Strategies', 'Attracting and retaining top talent', 'https://www.slideshare.net/slideshow/human-resource-management-ppt/247991390', 30, 3, TRUE),
(22, 'article', 'Employee Engagement', 'Building motivated and productive teams', 'https://hbr.org/topic/employee-engagement', 25, 4, FALSE);

-- Module 23 (Week 7) - Business Ethics

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(23, 'video', 'Business Ethics and Social Responsibility', 'Ethical decision making in business', 'https://www.youtube.com/watch?v=0B5fJp7qYdY', 22, 1, TRUE),
(23, 'pdf', 'Corporate Social Responsibility', 'Ethical business practices and sustainability', 'https://www.un.org/en/academic-impact/sustainability-corporate-social-responsibility-and-business-ethics', 35, 2, TRUE),
(23, 'slides', 'Ethical Decision Making', 'Framework for ethical business decisions', 'https://www.slideshare.net/slideshow/business-ethics-ppt/247991493', 25, 3, TRUE),
(23, 'article', 'Corporate Governance', 'Best practices in corporate governance', 'https://www.investopedia.com/terms/c/corporategovernance.asp', 20, 4, FALSE);

-- Module 24 (Week 8) - Entrepreneurship

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(24, 'video', 'Entrepreneurship Fundamentals', 'Starting and growing successful businesses', 'https://www.youtube.com/watch?v=Z-sgxG0Dww4', 26, 1, TRUE),
(24, 'pdf', 'Business Plan Development', 'Creating comprehensive business plans', 'https://www.sba.gov/business-guide/plan-your-business/write-your-business-plan', 45, 2, TRUE),
(24, 'slides', 'Startup Funding Strategies', 'Raising capital for new ventures', 'https://www.slideshare.net/slideshow/entrepreneurship-ppt/247991596', 30, 3, TRUE),
(24, 'article', 'Innovation and Disruption', 'How startups disrupt established industries', 'https://hbr.org/2015/12/what-is-disruptive-innovation', 25, 4, FALSE);


-- ========================================================
-- COURSE 4: Microeconomics
-- ========================================================

-- Module 25 (Week 1) - Introduction to Microeconomics

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(25, 'video', 'Microeconomics: Crash Course', 'Introduction to basic economic concepts', 'https://www.youtube.com/watch?v=Vss3nofHpZI', 12, 1, TRUE),
(25, 'pdf', 'Principles of Microeconomics', 'Fundamental concepts in microeconomics', 'https://openstax.org/books/principles-microeconomics-2e/pages/1-introduction-to-micoreconomics', 40, 2, TRUE),
(25, 'slides', 'Economic Systems Overview', 'Different economic systems and models', 'https://www.slideshare.net/slideshow/introduction-to-microeconomics-ppt/247991699', 25, 3, TRUE),
(25, 'article', 'Scarcity and Choice', 'Basic economic problem of scarcity', 'https://www.econlib.org/library/Topics/College/scarcity.html', 20, 4, FALSE);

-- Module 26 (Week 2) - Supply and Demand

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(26, 'video', 'Supply and Demand Explained', 'Market forces and equilibrium', 'https://www.youtube.com/watch?v=g9aDizJpd_s', 15, 1, TRUE),
(26, 'pdf', 'Supply and Demand Analysis', 'Understanding market dynamics', 'https://openstax.org/books/principles-microeconomics-2e/pages/3-1-demand-supply-and-equilibrium-in-markets-for-goods-and-services', 35, 2, TRUE),
(26, 'slides', 'Market Equilibrium', 'Price determination in competitive markets', 'https://www.slideshare.net/slideshow/supply-and-demand-ppt/247991802', 30, 3, TRUE),
(26, 'article', 'Elasticity Concepts', 'Price elasticity and market responsiveness', 'https://www.investopedia.com/terms/e/elasticity.asp', 25, 4, FALSE);

-- Module 27 (Week 3) - Consumer Behavior

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(27, 'video', 'Utility and Consumer Choice', 'How consumers make decisions', 'https://www.youtube.com/watch?v=Y7DqOSnT10M', 18, 1, TRUE),
(27, 'pdf', 'Theory of Consumer Behavior', 'Utility maximization and budget constraints', 'https://openstax.org/books/principles-microeconomics-2e/pages/6-1-consumption-choices', 40, 2, TRUE),
(27, 'slides', 'Indifference Curve Analysis', 'Consumer preference modeling', 'https://www.slideshare.net/slideshow/consumer-behavior-economics-ppt/247991905', 25, 3, TRUE),
(27, 'article', 'Behavioral Economics Insights', 'Psychology in economic decision making', 'https://www.behavioraleconomics.com/resources/introduction-to-behavioral-economics/', 30, 4, FALSE);

-- Module 28 (Week 4) - Production and Costs

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(28, 'video', 'Production Theory', 'Firm production decisions and costs', 'https://www.youtube.com/watch?v=00o3_i57dRc', 20, 1, TRUE),
(28, 'pdf', 'Cost Analysis in Economics', 'Short-run and long-run cost structures', 'https://openstax.org/books/principles-microeconomics-2e/pages/7-1-explicit-and-implicit-costs-and-accounting-and-economic-profit', 45, 2, TRUE),
(28, 'slides', 'Production Functions', 'Input-output relationships in production', 'https://www.slideshare.net/slideshow/production-and-costs-ppt/247992008', 30, 3, TRUE),
(28, 'article', 'Economies of Scale', 'Cost advantages of large-scale production', 'https://www.investopedia.com/terms/e/economiesofscale.asp', 20, 4, FALSE);

-- Module 29 (Week 5) - Market Structures

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(29, 'video', 'Perfect Competition vs Monopoly', 'Different market structures compared', 'https://www.youtube.com/watch?v=6N1r_9ThSp0', 22, 1, TRUE),
(29, 'pdf', 'Market Structure Analysis', 'Characteristics of different market types', 'https://openstax.org/books/principles-microeconomics-2e/pages/8-1-perfect-competition-and-why-it-matters', 50, 2, TRUE),
(29, 'slides', 'Monopolistic Competition', 'Real-world market structures', 'https://www.slideshare.net/slideshow/market-structures-ppt/247992111', 35, 3, TRUE),
(29, 'article', 'Oligopoly Markets', 'Strategic behavior in concentrated markets', 'https://www.economicshelp.org/microessays/markets/oligopoly/', 25, 4, FALSE);

-- Module 30 (Week 6) - Factor Markets

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(30, 'video', 'Labor Markets and Wages', 'How factor markets work', 'https://www.youtube.com/watch?v=P3Ffvu7lCok', 16, 1, TRUE),
(30, 'pdf', 'Factor Market Analysis', 'Labor, capital, and land markets', 'https://openstax.org/books/principles-microeconomics-2e/pages/14-1-the-theory-of-labor-markets', 40, 2, TRUE),
(30, 'slides', 'Income Distribution', 'Economic theories of income distribution', 'https://www.slideshare.net/slideshow/factor-markets-ppt/247992214', 30, 3, TRUE),
(30, 'article', 'Human Capital Theory', 'Investment in education and skills', 'https://www.econlib.org/library/Enc/HumanCapital.html', 20, 4, FALSE);

-- Module 31 (Week 7) - Market Failure

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(31, 'video', 'Market Failures and Externalities', 'When markets don''t work efficiently', 'https://www.youtube.com/watch?v=dosGpM-0l_g', 19, 1, TRUE),
(31, 'pdf', 'Externalities and Public Goods', 'Market failures and government intervention', 'https://openstax.org/books/principles-microeconomics-2e/pages/12-1-the-economics-of-pollution', 45, 2, TRUE),
(31, 'slides', 'Government Intervention', 'Correcting market failures', 'https://www.slideshare.net/slideshow/market-failure-ppt/247992317', 35, 3, TRUE),
(31, 'article', 'Public Goods Problem', 'Provision of public goods in economics', 'https://www.econlib.org/library/Enc/PublicGoods.html', 25, 4, FALSE);

-- Module 32 (Week 8) - International Trade

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(32, 'video', 'International Trade Theory', 'Benefits and costs of international trade', 'https://www.youtube.com/watch?v=9hok0wPJp4E', 21, 1, TRUE),
(32, 'pdf', 'Comparative Advantage', 'Gains from trade and specialization', 'https://openstax.org/books/principles-microeconomics-2e/pages/20-1-absolute-and-comparative-advantage', 50, 2, TRUE),
(32, 'slides', 'Trade Policies', 'Tariffs, quotas, and trade agreements', 'https://www.slideshare.net/slideshow/international-trade-ppt/247992420', 40, 3, TRUE),
(32, 'article', 'Globalization Effects', 'Economic impacts of globalization', 'https://www.imf.org/en/Publications/fandd/issues/Series/Back-to-Basics/Globalization', 30, 4, FALSE);

-- ========================================================
-- COURSE 5: Personal Finance — Weeks 1–8 (Modules 33–40)
-- ========================================================

-- Week 1 (Module 33)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(33, 'video', 'Week 1 Personal Finance – Basics Overview', 'Introductory video on personal finance fundamentals.', 'https://www.youtube.com/watch?v=EsOTfVIcdEI', 60, 1, TRUE),
(33, 'pdf', 'Week 1 – Personal Finance Guide PDF', 'Comprehensive guide to personal finance basics.', 'https://www.jmu.edu/first-gen/valleyscholars/_files/personal-finance-guide.pdf', 45, 2, TRUE),
(33, 'slides', 'Week 1 – Personal Finance Slides (USC Basics)', 'Slides covering basics: saving, debt, investing, etc.', 'https://cdn.careers.usc.edu/wp-content/uploads/sites/135/2023/04/Basics-of-Personal-Finance-Max-Pashman.pdf', 35, 3, TRUE),
(33, 'article', 'Week 1 – Financial Literacy Overview (GFLEC)', 'Working paper: financial literacy and education overview.', 'https://gflec.org/wp-content/uploads/2024/04/WP2024-2.pdf', 30, 4, FALSE);

-- Week 2 (Module 34)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(34, 'video', 'Week 2 Personal Finance – Budgeting / Money Management', 'Video on fundamentals of budgeting and income/expenses.', 'https://www.youtube.com/watch?v=WiH2T933xn8', 20, 1, TRUE),
(34, 'pdf', 'Week 2 – Money 101 PDF', 'Introductory PDF on basic finances, budgeting, banking.', 'https://www.kheaa.com/web/resources/pdf/Money101.pdf', 30, 2, TRUE),
(34, 'slides', 'Week 2 – Personal Finance Slides Fundamental', 'Slides (or presentation) on budgeting and personal finance principles.', 'https://www.southeasterntech.edu/wp-content/uploads/Personal-Finance-PPT.pdf', 30, 3, TRUE),
(34, 'article', 'Week 2 – 8 Tips for Financial Success (DFPI)', 'Practical tips for financial health & planning.', 'https://dfpi.ca.gov/wp-content/uploads/sites/337/2019/06/8_Tips_for_Financial_Success.pdf', 15, 4, FALSE);

-- Week 3 (Module 35)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(35, 'video', 'Week 3 Personal Finance – Debt & Credit', 'Beginner’s video: managing debt, credit, borrowing.', 'https://www.youtube.com/watch?v=q1rbm3ncQWI', 15, 1, TRUE),
(35, 'pdf', 'Week 3 – Personal Finance Fundamentals PDF', 'PDF covering spending, borrowing, saving basics.', 'https://www.dcms.uscg.mil/Portals/10/CG-1/cg111/docs/pdf/CG%20SUPRT%20Financial%20Class%20Topics%20List%202018.pdf?ver=2018-06-05-131337-763', 25, 2, TRUE),
(35, 'slides', 'Week 3 – Slides on Debt & Credit', 'Presentation slides on credit, debt management.', 'https://cdn.careers.usc.edu/wp-content/uploads/sites/135/2023/04/Basics-of-Personal-Finance-Max-Pashman.pdf', 30, 3, TRUE),
(35, 'article', 'Week 3 – Personal Financial Planning for Entrepreneurs', 'PDF book on combining business & personal finances.', 'https://business.louisiana.edu/sites/business/files/Personal%20Financial%20Planning%20-%20ENTREPRENEURS%20.pdf', 40, 4, FALSE);

-- Week 4 (Module 36)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(36, 'video', 'Week 4 Personal Finance – Saving & Investing Basics', 'Video overview of saving, investing, building a foundation.', 'https://www.youtube.com/watch?v=1Et-GTriZ6c', 18, 1, TRUE),
(36, 'pdf', 'Week 4 – Personal Finance for School Students (PDF)', 'PDF text introducing savings, investment, financial planning.', 'https://ncfe.org.in/wp-content/uploads/2023/12/Personal-Finance-for-School-Students.pdf', 30, 2, TRUE),
(36, 'slides', 'Week 4 – Slides on Saving / Investing', 'Slides on saving, financial instruments etc.', 'https://www.southeasterntech.edu/wp-content/uploads/Personal-Finance-PPT.pdf', 30, 3, TRUE),
(36, 'article', 'Week 4 – Intro to Personal Finance (Citi)', 'PDF: personal finance foundational principles from Citi.', 'https://www.citigroup.com/rcs/citigpa/storage/public/CitiMoneyManagement101.pdf', 20, 4, FALSE);

-- Week 5 (Module 37)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(37, 'video', 'Week 5 Personal Finance – Principles & Strategy', 'Video: “Managing Money: Six Principles of Personal Finance.”', 'https://www.youtube.com/watch?v=pkSxhxTV6p4', 15, 1, TRUE),
(37, 'pdf', 'Week 5 – Guide: The Ultimate Guide to Personal Finance', 'Full PDF guide on personal finance principles.', 'https://www.iwillteachyoutoberich.com/wp-content/uploads/ultimate-guide-to-personal-finance.pdf', 50, 2, TRUE),
(37, 'slides', 'Week 5 – Strategy Slides', 'Slides on personal finance strategy and principles.', 'https://cdn.careers.usc.edu/wp-content/uploads/sites/135/2023/04/Basics-of-Personal-Finance-Max-Pashman.pdf', 35, 3, TRUE),
(37, 'article', 'Week 5 – Financial Literacy Education Overview', 'Working paper: role of financial literacy in behavior.', 'https://gflec.org/wp-content/uploads/2024/04/WP2024-2.pdf', 30, 4, FALSE);

-- Week 6 (Module 38)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(38, 'video', 'Week 6 Personal Finance – Intermediate Topics / Review', 'Video: “Personal Finance for Beginners” (intermediate topics).', 'https://www.youtube.com/watch?v=Efr2UORgO2w', 12, 1, TRUE),
(38, 'pdf', 'Week 6 – Personal Finance PPT / Notes', 'PDF slide deck covering mid-level personal finance issues.', 'https://www.southeasterntech.edu/wp-content/uploads/Personal-Finance-PPT.pdf', 30, 2, TRUE),
(38, 'slides', 'Week 6 – Slides on Advanced Topics', 'Slides dealing with insurance, taxes, retirement.', 'https://cdn.careers.usc.edu/wp-content/uploads/sites/135/2023/04/Basics-of-Personal-Finance-Max-Pashman.pdf', 35, 3, TRUE),
(38, 'article', 'Week 6 – Secrets to Success: Personal Finance', 'PDF: personal finance management / best practices.', 'https://sfs.harvard.edu/files/student_accounts/files/personal_finance_management_3_2016.pdf', 25, 4, FALSE);

-- Week 7 (Module 39)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(39, 'video', 'Week 7 Personal Finance – Lessons & Tips', 'Video: “10 Crucial Personal Finance Lessons That Transformed My Life.”', 'https://www.youtube.com/watch?v=Izw-xaVkO0g', 20, 1, TRUE),
(39, 'pdf', 'Week 7 – Financial Journey Guide (JPMorgan)', 'PDF: “Your Financial Journey” guidance document.', 'https://www.jpmorganchase.com/content/dam/jpmc/jpmorgan-chase-and-co/documents/financial-journal.pdf', 30, 2, TRUE),
(39, 'slides', 'Week 7 – Slides on Personal Journey & Planning', 'Slides on goal setting, financial life plans.', 'https://cdn.careers.usc.edu/wp-content/uploads/sites/135/2023/04/Basics-of-Personal-Finance-Max-Pashman.pdf', 30, 3, TRUE),
(39, 'article', 'Week 7 – Personal Finance Open Textbook (OpenMN)', 'Open textbook resource for personal finance topics.', 'https://open.umn.edu/opentextbooks/textbooks/31', 30, 4, FALSE);

-- Week 8 (Module 40)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(40, 'video', 'Week 8 Personal Finance – Complete Guide / Summary', 'Video: “Personal Finance 101: Your Complete Guide to Building Wealth.”', 'https://www.youtube.com/watch?v=ASYMb_q55Bk', 25, 1, TRUE),
(40, 'pdf', 'Week 8 – Fundamentals PDF / Slides', 'PDF slide deck with comprehensive personal finance topics.', 'https://www.southeasterntech.edu/wp-content/uploads/Personal-Finance-PPT.pdf', 40, 2, TRUE),
(40, 'slides', 'Week 8 – Final Slides', 'Slides summarizing all major personal finance themes.', 'https://cdn.careers.usc.edu/wp-content/uploads/sites/135/2023/04/Basics-of-Personal-Finance-Max-Pashman.pdf', 30, 3, TRUE),
(40, 'article', 'Week 8 – Financial Literacy & Education Overview', 'Working paper: financial education and its impact.', 'https://gflec.org/wp-content/uploads/2024/04/WP2024-2.pdf', 30, 4, FALSE);

-- ========================================================
-- COURSE 6: Introduction to Programming
-- ========================================================

-- Module 41 (Week 1) - Programming Fundamentals

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(41, 'video', 'Introduction to Programming Concepts', 'Basic programming concepts and thinking like a programmer', 'https://www.youtube.com/watch?v=zOjov-2OZ0E', 16, 1, TRUE),
(41, 'pdf', 'Programming Basics Guide', 'Fundamental concepts of programming and algorithms', 'https://www.cs.princeton.edu/courses/archive/spr18/cos126/static/books/CS.pdf', 35, 2, TRUE),
(41, 'slides', 'Programming Fundamentals Presentation', 'Introduction to programming logic and problem-solving', 'https://www.slideshare.net/slideshow/introduction-to-programming-concepts-ppt/247992523', 25, 3, TRUE),
(41, 'article', 'What is Programming?', 'Understanding the basics of computer programming', 'https://www.freecodecamp.org/news/what-is-programming/', 20, 4, FALSE);

-- Module 42 (Week 2) - Variables and Data Types

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(42, 'video', 'Variables and Data Types Explained', 'Understanding variables, data types, and basic operations', 'https://www.youtube.com/watch?v=8mLyrCjLLNs', 18, 1, TRUE),
(42, 'pdf', 'Data Types and Variables Guide', 'Comprehensive guide to programming data types', 'https://www.cs.utah.edu/~germain/PPS/Topics/variables.html', 30, 2, TRUE),
(42, 'slides', 'Variables and Data Structures', 'Working with different data types in programming', 'https://www.slideshare.net/slideshow/variables-and-data-types-programming/247992626', 20, 3, TRUE),
(42, 'article', 'Understanding Data Types', 'Primitive and complex data types in programming', 'https://www.geeksforgeeks.org/data-types-in-programming/', 25, 4, FALSE);

-- Module 43 (Week 3) - Control Structures

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(43, 'video', 'Conditionals and Loops', 'If statements, loops, and program flow control', 'https://www.youtube.com/watch?v=ZYa_nZiQV1w', 22, 1, TRUE),
(43, 'pdf', 'Control Structures Tutorial', 'Conditional statements and iterative structures', 'https://www.tutorialspoint.com/computer_programming/computer_programming_control_structures.htm', 40, 2, TRUE),
(43, 'slides', 'Program Flow Control', 'Decision making and repetition in programming', 'https://www.slideshare.net/slideshow/control-structures-programming/247992729', 30, 3, TRUE),
(43, 'article', 'Mastering Control Flow', 'Understanding if-else, switch, and loop statements', 'https://www.freecodecamp.org/news/control-flow-in-programming/', 20, 4, FALSE);

-- Module 44 (Week 4) - Functions and Methods

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(44, 'video', 'Functions in Programming', 'Creating and using functions for code organization', 'https://www.youtube.com/watch?v=5KkOD26npKc', 20, 1, TRUE),
(44, 'pdf', 'Functions and Modular Programming', 'Building reusable code with functions', 'https://www.cs.utah.edu/~germain/PPS/Topics/functions.html', 35, 2, TRUE),
(44, 'slides', 'Modular Programming with Functions', 'Function parameters, return values, and scope', 'https://www.slideshare.net/slideshow/functions-in-programming/247992832', 25, 3, TRUE),
(44, 'article', 'Why Functions are Important', 'The role of functions in clean code architecture', 'https://www.codecademy.com/resources/blog/what-is-a-function/', 15, 4, FALSE);

-- Module 45 (Week 5) - Arrays and Collections

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(45, 'video', 'Arrays and Lists Tutorial', 'Working with collections of data', 'https://www.youtube.com/watch?v=8jGJ0_p849c', 24, 1, TRUE),
(45, 'pdf', 'Data Collections Guide', 'Arrays, lists, and other collection types', 'https://www.cs.cmu.edu/~adamchik/15-121/lectures/Arrays/Arrays.html', 45, 2, TRUE),
(45, 'slides', 'Data Structures: Arrays', 'Manipulating and processing data collections', 'https://www.slideshare.net/slideshow/arrays-and-data-structures/247992935', 30, 3, TRUE),
(45, 'article', 'Understanding Arrays', 'When and how to use arrays in programming', 'https://www.programiz.com/c-programming/c-arrays', 20, 4, FALSE);

-- Module 46 (Week 6) - Object-Oriented Programming Basics

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(46, 'video', 'OOP Principles Explained', 'Introduction to Object-Oriented Programming concepts', 'https://www.youtube.com/watch?v=pTB0EiLXUC8', 26, 1, TRUE),
(46, 'pdf', 'OOP Fundamentals', 'Classes, objects, inheritance, and polymorphism', 'https://www.cs.utah.edu/~germain/PPS/Topics/oop.html', 50, 2, TRUE),
(46, 'slides', 'Object-Oriented Programming', 'The four pillars of OOP with examples', 'https://www.slideshare.net/slideshow/object-oriented-programming-oop/247993038', 35, 3, TRUE),
(46, 'article', 'OOP for Beginners', 'Understanding classes, objects, and methods', 'https://www.freecodecamp.org/news/object-oriented-programming-concepts/', 25, 4, FALSE);

-- Module 47 (Week 7) - Error Handling and Debugging

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(47, 'video', 'Debugging Techniques', 'Finding and fixing errors in your code', 'https://www.youtube.com/watch?v=7Mf5XgMwo_8', 19, 1, TRUE),
(47, 'pdf', 'Debugging Guide', 'Systematic approach to finding programming errors', 'https://www.cs.cornell.edu/courses/cs312/2006fa/lectures/lec26.pdf', 40, 2, TRUE),
(47, 'slides', 'Error Handling Strategies', 'Try-catch blocks and exception handling', 'https://www.slideshare.net/slideshow/debugging-and-error-handling/247993141', 25, 3, TRUE),
(47, 'article', 'Effective Debugging', 'Tools and techniques for efficient debugging', 'https://www.freecodecamp.org/news/debugging-code-for-beginners/', 30, 4, FALSE);

-- Module 48 (Week 8) - Final Project and Best Practices

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(48, 'video', 'Programming Best Practices', 'Writing clean, maintainable code', 'https://www.youtube.com/watch?v=ZcBtF-Ta1F0', 21, 1, TRUE),
(48, 'pdf', 'Code Style Guide', 'Industry standards for readable code', 'https://google.github.io/styleguide/', 35, 2, TRUE),
(48, 'slides', 'Software Development Lifecycle', 'From planning to deployment', 'https://www.slideshare.net/slideshow/software-development-best-practices/247993244', 30, 3, TRUE),
(48, 'article', 'Programming Project Planning', 'How to approach your first programming project', 'https://www.freecodecamp.org/news/how-to-plan-and-build-your-first-programming-project/', 40, 4, FALSE);


-- ========================================================
-- COURSE 7: Web Development Basics
-- ========================================================

-- Module 49 (Week 1) - HTML Fundamentals

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(49, 'video', 'HTML Crash Course for Beginners', 'Learn HTML structure and basic tags', 'https://www.youtube.com/watch?v=qz0aGYrrlhU', 60, 1, TRUE),
(49, 'pdf', 'HTML5 Complete Guide', 'Modern HTML5 elements and semantics', 'https://html.spec.whatwg.org/multipage/', 45, 2, TRUE),
(49, 'slides', 'HTML Basics Presentation', 'Building blocks of web pages with HTML', 'https://www.slideshare.net/slideshow/html-basics-ppt/247993347', 30, 3, TRUE),
(49, 'article', 'HTML for Web Development', 'Getting started with HTML markup', 'https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML', 25, 4, FALSE);

-- Module 50 (Week 2) - CSS Fundamentals

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(50, 'video', 'CSS Full Course for Beginners', 'Complete CSS tutorial from basics to advanced', 'https://www.youtube.com/watch?v=OXGznpKZ_sA', 90, 1, TRUE),
(50, 'pdf', 'CSS Comprehensive Guide', 'Styling web pages with CSS3', 'https://www.w3.org/Style/CSS/learning', 50, 2, TRUE),
(50, 'slides', 'CSS Styling Techniques', 'Selectors, properties, and layout with CSS', 'https://www.slideshare.net/slideshow/css-basics-tutorial/247993450', 35, 3, TRUE),
(50, 'article', 'CSS Best Practices', 'Writing efficient and maintainable CSS', 'https://developer.mozilla.org/en-US/docs/Learn/CSS', 30, 4, FALSE);

-- Module 51 (Week 3) - CSS Layouts and Flexbox

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(51, 'video', 'CSS Flexbox Complete Guide', 'Master CSS Flexbox for modern layouts', 'https://www.youtube.com/watch?v=phWxA89Dy94', 45, 1, TRUE),
(51, 'pdf', 'Flexbox and Grid Layouts', 'Modern CSS layout techniques', 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/', 40, 2, TRUE),
(51, 'slides', 'CSS Layout Systems', 'Flexbox, Grid, and responsive design', 'https://www.slideshare.net/slideshow/css-layout-flexbox-grid/247993553', 25, 3, TRUE),
(51, 'article', 'CSS Layout Mastery', 'Understanding different layout methods', 'https://web.dev/learn/css/layout/', 35, 4, FALSE);

-- Module 52 (Week 4) - JavaScript Basics

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(52, 'video', 'JavaScript Programming Full Course', 'JavaScript fundamentals for web development', 'https://www.youtube.com/watch?v=PkZNo7MFNFg', 180, 1, TRUE),
(52, 'pdf', 'JavaScript Guide', 'Official JavaScript documentation and tutorials', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide', 60, 2, TRUE),
(52, 'slides', 'JavaScript Fundamentals', 'Variables, functions, and DOM manipulation', 'https://www.slideshare.net/slideshow/javascript-basics-tutorial/247993656', 40, 3, TRUE),
(52, 'article', 'JavaScript for Beginners', 'Getting started with client-side scripting', 'https://www.freecodecamp.org/news/javascript-for-beginners/', 25, 4, FALSE);

-- Module 53 (Week 5) - DOM Manipulation

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(53, 'video', 'DOM Manipulation Tutorial', 'Working with the Document Object Model', 'https://www.youtube.com/watch?v=0ik6X4DJKCc', 50, 1, TRUE),
(53, 'pdf', 'DOM Programming Guide', 'Manipulating web pages with JavaScript', 'https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction', 45, 2, TRUE),
(53, 'slides', 'Interactive Web Pages', 'Event handling and dynamic content', 'https://www.slideshare.net/slideshow/dom-manipulation-javascript/247993759', 30, 3, TRUE),
(53, 'article', 'Mastering the DOM', 'Essential DOM methods and properties', 'https://www.freecodecamp.org/news/what-is-the-dom-document-object-model-meaning-in-javascript/', 20, 4, FALSE);

-- Module 54 (Week 6) - Responsive Web Design

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(54, 'video', 'Responsive Web Design Tutorial', 'Creating websites that work on all devices', 'https://www.youtube.com/watch?v=srvUrASNj0s', 55, 1, TRUE),
(54, 'pdf', 'Responsive Design Principles', 'Mobile-first approach and media queries', 'https://web.dev/learn/design/', 50, 2, TRUE),
(54, 'slides', 'Mobile Responsive Design', 'Adapting layouts for different screen sizes', 'https://www.slideshare.net/slideshow/responsive-web-design-principles/247993862', 35, 3, TRUE),
(54, 'article', 'Responsive Design Basics', 'Building flexible web layouts', 'https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Responsive_Design', 25, 4, FALSE);

-- Module 55 (Week 7) - Web Development Tools

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(55, 'video', 'Web Developer Tools Guide', 'Essential tools for modern web development', 'https://www.youtube.com/watch?v=9K4N6MO7pUQ', 40, 1, TRUE),
(55, 'pdf', 'Developer Tools Handbook', 'Chrome DevTools and debugging techniques', 'https://developer.chrome.com/docs/devtools/', 35, 2, TRUE),
(55, 'slides', 'Modern Web Development Stack', 'Version control, package managers, and build tools', 'https://www.slideshare.net/slideshow/web-development-tools-workflow/247993965', 25, 3, TRUE),
(55, 'article', 'Essential Web Dev Tools', 'Must-have tools for every web developer', 'https://www.freecodecamp.org/news/essential-web-developer-tools/', 30, 4, FALSE);

-- Module 56 (Week 8) - Final Project Deployment

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(56, 'video', 'Deploy Your First Website', 'From local development to live deployment', 'https://www.youtube.com/watch?v=QIIc17W3f9c', 35, 1, TRUE),
(56, 'pdf', 'Web Hosting Guide', 'Choosing hosting services and deployment strategies', 'https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Tools_and_setup', 40, 2, TRUE),
(56, 'slides', 'Website Deployment Process', 'Going live with your web project', 'https://www.slideshare.net/slideshow/web-deployment-hosting/247994068', 20, 3, TRUE),
(56, 'article', 'Deploying Static Websites', 'Free hosting options for beginners', 'https://www.freecodecamp.org/news/how-to-deploy-a-static-website-for-free/', 25, 4, FALSE);
-- ======================================================
-- COURSE: Data Analysis Fundamentals — Weeks 1 to 8
-- ======================================================

-- Week 1 (module 57)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(57, 'video', 'Week 1: Intro to Data Analysis (YouTube Tutorial)', 'Overview: what is data analysis, workflow and importance.', 'https://www.youtube.com/watch?v=vqZ1C2elmac', 120, 1, TRUE),
(57, 'pdf', 'Week 1: Fundamentals of Data Analysis (IE PDF)', 'A foundational PDF covering data analysis concepts.', 'https://files.thesaurus.ie.edu/fundamentals-of-data-analysis.pdf', 60, 2, TRUE),
(57, 'slides', 'Week 1: Data Fundamentals Slides', 'Lecture slides / resource on data types, tools, process.', 'https://www.data-action-lab.com/wp-content/uploads/2020/10/ISEDC-Slides-Data-Fundamentals.pdf', 30, 3, TRUE),
(57, 'article', 'Week 1: Minimalist Data Wrangling (Gagolewski)', 'Article / reading on data wrangling & cleaning in Python.', 'https://datawranglingpy.gagolewski.com/', 45, 4, FALSE);

-- Week 2 (module 58)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(58, 'video', 'Week 2: Excel / Tool-Based Data Analysis', 'Using tools like Excel for basic data analysis.', 'https://www.youtube.com/watch?v=P_FsVNgmZ3A', 45, 1, TRUE),
(58, 'pdf', 'Week 2: Data Analytics Basics (PDF)', 'Intro guide on analytics methods & workflow.', 'https://cdn.chools.in/DIG_LIB/E-Book/eBook_Data_Analytics.pdf', 50, 2, TRUE),
(58, 'slides', 'Week 2: SQL + Excel Slides', 'Resource combining SQL and Excel techniques for analysis.', 'https://www.temida.si/~bojan/MPS/materials/Data%20Analysis%20Using%20SQL%20and%20Excel.pdf', 35, 3, TRUE),
(58, 'article', 'Week 2: GeeksforGeeks Data Analysis Tutorial', 'Comprehensive tutorial article on data analysis.', 'https://www.geeksforgeeks.org/data-analysis/data-analysis-tutorial/', 30, 4, FALSE);

-- Week 3 (module 59)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(59, 'video', 'Week 3: Data Cleaning & Preprocessing', 'Video on cleaning & preparing data for analysis.', 'https://www.youtube.com/watch?v=dUrt-YC6BXM', 50, 1, TRUE),
(59, 'pdf', 'Week 3: Data Analysis Tutorial (LIP PDF)', 'Tutorial PDF on basic data analysis procedures.', 'https://indico.lip.pt/event/464/contributions/1295/attachments/1232/1486/datatutorial_2018_12July_v2.pdf', 55, 2, TRUE),
(59, 'slides', 'Week 3: Data Cleaning Slides (placeholder)', 'Slides on data cleaning methods (you can add actual later)', 'https://www.slideshare.net/yourchoice/data-cleaning-slides', 30, 3, TRUE),
(59, 'article', 'Week 3: “A Crash Course in Practical Data Analysis”', 'Reading: full text free version / guide.', 'https://www.researchgate.net/publication/353381889_A_Crash_Course_in_Practical_Data_Analysis', 60, 4, FALSE);

-- Week 4 (module 60)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(60, 'video', 'Week 4: Exploratory Data Analysis (EDA)', 'Video introduction to exploratory methods and visualization.', 'https://www.youtube.com/watch?v=JG2gXPo-Z-E', 60, 1, TRUE),
(60, 'pdf', 'Week 4: Introduction to Data Analysis Handbook', 'PDF handbook covering multiple analysis techniques.', 'https://files.eric.ed.gov/fulltext/ED536788.pdf', 70, 2, TRUE),
(60, 'slides', 'Week 4: EDA Slides (placeholder)', 'Slides for exploratory data analysis (to replace later)', 'https://www.slideshare.net/yourchoice/eda-slides', 35, 3, TRUE),
(60, 'article', 'Week 4: Springboard “7-Step Guide to Learn Data Analysis”', 'Article / guide to learning data analysis.', 'https://www.springboard.com/blog/data-analytics/learn-data-analysis/', 25, 4, FALSE);

-- Week 5 (module 61)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(61, 'video', 'Week 5: Statistical Inference / Hypothesis Testing', 'Lecture video on statistical inference basics.', 'https://www.youtube.com/watch?v=EsOTfVIcdEI', 50, 1, TRUE),
(61, 'pdf', 'Week 5: Fundamentals of Data Analysis PDF (alt)', 'Alternate PDF on data methods and inference.', 'https://files.thesaurus.ie.edu/fundamentals-of-data-analysis.pdf', 60, 2, TRUE),
(61, 'slides', 'Week 5: Inferential Slides (placeholder)', 'Slides on hypothesis testing & inference', 'https://www.slideshare.net/yourchoice/inference-slides', 35, 3, TRUE),
(61, 'article', 'Week 5: “Minimalist Data Wrangling with Python” (chapter)', 'Reading chapter / section about inference & modelling.', 'https://datawranglingpy.gagolewski.com/', 40, 4, FALSE);

-- Week 6 (module 62)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(62, 'video', 'Week 6: Data Visualization & Reporting', 'Video lecture on charts, dashboards, reporting methods.', 'https://www.youtube.com/watch?v=qrbf9DtR3_c', 70, 1, TRUE),
(62, 'pdf', 'Week 6: Python Data Analysis Tutorial PDF', 'Tutorial PDF on using Python tools (Pandas, Matplotlib)', 'https://python-course.eu/books/bernd_klein_python_data_analysis_a4.pdf', 65, 2, TRUE),
(62, 'slides', 'Week 6: Visualization Slides (placeholder)', 'Slides on visualization techniques (you’ll replace)', 'https://www.slideshare.net/yourchoice/visualization-slides', 35, 3, TRUE),
(62, 'article', 'Week 6: GeeksforGeeks Data Analysis Tutorial (Visualization section)', 'Article section on data visualization.', 'https://www.geeksforgeeks.org/data-analysis/data-analysis-tutorial/', 25, 4, FALSE);

-- Week 7 (module 63)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(63, 'video', 'Week 7: Advanced Analysis / Modelling', 'Video on advanced modelling techniques (regression, clustering).', 'https://www.youtube.com/watch?v=JG2gXPo-Z-E', 80, 1, TRUE),
(63, 'pdf', 'Week 7: Fundamentals of Data Analysis PDF (reuse)', 'Using foundational PDF again for methods & models.', 'https://files.thesaurus.ie.edu/fundamentals-of-data-analysis.pdf', 70, 2, TRUE),
(63, 'slides', 'Week 7: Modelling Slides (placeholder)', 'Slides on regression / clustering you’ll insert later', 'https://www.slideshare.net/yourchoice/modelling-slides', 35, 3, TRUE),
(63, 'article', 'Week 7: “A Tutorial on Statistically Sound Pattern Discovery”', 'Article on pattern discovery / statistical modelling.', 'https://arxiv.org/abs/1709.03904', 50, 4, FALSE);

-- Week 8 (module 64)
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(64, 'video', 'Week 8: Review & Case Studies', 'Video reviewing concepts and showing real case studies.', 'https://www.youtube.com/watch?v=JG2gXPo-Z-E', 80, 1, TRUE),
(64, 'pdf', 'Week 8: Crash Course in Practical Data Analysis', 'Full text PDF of Crash Course in Practical Data Analysis.', 'https://www.researchgate.net/publication/353381889_A_Crash_Course_in_Practical_Data_Analysis', 100, 2, TRUE),
(64, 'slides', 'Week 8: Case Studies Slides (placeholder)', 'Slides for case studies & review (to replace)', 'https://www.slideshare.net/yourchoice/case-studies-slides', 35, 3, TRUE),
(64, 'article', 'Week 8: “A Tutorial on Independent Component Analysis”', 'Advanced reading on component analysis.', 'https://arxiv.org/abs/1404.2986', 60, 4, FALSE);

-- ========================================================
-- COURSE 9: Nutrition and Wellness
-- ========================================================

-- Module 65 (Week 1) - Nutrition Fundamentals

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(65, 'video', 'Nutrition Basics: Macronutrients & Micronutrients', 'Introduction to essential nutrients and their functions', 'https://www.youtube.com/watch?v=Z51bWG17m-Q', 18, 1, TRUE),
(65, 'pdf', 'Dietary Guidelines for Americans', 'Official nutrition recommendations and guidelines', 'https://www.dietaryguidelines.gov/sites/default/files/2021-03/Dietary_Guidelines_for_Americans-2020-2025.pdf', 40, 2, TRUE),
(65, 'slides', 'Introduction to Nutrition Science', 'Basic concepts in nutrition and dietary planning', 'https://www.slideshare.net/slideshow/nutrition-basics-fundamentals/247994171', 30, 3, TRUE),
(65, 'article', 'Understanding Essential Nutrients', 'Comprehensive guide to vitamins, minerals, and macronutrients', 'https://www.hsph.harvard.edu/nutritionsource/what-should-you-eat/', 25, 4, FALSE);

-- Module 66 (Week 2) - Healthy Eating Patterns

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(66, 'video', 'Building Balanced Meals', 'How to create nutritious and balanced meal plans', 'https://www.youtube.com/watch?v=Gmh_xMMJkPw', 22, 1, TRUE),
(66, 'pdf', 'Healthy Eating Plate Guide', 'Visual guide to building healthy meals', 'https://www.hsph.harvard.edu/nutritionsource/healthy-eating-plate/', 35, 2, TRUE),
(66, 'slides', 'Meal Planning Strategies', 'Practical approaches to healthy eating', 'https://www.slideshare.net/slideshow/healthy-eating-patterns-meal-planning/247994274', 25, 3, TRUE),
(66, 'article', 'Portion Control and Mindful Eating', 'Techniques for healthy eating habits', 'https://www.heart.org/en/healthy-living/healthy-eating/eat-smart/nutrition-basics/portion-size-versus-serving-size', 20, 4, FALSE);

-- Module 67 (Week 3) - Nutritional Science

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(67, 'video', 'How the Body Processes Food', 'Digestion, absorption, and metabolism explained', 'https://www.youtube.com/watch?v=SRInnM2h6G8', 25, 1, TRUE),
(67, 'pdf', 'Human Nutrition Textbook Chapter', 'Comprehensive overview of nutritional biochemistry', 'https://open.oregonstate.education/humannutrition/', 50, 2, TRUE),
(67, 'slides', 'Digestive System and Nutrient Absorption', 'How our body processes and uses nutrients', 'https://www.slideshare.net/slideshow/nutritional-science-digestion/247994377', 30, 3, TRUE),
(67, 'article', 'The Science of Metabolism', 'Understanding how your body converts food to energy', 'https://www.ncbi.nlm.nih.gov/books/NBK234928/', 35, 4, FALSE);

-- Module 68 (Week 4) - Special Diets and Needs

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(68, 'video', 'Nutrition for Different Life Stages', 'Nutritional needs from childhood to older adulthood', 'https://www.youtube.com/watch?v=1T4cEfWnLCE', 28, 1, TRUE),
(68, 'pdf', 'Life Stage Nutrition Guide', 'Nutritional requirements across lifespan', 'https://www.who.int/publications/i/item/9789241549528', 45, 2, TRUE),
(68, 'slides', 'Special Dietary Considerations', 'Addressing unique nutritional needs', 'https://www.slideshare.net/slideshow/life-stage-nutrition-special-diets/247994480', 35, 3, TRUE),
(68, 'article', 'Vegetarian and Vegan Nutrition', 'Planning balanced plant-based diets', 'https://www.eatright.org/food/nutrition/vegetarian-and-special-diets/what-is-a-plant-based-diet', 25, 4, FALSE);

-- Module 69 (Week 5) - Weight Management

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(69, 'video', 'Science of Weight Management', 'Evidence-based approaches to healthy weight', 'https://www.youtube.com/watch?v=5FdF0aR8T3k', 24, 1, TRUE),
(69, 'pdf', 'Healthy Weight Management Guide', 'Sustainable approaches to weight control', 'https://www.nhlbi.nih.gov/health/educational/lose_wt/index.htm', 40, 2, TRUE),
(69, 'slides', 'Metabolism and Weight Control', 'Understanding energy balance and body composition', 'https://www.slideshare.net/slideshow/weight-management-science/247994583', 30, 3, TRUE),
(69, 'article', 'Myths and Facts About Weight Loss', 'Evidence-based weight management information', 'https://www.hsph.harvard.edu/obesity-prevention-source/obesity-myths/', 20, 4, FALSE);

-- Module 70 (Week 6) - Sports Nutrition

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(70, 'video', 'Fueling for Performance', 'Nutrition strategies for athletes and active individuals', 'https://www.youtube.com/watch?v=YdB0ZR80eRY', 26, 1, TRUE),
(70, 'pdf', 'Sports Nutrition Position Stand', 'Official recommendations for athletic nutrition', 'https://journals.lww.com/acsm-msse/fulltext/2016/03000/nutrition_and_athletic_performance.25.aspx', 50, 2, TRUE),
(70, 'slides', 'Exercise Nutrition Science', 'Nutritional needs for different types of exercise', 'https://www.slideshare.net/slideshow/sports-nutrition-performance/247994686', 35, 3, TRUE),
(70, 'article', 'Hydration and Exercise Performance', 'Importance of fluid balance in physical activity', 'https://www.acsm.org/docs/default-source/files-for-resource-library/protecting-hydration-health-position-statement.pdf', 25, 4, FALSE);

-- Module 71 (Week 7) - Wellness and Lifestyle

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(71, 'video', 'Holistic Wellness Approach', 'Integrating nutrition with overall wellbeing', 'https://www.youtube.com/watch?v=HmE6oYiq6yI', 20, 1, TRUE),
(71, 'pdf', 'Wellness and Prevention Guidelines', 'Comprehensive approach to health maintenance', 'https://www.cdc.gov/chronicdisease/resources/publications/factsheets/prevention.htm', 35, 2, TRUE),
(71, 'slides', 'Lifestyle Medicine Principles', 'Using nutrition and lifestyle for disease prevention', 'https://www.slideshare.net/slideshow/wellness-lifestyle-medicine/247994789', 25, 3, TRUE),
(71, 'article', 'Sleep, Stress and Nutrition Connection', 'How lifestyle factors affect nutritional status', 'https://www.sleepfoundation.org/nutrition', 30, 4, FALSE);

-- Module 72 (Week 8) - Nutrition Counseling

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(72, 'video', 'Effective Nutrition Communication', 'How to educate others about nutrition', 'https://www.youtube.com/watch?v=9RVs61w4iW8', 22, 1, TRUE),
(72, 'pdf', 'Nutrition Education Resources', 'Tools for teaching nutrition concepts', 'https://www.nutrition.gov/topics/basic-nutrition', 40, 2, TRUE),
(72, 'slides', 'Nutrition Counseling Techniques', 'Practical approaches to nutrition education', 'https://www.slideshare.net/slideshow/nutrition-counseling-education/247994892', 30, 3, TRUE),
(72, 'article', 'Building Sustainable Healthy Habits', 'Strategies for long-term behavior change', 'https://www.apa.org/topics/behavioral-health/healthy-habits', 25, 4, FALSE);


-- ========================================================
-- COURSE 10: Fitness and Exercise Science
-- ========================================================

-- Module 73 (Week 1) - Exercise Physiology Basics

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(73, 'video', 'Introduction to Exercise Physiology', 'How the body responds and adapts to exercise', 'https://www.youtube.com/watch?v=wLfTlwjq_xA', 25, 1, TRUE),
(73, 'pdf', 'Exercise Physiology Fundamentals', 'Basic principles of human movement science', 'https://www.ncbi.nlm.nih.gov/books/NBK482280/', 45, 2, TRUE),
(73, 'slides', 'Human Movement Science', 'Anatomy and physiology of exercise', 'https://www.slideshare.net/slideshow/exercise-physiology-basics/247994995', 35, 3, TRUE),
(73, 'article', 'The Science of Physical Activity', 'Benefits and mechanisms of exercise', 'https://www.heart.org/en/healthy-living/fitness/fitness-basics/why-is-physical-activity-so-important-for-health-and-wellbeing', 20, 4, FALSE);

-- Module 74 (Week 2) - Strength Training Principles

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(74, 'video', 'Strength Training Fundamentals', 'Proper techniques and programming for strength development', 'https://www.youtube.com/watch?v=GZbfZ033f74', 30, 1, TRUE),
(74, 'pdf', 'Resistance Training Guidelines', 'Evidence-based strength training recommendations', 'https://journals.lww.com/nsca-scj/fulltext/2009/08000/a_review_of_resistance_training_guidelines.2.aspx', 40, 2, TRUE),
(74, 'slides', 'Muscle Adaptation to Training', 'How muscles respond to resistance exercise', 'https://www.slideshare.net/slideshow/strength-training-principles/247995098', 25, 3, TRUE),
(74, 'article', 'Progressive Overload Explained', 'Key principle for continuous strength gains', 'https://www.acefitness.org/resources/everyone/blog/7591/progressive-overload-training-for-muscle-growth/', 15, 4, FALSE);

-- Module 75 (Week 3) - Cardiovascular Fitness

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(75, 'video', 'Cardio Training Science', 'Understanding aerobic exercise and heart health', 'https://www.youtube.com/watch?v=LLdS07m1+Ew', 28, 1, TRUE),
(75, 'pdf', 'Cardiovascular Exercise Guidelines', 'Official recommendations for heart health', 'https://www.heart.org/en/healthy-living/fitness/fitness-basics/aha-recs-for-physical-activity-in-adults', 35, 2, TRUE),
(75, 'slides', 'Aerobic Conditioning Methods', 'Different approaches to cardiovascular training', 'https://www.slideshare.net/slideshow/cardiovascular-training-science/247995201', 30, 3, TRUE),
(75, 'article', 'VO2 Max and Endurance Training', 'Measuring and improving aerobic capacity', 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6172294/', 25, 4, FALSE);

-- Module 76 (Week 4) - Flexibility and Mobility

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(76, 'video', 'Flexibility Training Techniques', 'Improving range of motion and joint health', 'https://www.youtube.com/watch?v=gJ9B6S7dLok', 22, 1, TRUE),
(76, 'pdf', 'Stretching and Flexibility Research', 'Scientific evidence for flexibility training', 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3273886/', 30, 2, TRUE),
(76, 'slides', 'Mobility Exercise Programming', 'Designing effective flexibility routines', 'https://www.slideshare.net/slideshow/flexibility-mobility-training/247995304', 20, 3, TRUE),
(76, 'article', 'Benefits of Regular Stretching', 'How flexibility impacts overall fitness', 'https://www.mayoclinic.org/healthy-lifestyle/fitness/in-depth/stretching/art-20047931', 15, 4, FALSE);

-- Module 77 (Week 5) - Exercise Programming

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(77, 'video', 'Designing Effective Workout Programs', 'Creating balanced exercise routines', 'https://www.youtube.com/watch?v=UcSczwWKP-s', 32, 1, TRUE),
(77, 'pdf', 'Exercise Program Design Manual', 'Systematic approach to workout planning', 'https://www.acsm.org/docs/default-source/files-for-resource-library/physical-activity-guidelines.pdf', 50, 2, TRUE),
(77, 'slides', 'Periodization and Progression', 'Advanced programming concepts', 'https://www.slideshare.net/slideshow/exercise-program-design/247995407', 35, 3, TRUE),
(77, 'article', 'FITT Principle Application', 'Frequency, Intensity, Time, Type in exercise planning', 'https://www.acefitness.org/resources/everyone/blog/6694/what-is-the-fitt-principle/', 20, 4, FALSE);

-- Module 78 (Week 6) - Injury Prevention

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(78, 'video', 'Exercise Safety and Injury Prevention', 'Avoiding common workout injuries', 'https://www.youtube.com/watch?v=YyvK4_5i6U0', 26, 1, TRUE),
(78, 'pdf', 'Sports Injury Prevention Guide', 'Evidence-based injury prevention strategies', 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3445233/', 40, 2, TRUE),
(78, 'slides', 'Biomechanics and Injury Risk', 'Understanding movement patterns and injury prevention', 'https://www.slideshare.net/slideshow/injury-prevention-biomechanics/247995510', 30, 3, TRUE),
(78, 'article', 'Proper Warm-up and Cool-down', 'Essential components of safe exercise', 'https://www.health.harvard.edu/staying-healthy/the-importance-of-stretching', 25, 4, FALSE);

-- Module 79 (Week 7) - Special Populations

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(79, 'video', 'Exercise for Special Populations', 'Adapting fitness programs for different needs', 'https://www.youtube.com/watch?v=2c6J9z7h_2E', 29, 1, TRUE),
(79, 'pdf', 'Exercise Prescription Guidelines', 'Tailoring exercise for various populations', 'https://www.acsm.org/docs/default-source/files-for-resource-library/physical-activity-special-populations.pdf', 45, 2, TRUE),
(79, 'slides', 'Adapted Physical Activity', 'Exercise modifications for special needs', 'https://www.slideshare.net/slideshow/exercise-special-populations/247995613', 35, 3, TRUE),
(79, 'article', 'Senior Fitness Considerations', 'Exercise programming for older adults', 'https://www.nia.nih.gov/health/exercise-physical-activity', 30, 4, FALSE);

-- Module 80 (Week 8) - Fitness Assessment

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(80, 'video', 'Fitness Testing and Evaluation', 'Measuring and interpreting fitness assessments', 'https://www.youtube.com/watch?v=QmPj3s2fqB8', 24, 1, TRUE),
(80, 'pdf', 'Fitness Assessment Protocols', 'Standardized testing procedures and norms', 'https://www.cdc.gov/physicalactivity/basics/measuring/index.html', 40, 2, TRUE),
(80, 'slides', 'Exercise Testing Methods', 'Comprehensive fitness evaluation techniques', 'https://www.slideshare.net/slideshow/fitness-assessment-testing/247995716', 30, 3, TRUE),
(80, 'article', 'Interpreting Fitness Test Results', 'Understanding what your fitness numbers mean', 'https://www.acefitness.org/resources/everyone/blog/6444/how-to-measure-your-fitness-progress/', 25, 4, FALSE);

-- Module 81 (Week 1) - Digital Design Basics: Introduction to Design Principles

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(81, 'video', 'Beginning Graphic Design: Fundamentals', 'Learn what makes good design through fundamental concepts', 'https://www.youtube.com/watch?v=YqQx75OPRa0', 16, 1, TRUE),
(81, 'pdf', 'The Principles of Design', 'Comprehensive guide to design principles and elements', 'https://www.canva.com/learn/wp-content/uploads/2015/03/The-Principles-of-Design.pdf', 22, 2, TRUE),
(81, 'slides', 'Introduction to Design Thinking', 'Understanding the design process and creative problem solving', 'https://www.slideshare.net/slideshow/introduction-to-design-thinking-ppt/258147123', 28, 3, TRUE),
(81, 'article', '6 Graphic Design Principles You Need To Master', 'Practical guide to essential design principles', 'https://blog.hubspot.com/marketing/principles-of-design', 35, 4, FALSE);

-- Module 82 (Week 2) - Digital Design Basics: Color Theory

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(82, 'video', 'Color Theory for Noobs | Beginner Guide', 'Learn how to use color effectively in your designs', 'https://www.youtube.com/watch?v=wWW_UbrkBEw', 18, 1, TRUE),
(82, 'pdf', 'Color Theory Fundamentals', 'Complete guide to color psychology and combinations', 'https://www.toptal.com/designers/color/color-theory-fundamentals-guide.pdf', 25, 2, TRUE),
(82, 'slides', 'Mastering Color in Digital Design', 'Color systems, harmonies, and practical applications', 'https://www.slideshare.net/slideshow/color-theory-for-designers/259332654', 32, 3, TRUE),
(82, 'article', 'Color Theory for Designers: The Meaning of Color', 'How color influences perception and emotion in design', 'https://www.smashingmagazine.com/2010/01/color-theory-for-designers-part-1-the-meaning-of-color/', 40, 4, FALSE);

-- Module 83 (Week 3) - Digital Design Basics: Typography

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(83, 'video', 'Typography Tutorial - 10 rules to help you rule type', 'Essential typography rules for better design', 'https://www.youtube.com/watch?v=QrNi9FmdlxY', 20, 1, TRUE),
(83, 'pdf', 'Typography Cheat Sheet', 'Quick reference guide for type terminology and usage', 'https://www.canva.com/learn/wp-content/uploads/2016/03/typography-cheatsheet.pdf', 28, 2, TRUE),
(83, 'slides', 'Advanced Typography Techniques', 'Type pairing, hierarchy, and layout principles', 'https://www.slideshare.net/slideshow/typography-fundamentals/260018432', 35, 3, TRUE),
(83, 'article', 'A Comprehensive Guide to Typography', 'Everything you need to know about working with type', 'https://careerfoundry.com/en/blog/ui-design/beginners-guide-to-typography/', 42, 4, FALSE);

-- Module 84 (Week 4) - Digital Design Basics: Layout and Composition

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(84, 'video', '5 Fundamental Composition Techniques for Layout Design', 'Learn how to create balanced and engaging layouts', 'https://www.youtube.com/watch?v=aSF6g4O-5p8', 17, 1, TRUE),
(84, 'pdf', 'Layout Design Principles Guide', 'Visual hierarchy, grid systems, and composition rules', 'https://www.creativebloq.com/netmag/create-better-layouts-grid-theory-71478132', 26, 2, TRUE),
(84, 'slides', 'Grid Systems in Graphic Design', 'Understanding and applying grid-based layouts', 'https://www.slideshare.net/slideshow/layout-and-composition-techniques/260784189', 33, 3, TRUE),
(84, 'article', 'The Ultimate Guide to Layout Design', 'Creating effective visual hierarchies and flow', 'https://www.canva.com/learn/design-layout/', 38, 4, FALSE);

-- Module 85 (Week 5) - Digital Design Basics: Introduction to Adobe Photoshop

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(85, 'video', 'Photoshop for Beginners | FREE COURSE', 'Complete beginner tutorial for Adobe Photoshop', 'https://www.youtube.com/watch?v=IyR_uYsRdPs', 45, 1, TRUE),
(85, 'pdf', 'Adobe Photoshop Beginner Guide', 'Official Adobe guide to getting started with Photoshop', 'https://www.adobe.com/content/dam/acom/en/products/photoshop/pdfs/photoshop-beginner-tutorials-cc.pdf', 35, 2, TRUE),
(85, 'slides', 'Photoshop Tools and Interface Overview', 'Navigating Photoshop workspace and essential tools', 'https://www.slideshare.net/slideshow/adobe-photoshop-basics/261459543', 30, 3, TRUE),
(85, 'article', '50 Photoshop Tips for Beginners', 'Essential techniques and shortcuts for new users', 'https://photographylife.com/photoshop-tips-for-beginners', 40, 4, FALSE);

-- Module 86 (Week 6) - Digital Design Basics: Introduction to Adobe Illustrator

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(86, 'video', 'Illustrator for Beginners | FREE COURSE', 'Complete beginner tutorial for vector graphics in Illustrator', 'https://www.youtube.com/watch?v=3NBKRywEbNs', 48, 1, TRUE),
(86, 'pdf', 'Adobe Illustrator Getting Started Guide', 'Official Adobe guide to vector design fundamentals', 'https://www.adobe.com/content/dam/acom/en/products/illustrator/pdfs/illustrator-getting-started-tutorial-cc.pdf', 32, 2, TRUE),
(86, 'slides', 'Vector Graphics Fundamentals', 'Understanding paths, shapes, and pen tool techniques', 'https://www.slideshare.net/slideshow/adobe-illustrator-basics/262189210', 36, 3, TRUE),
(86, 'article', '50 Essential Illustrator Tips Every Designer Should Know', 'Professional techniques for efficient vector work', 'https://www.creativebloq.com/adobe-illustrator-tips-1232677', 42, 4, FALSE);

-- Module 87 (Week 7) - Digital Design Basics: Brand Identity Design

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(87, 'video', 'How to Build a Brand Identity', 'Creating cohesive brand systems from logos to guidelines', 'https://www.youtube.com/watch?v=Y6f2RHq9jAM', 22, 1, TRUE),
(87, 'pdf', 'Brand Identity Design Workbook', 'Step-by-step guide to developing brand systems', 'https://www.columnfivemedia.com/wp-content/uploads/2021/06/Brand-Style-Guide-Template.pdf', 38, 2, TRUE),
(87, 'slides', 'Creating Comprehensive Brand Guidelines', 'Logo usage, color systems, typography, and applications', 'https://www.slideshare.net/slideshow/brand-identity-design/262876210', 40, 3, TRUE),
(87, 'article', 'The Ultimate Guide to Brand Identity Design', 'Developing memorable and effective brand systems', 'https://www.canva.com/learn/brand-identity/', 45, 4, FALSE);

-- Module 88 (Week 8) - Digital Design Basics: Portfolio Development

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(88, 'video', 'How to Create a Design Portfolio That Gets You Hired', 'Tips for showcasing your work effectively', 'https://www.youtube.com/watch?v=u6oQhCicGpU', 25, 1, TRUE),
(88, 'pdf', 'Design Portfolio Guide', 'Creating and presenting your design portfolio', 'https://www.format.com/wp-content/uploads/2020/10/graphic-design-portfolio-guide.pdf', 30, 2, TRUE),
(88, 'slides', 'Digital Portfolio Presentation', 'Online platforms and presentation techniques', 'https://www.slideshare.net/slideshow/creating-design-portfolio/263543087', 35, 3, TRUE),
(88, 'article', 'How to Build a Winning Graphic Design Portfolio', 'Expert advice for students and junior designers', 'https://www.creativebloq.com/career/how-build-winning-graphic-design-portfolio-10129144', 42, 4, FALSE);
-- ========================================================
-- COURSE 12: Photography Fundamentals
-- ========================================================

-- Module 89 (Week 1) - Photography Fundamentals: Camera Basics

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(89, 'video', 'Camera Basics: Aperture, Shutter Speed, and ISO', 'Complete beginner guide to photography fundamentals by John Branch', 'https://www.youtube.com/watch?v=6_B8pVoANyY', 18, 1, TRUE),
(89, 'pdf', 'Photography Cheat Sheet for Beginners', 'Quick reference guide for camera settings and composition', 'https://cdn-5.motorsport.com/static/img/archive/Photography_Cheat_Sheet.pdf', 20, 2, TRUE),
(89, 'slides', 'Introduction to Photography Equipment', 'Choosing the right camera and lenses for beginners', 'https://www.slideshare.net/slideshow/introduction-to-photography-equipment-ppt/265784316', 25, 3, TRUE),
(89, 'article', 'Understanding Your Camera Settings', 'Digital Photography School guide to mastering your camera', 'https://digital-photography-school.com/understanding-your-camera-settings/', 30, 4, FALSE);

-- Module 90 (Week 2) - Photography Fundamentals: Composition

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(90, 'video', '7 Photography Composition Techniques', 'Rule of thirds, leading lines, and other composition rules', 'https://www.youtube.com/watch?v=2SPAPcHGz1I', 15, 1, TRUE),
(90, 'pdf', 'Composition Techniques Guide', 'Visual guide to photographic composition principles', 'https://www.photographymad.com/pages/view/composition-techniques-pdf', 22, 2, TRUE),
(90, 'slides', 'Advanced Composition Techniques', 'Beyond the rule of thirds - framing and perspective', 'https://www.slideshare.net/slideshow/photography-composition-techniques/258147654', 28, 3, TRUE),
(90, 'article', 'The Rule of Thirds in Photography', 'Complete guide to using the rule of thirds effectively', 'https://photographylife.com/rule-of-thirds', 35, 4, FALSE);

-- Module 91 (Week 3) - Photography Fundamentals: Lighting

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(91, 'video', 'Understanding Natural Light in Photography', 'How to work with different types of natural light', 'https://www.youtube.com/watch?v=8qTpw1yKtAY', 16, 1, TRUE),
(91, 'pdf', 'Lighting Techniques for Photographers', 'Guide to natural and artificial lighting setups', 'https://www.canon-europe.com/pro/infobank/lighting-techniques/', 24, 2, TRUE),
(91, 'slides', 'Mastering Photography Lighting', 'Golden hour, blue hour, and indoor lighting techniques', 'https://www.slideshare.net/slideshow/photography-lighting-techniques/259874321', 32, 3, TRUE),
(91, 'article', 'The Photographers Guide to Light', 'Comprehensive guide to understanding and using light', 'https://www.creativelive.com/blog/understanding-light-photography/', 40, 4, FALSE);

-- Module 92 (Week 4) - Photography Fundamentals: Portrait Photography

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(92, 'video', 'Beginner Portrait Photography Tutorial', 'How to take flattering portraits with any camera', 'https://www.youtube.com/watch?v=Q-b3W5qUCkU', 20, 1, TRUE),
(92, 'pdf', 'Portrait Photography Posing Guide', 'Essential posing techniques and tips for portraits', 'https://fixthephoto.com/portrait-posing-guide-pdf', 26, 2, TRUE),
(92, 'slides', 'Portrait Photography Fundamentals', 'Equipment, lighting, and composition for portraits', 'https://www.slideshare.net/slideshow/portrait-photography-techniques/260451298', 34, 3, TRUE),
(92, 'article', '10 Portrait Photography Tips for Beginners', 'Practical advice for better portrait photography', 'https://expertphotography.com/portrait-photography-tips/', 42, 4, FALSE);

-- Module 93 (Week 5) - Photography Fundamentals: Landscape Photography

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(93, 'video', 'Landscape Photography for Beginners', 'Capturing stunning landscapes with professional techniques', 'https://www.youtube.com/watch?v=Fs-1aadhbCI', 22, 1, TRUE),
(93, 'pdf', 'Landscape Photography Field Guide', 'Essential techniques and equipment for landscape photography', 'https://www.naturettl.com/wp-content/uploads/2017/05/Landscape-Photography-Field-Guide.pdf', 28, 2, TRUE),
(93, 'slides', 'Advanced Landscape Photography', 'Composition and technical skills for landscape scenes', 'https://www.slideshare.net/slideshow/landscape-photography-techniques/261893475', 36, 3, TRUE),
(93, 'article', 'The Ultimate Guide to Landscape Photography', 'Comprehensive guide from planning to post-processing', 'https://digital-photography-school.com/landscape-photography/', 45, 4, FALSE);

-- Module 94 (Week 6) - Photography Fundamentals: Street Photography

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(94, 'video', 'Street Photography Tips and Techniques', 'How to capture compelling street scenes confidently', 'https://www.youtube.com/watch?v=8w0ZOBFp_c0', 19, 1, TRUE),
(94, 'pdf', 'Street Photography Ethics and Techniques', 'Legal and ethical considerations for street photographers', 'https://streetphotography.com/guide/street-photography-ethics.pdf', 23, 2, TRUE),
(94, 'slides', 'The Art of Street Photography', 'Capturing decisive moments and urban life', 'https://www.slideshare.net/slideshow/street-photography-techniques/262784512', 31, 3, TRUE),
(94, 'article', 'Street Photography for Beginners', 'Overcoming fear and finding your style in street photography', 'https://erickimphotography.com/blog/street-photography-tips/', 38, 4, FALSE);

-- Module 95 (Week 7) - Photography Fundamentals: Post-Processing

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(95, 'video', 'Basic Photo Editing in Lightroom', 'Beginner guide to organizing and editing photos', 'https://www.youtube.com/watch?v=6q9FkjWw8y4', 25, 1, TRUE),
(95, 'pdf', 'Lightroom Classic Quick Start Guide', 'Adobe official guide to Lightroom workflow', 'https://www.adobe.com/content/dam/acom/en/products/photoshop/pdfs/lightroom-classic-quick-start-guide.pdf', 30, 2, TRUE),
(95, 'slides', 'Introduction to Photo Editing', 'Basic principles of color correction and enhancement', 'https://www.slideshare.net/slideshow/photo-editing-basics/263451876', 35, 3, TRUE),
(95, 'article', 'A Beginners Guide to Photo Editing', 'Essential editing techniques for photographers', 'https://photographylife.com/photo-editing-beginners', 42, 4, FALSE);

-- Module 96 (Week 8) - Photography Fundamentals: Building a Portfolio

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(96, 'video', 'How to Create a Photography Portfolio', 'Tips for selecting and presenting your best work', 'https://www.youtube.com/watch?v=Q3L0rAUck3s', 17, 1, TRUE),
(96, 'pdf', 'Photography Portfolio Guide', 'Step-by-step guide to building your first portfolio', 'https://format.com/wp-content/uploads/2020/10/photography-portfolio-guide.pdf', 24, 2, TRUE),
(96, 'slides', 'Digital Portfolio Presentation', 'Creating online portfolios and social media presence', 'https://www.slideshare.net/slideshow/creating-photography-portfolio/264189543', 32, 3, TRUE),
(96, 'article', '10 Tips for Creating a Standout Photography Portfolio', 'Expert advice for showcasing your work professionally', 'https://www.photigy.com/school/create-photography-portfolio/', 40, 4, FALSE);

-- ========================================================
-- COURSE 13: Creative Writing
-- ========================================================

-- Module 97 (Week 1) - Creative Writing: Fundamentals

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(97, 'video', 'Creative Writing 101: Getting Started', 'Brandon Sanderson on beginning your writing journey', 'https://www.youtube.com/watch?v=-6HOdHEeosc', 22, 1, TRUE),
(97, 'pdf', 'The Elements of Style by Strunk and White', 'Classic guide to writing principles and style', 'https://www.jlakes.org/ch/web/The-elements-of-style.pdf', 35, 2, TRUE),
(97, 'slides', 'Introduction to Creative Writing', 'Fundamentals of storytelling and narrative structure', 'https://www.slideshare.net/slideshow/introduction-to-creative-writing/258743219', 28, 3, TRUE),
(97, 'article', 'The Habit of Writing: How to Start', 'Developing consistent writing habits and overcoming blocks', 'https://writers.com/how-to-start-writing', 30, 4, FALSE);

-- Module 98 (Week 2) - Creative Writing: Character Development

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(98, 'video', 'Creating Compelling Characters', 'Techniques for developing memorable characters', 'https://www.youtube.com/watch?v=ppjcEMwpikM', 19, 1, TRUE),
(98, 'pdf', 'Character Development Worksheet', 'Comprehensive template for building complex characters', 'https://www.epiguide.com/ebooks/charactertemplate.pdf', 25, 2, TRUE),
(98, 'slides', 'Advanced Character Creation', 'Psychology, motivation, and character arcs', 'https://www.slideshare.net/slideshow/character-development-techniques/259332187', 32, 3, TRUE),
(98, 'article', 'Character Development: 9 Steps to Creating Amazing Characters', 'In-depth guide to character building', 'https://blog.reedsy.com/character-development/', 38, 4, FALSE);

-- Module 99 (Week 3) - Creative Writing: Plot and Structure

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(99, 'video', 'Story Structure and Plot Development', 'Three-act structure and narrative pacing techniques', 'https://www.youtube.com/watch?v=5M6oZGBIDC0', 21, 1, TRUE),
(99, 'pdf', 'The Heros Journey Template', 'Campbells monomyth structure for storytelling', 'https://www.rsc.org.uk/globalassets/02-blogs/the-heros-journey-infographic.pdf', 28, 2, TRUE),
(99, 'slides', 'Plot Construction Techniques', 'Building tension, conflict, and resolution', 'https://www.slideshare.net/slideshow/plot-structure-techniques/260018765', 34, 3, TRUE),
(99, 'article', 'The Ultimate Guide to Plot Development', 'Comprehensive plot building strategies', 'https://www.nownovel.com/blog/plot-development/', 42, 4, FALSE);

-- Module 100 (Week 4) - Creative Writing: Dialogue

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(100, 'video', 'Writing Realistic Dialogue', 'Techniques for creating authentic character conversations', 'https://www.youtube.com/watch?v=K2W3ZlnW_8s', 18, 1, TRUE),
(100, 'pdf', 'Dialogue Writing Workbook', 'Exercises and examples for improving dialogue', 'https://www.writersdigest.com/.pdf/dialogue-worksheet.pdf', 22, 2, TRUE),
(100, 'slides', 'Mastering Dialogue Techniques', 'Subtext, voice, and pacing in conversation', 'https://www.slideshare.net/slideshow/writing-effective-dialogue/260784432', 30, 3, TRUE),
(100, 'article', '10 Tips for Writing Better Dialogue', 'Practical advice for natural-sounding conversations', 'https://jerryjenkins.com/how-to-write-dialogue/', 35, 4, FALSE);

-- Module 101 (Week 5) - Creative Writing: Setting and World-Building

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(101, 'video', 'Creating Immersive Settings', 'Building believable worlds and environments', 'https://www.youtube.com/watch?v=Z6KbJlq3_3I', 20, 1, TRUE),
(101, 'pdf', 'World-Building Template', 'Comprehensive guide to creating fictional worlds', 'https://www.creative-writing-now.com/world-building-template.pdf', 32, 2, TRUE),
(101, 'slides', 'Advanced World-Building Techniques', 'Culture, history, and geography in storytelling', 'https://www.slideshare.net/slideshow/world-building-techniques/261459876', 38, 3, TRUE),
(101, 'article', 'The Ultimate World-Building Guide', '125+ questions for creating detailed fictional worlds', 'https://www.servicescape.com/blog/the-ultimate-worldbuilding-guide', 45, 4, FALSE);

-- Module 102 (Week 6) - Creative Writing: Point of View

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(102, 'video', 'Choosing the Right Point of View', 'First, second, and third person perspectives explained', 'https://www.youtube.com/watch?v=4xJd-_55NwM', 16, 1, TRUE),
(102, 'pdf', 'Point of View in Fiction Writing', 'Comprehensive guide to narrative perspective', 'https://www.writingforward.com/wp-content/uploads/2021/05/point-of-view-guide.pdf', 26, 2, TRUE),
(102, 'slides', 'Mastering Narrative Voice', 'Deep POV and narrative distance techniques', 'https://www.slideshare.net/slideshow/point-of-view-techniques/262189543', 31, 3, TRUE),
(102, 'article', 'Point of View: The Complete Guide', 'Choosing and maintaining consistent POV', 'https://blog.reedsy.com/guide/point-of-view/', 36, 4, FALSE);

-- Module 103 (Week 7) - Creative Writing: Editing and Revision

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(103, 'video', 'Self-Editing Techniques for Writers', 'Revising your work like a professional editor', 'https://www.youtube.com/watch?v=z6TpUO1g3k4', 24, 1, TRUE),
(103, 'pdf', 'Self-Editing Checklist', 'Comprehensive editing guide for fiction writers', 'https://www.scribendi.com/pdf/self_editing_checklist.pdf', 35, 2, TRUE),
(103, 'slides', 'The Revision Process', 'Structural editing, line editing, and proofreading', 'https://www.slideshare.net/slideshow/editing-revision-techniques/262876543', 40, 3, TRUE),
(103, 'article', 'The Ultimate Self-Editing Guide', 'Step-by-step process for revising your manuscript', 'https://thewritepractice.com/self-editing/', 42, 4, FALSE);

-- Module 104 (Week 8) - Creative Writing: Publishing Paths

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(104, 'video', 'Traditional vs Self-Publishing', 'Understanding your publishing options as a new writer', 'https://www.youtube.com/watch?v=G2jqWKbQK7E', 22, 1, TRUE),
(104, 'pdf', 'Query Letter Template and Guide', 'How to write effective query letters for agents', 'https://www.writersdigest.com/.pdf/query-letter-template.pdf', 28, 2, TRUE),
(104, 'slides', 'The Business of Writing', 'Agents, contracts, and building your writing career', 'https://www.slideshare.net/slideshow/publishing-your-writing/263543210', 34, 3, TRUE),
(104, 'article', 'How to Get Your Book Published: A Comprehensive Guide', 'Traditional and self-publishing pathways explained', 'https://janefriedman.com/how-to-get-your-book-published/', 45, 4, FALSE);

-- ========================================================
-- COURSE 14: Public Speaking (COMM101)
-- ========================================================

-- Module 105 (Week 1) - Public Speaking: Overcoming Fear

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(105, 'video', 'The Science of Stage Fright (and how to overcome it)', 'Understanding the physiology of stage fright by Mikael Cho', 'https://www.youtube.com/watch?v=2HdWWY04Vj0', 5, 1, TRUE),
(105, 'pdf', 'Overcoming Your Fear of Public Speaking', 'Comprehensive guide to conquering glossophobia and building confidence', 'https://vs-static.virtualspeech.com/resources/ebook/overcoming-your-fear-of-public-speaking.pdf', 25, 2, TRUE),
(105, 'slides', 'Overcoming Speaking Anxiety in Meetings and Presentations', 'Practical strategies for managing public speaking anxiety', 'https://extension.purdue.edu/4-H/_docs/projects/communications/Overcoming-Speaking-Anxiety-Fact-Sheet.pdf', 20, 3, TRUE),
(105, 'article', 'How I Overcame My Fear of Public Speaking', 'Personal journey and techniques from Danish Dhamani TEDx talk', 'https://www.ted.com/talks/danish_dhamani_how_i_overcame_my_fear_of_public_speaking', 18, 4, FALSE);

-- Module 106 (Week 2) - Public Speaking: Speech Structure

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(106, 'video', 'The One Thing All Great Teachers Do - Topical Organization', 'Nick Fuhrman demonstrates effective speech structure with topical organization', 'https://www.youtube.com/watch?v=WwTpfVQgkU0', 17, 1, TRUE),
(106, 'pdf', 'Speech Writing and Types of Speeches', 'Comprehensive guide to structuring speeches with introduction, body, and conclusion', 'https://edis.ifas.ufl.edu/publication/WC116', 30, 2, TRUE),
(106, 'slides', 'Speech Structure and Organization', 'Framework for organizing effective speeches with proper transitions', 'https://www.amherst.edu/academiclife/support/writingcenter/public-speaking/resources-for-public-speaking/speech-structure', 28, 3, TRUE),
(106, 'article', 'Structuring the Speech - Three Main Parts', 'Understanding introduction, body, and conclusion organization patterns', 'https://www.comm.pitt.edu/structuring-speech', 25, 4, FALSE);

-- Module 107 (Week 3) - Public Speaking: Vocal Delivery

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(107, 'video', 'Vocal Delivery Techniques', 'Professional techniques for using your voice effectively in public speaking', 'https://www.youtube.com/watch?v=8ha-KUArLWc', 9, 1, TRUE),
(107, 'pdf', 'Mastering Vocal Delivery and Tone: A Speakers Guide', 'Comprehensive guide to pitch, pace, volume, and tone control', 'https://www.compellingspeaker.com/blog/mastering-vocal-delivery-and-tone', 32, 2, TRUE),
(107, 'slides', 'Effective Delivery: Vocal and Non-Verbal Communication', 'Techniques for pitch, resonance, pace, and vocal variety', 'https://courses.lumenlearning.com/suny-esc-communicationforprofessionals/chapter/effective-narration/', 35, 3, TRUE),
(107, 'article', 'Public Speaking Training 101: Mastering Your Voice', 'The MOXIE Method for vocal perfection and voice projection', 'https://www.moxieinstitute.com/public-speaking-training-101-mastering-your-voice-your-guide-to-vocal-perfection/', 28, 4, FALSE);

-- Module 108 (Week 4) - Public Speaking: Body Language

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(108, 'video', 'Body Language for Public Speaking', 'Amy Cuddy on power poses and nonverbal communication', 'https://www.youtube.com/watch?v=Ks-_Mh1QhMc', 21, 1, TRUE),
(108, 'pdf', 'Nonverbal Communication in Public Speaking', 'Comprehensive guide to gestures, posture, and movement', 'https://open.lib.umn.edu/communication/chapter/11-3-movement-in-your-speech/', 28, 2, TRUE),
(108, 'slides', 'The Power of Body Language in Presentations', 'Using gestures, eye contact, and posture effectively', 'https://courses.lumenlearning.com/suny-publicspeakingprinciples/chapter/chapter-18-speech-delivery/', 30, 3, TRUE),
(108, 'article', 'Mastering Body Language for Effective Public Speaking', 'Advanced techniques for confident physical presence', 'https://www.carminegallo.com/body-language-tips-for-public-speaking/', 35, 4, FALSE);

-- Module 109 (Week 5) - Public Speaking: Visual Aids

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(109, 'video', 'How to Design Great Presentation Slides', 'David JP Phillips on slide design principles and visual communication', 'https://www.youtube.com/watch?v=Iwpi1Lm6dFo', 15, 1, TRUE),
(109, 'pdf', 'Visual Aids in Public Speaking', 'Best practices for using slides, props, and multimedia effectively', 'https://open.lib.umn.edu/publicspeaking/chapter/15-1-functions-of-presentation-aids/', 32, 2, TRUE),
(109, 'slides', 'Designing Effective Presentation Visuals', 'Principles of visual design, color, typography, and data visualization', 'https://speakingaboutpresenting.com/design/presentation-design-quick-tips/', 38, 3, TRUE),
(109, 'article', 'The Ultimate Guide to Presentation Visual Aids', 'Creating impactful visuals that enhance your message', 'https://www.duarte.com/presentation-skills-resources/use-visual-aids-presentations/', 40, 4, FALSE);

-- Module 110 (Week 6) - Public Speaking: Persuasive Speaking

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(110, 'video', 'The Art of Persuasion - How to Influence People', 'Simon Sinek on persuasive communication and influence', 'https://www.youtube.com/watch?v=qp0HIF3SfI4', 18, 1, TRUE),
(110, 'pdf', 'Persuasive Speaking Strategies', 'Monroes Motivated Sequence and persuasion techniques', 'https://courses.lumenlearning.com/suny-publicspeakingprinciples/chapter/chapter-17-persuasive-speaking/', 35, 2, TRUE),
(110, 'slides', 'Building Persuasive Arguments', 'Ethos, pathos, logos and rhetorical appeals in speeches', 'https://open.lib.umn.edu/publicspeaking/chapter/17-3-organizing-persuasive-speeches/', 34, 3, TRUE),
(110, 'article', 'The Psychology of Persuasive Public Speaking', 'Evidence-based persuasion techniques for speakers', 'https://www.scienceofpeople.com/persuasive-speech/', 42, 4, FALSE);

-- Module 111 (Week 7) - Public Speaking: Impromptu Speaking

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(111, 'video', 'Think Fast, Talk Smart: Communication Techniques', 'Matt Abrahams on impromptu speaking and thinking on your feet', 'https://www.youtube.com/watch?v=HAnw168huqA', 58, 1, TRUE),
(111, 'pdf', 'Impromptu Speaking Techniques', 'Frameworks and strategies for speaking without preparation', 'https://www.hamilton.edu/academics/centers/oralcommunication/guides/impromptu-speaking', 24, 2, TRUE),
(111, 'slides', 'The PREP Method for Impromptu Speaking', 'Point, Reason, Example, Point structure for quick responses', 'https://www.mindtools.com/a8xiqh6/impromptu-speaking', 28, 3, TRUE),
(111, 'article', 'Mastering the Art of Impromptu Public Speaking', 'Building confidence to speak spontaneously and effectively', 'https://www.toastmasters.org/magazine/magazine-issues/2019/aug/impromptu-speaking', 30, 4, FALSE);

-- Module 112 (Week 8) - Public Speaking: Professional Presentations

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(112, 'video', 'How to Give a Killer Presentation', 'Chris Anderson shares secrets from TED on delivering powerful presentations', 'https://www.youtube.com/watch?v=8S0FDjFBj8o', 18, 1, TRUE),
(112, 'pdf', 'Professional Business Presentations Guide', 'Complete guide to polished corporate and formal presentations', 'https://www.hamilton.edu/academics/centers/oralcommunication/guides/professional-presentations', 40, 2, TRUE),
(112, 'slides', 'Executive Presence in Presentations', 'Commanding the room with confidence and authority', 'https://www.duarte.com/presentation-skills-resources/', 36, 3, TRUE),
(112, 'article', 'The Complete Guide to Business Presentations', 'Professional presentation skills for career advancement', 'https://hbr.org/2013/06/how-to-give-a-killer-presentation', 45, 4, FALSE);
-- ========================================================
-- COURSE 15: Leadership Skills
-- ========================================================

-- Module 113 (Week 1) - Leadership Skills: Foundations of Leadership

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(113, 'video', 'How Great Leaders Inspire Action', 'Simon Sineks famous TED talk on the Golden Circle and starting with why', 'https://www.youtube.com/watch?v=qp0HIF3SfI4', 18, 1, TRUE),
(113, 'pdf', 'The Fundamental 4 Leadership Skills', 'Core leadership competencies: self-awareness, communication, influence, and learning agility', 'https://www.ccl.org/wp-content/uploads/2015/04/fundamental-leadership-skills.pdf', 28, 2, TRUE),
(113, 'slides', 'Leadership Fundamentals Course Overview', 'Introduction to essential leadership principles and practices', 'https://professionalleadershipinstitute.com/resources/leadership-fundamentals-overview/', 30, 3, TRUE),
(113, 'article', 'What Makes a Leader? Emotional Intelligence', 'Daniel Golemans groundbreaking article on emotional intelligence in leadership', 'https://hbr.org/2004/01/what-makes-a-leader', 40, 4, FALSE);

-- Module 114 (Week 2) - Leadership Skills: Emotional Intelligence

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(114, 'video', 'The Power of Emotional Intelligence', 'Daniel Goleman explains the five components of emotional intelligence', 'https://www.youtube.com/watch?v=Y7m9eNoB3NU', 22, 1, TRUE),
(114, 'pdf', 'Emotional Intelligence and Leadership Effectiveness', 'Research-based guide on EIs role in leadership success', 'https://scholars.unh.edu/cgi/viewcontent.cgi?article=1140&context=ms_leadership', 35, 2, TRUE),
(114, 'slides', 'Leading with Emotional Intelligence', 'Practical strategies for developing and applying EI in leadership', 'https://yoloda.org/wp-content/uploads/2014/09/EITC-Leading-with-EI-2010.pdf', 32, 3, TRUE),
(114, 'article', 'The Importance of Emotional Intelligence in Leadership', 'How EI impacts team performance and organizational success', 'https://www.ccl.org/articles/leading-effectively-articles/emotional-intelligence-and-leadership-effectiveness/', 38, 4, FALSE);

-- Module 115 (Week 3) - Leadership Skills: Team Building and Collaboration

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(115, 'video', 'The Five Dysfunctions of a Team', 'Patrick Lencioni on building cohesive and high-performing teams', 'https://www.youtube.com/watch?v=TofQaUWtUBE', 24, 1, TRUE),
(115, 'pdf', 'Building Effective Teams: A Leadership Guide', 'Comprehensive framework for team development and collaboration', 'https://www.ccl.org/wp-content/uploads/2015/04/TeamDevelopment.pdf', 30, 2, TRUE),
(115, 'slides', 'Leadership and Teamwork: 10 Ways to Help Your Team', 'Actionable strategies for fostering teamwork and trust', 'https://www.teamwork.com/blog/10-ways-leaders-teams/', 28, 3, TRUE),
(115, 'article', 'The Secrets of Great Teamwork', 'Research-backed insights on what makes teams succeed', 'https://hbr.org/2016/06/the-secrets-of-great-teamwork', 42, 4, FALSE);

-- Module 116 (Week 4) - Leadership Skills: Decision Making

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(116, 'video', 'How to Make Hard Choices', 'Ruth Chang on decision-making frameworks for leaders', 'https://www.youtube.com/watch?v=8GQZuzIdeQQ', 15, 1, TRUE),
(116, 'pdf', 'A Leaders Framework for Decision Making', 'The Cynefin framework for contextual decision-making by Snowden and Boone', 'https://www.systemswisdom.com/sites/default/files/Snowdon-and-Boone-A-Leaders-Framework-for-Decision-Making_0.pdf', 32, 2, TRUE),
(116, 'slides', 'Leadership and Decision Making Models', 'GROW model and other practical frameworks for leaders', 'https://cscuk.fcdo.gov.uk/wp-content/uploads/2021/03/Leadership-models-and-decision-making.pdf', 26, 3, TRUE),
(116, 'article', 'Making Smart Decisions: A Leaders Guide', 'Strategic decision-making processes and best practices', 'https://hbr.org/2013/09/before-you-make-that-big-decision', 36, 4, FALSE);

-- Module 117 (Week 5) - Leadership Skills: Communication and Influence

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(117, 'video', 'The Art of Persuasion and Influence', 'Robert Cialdini on the six principles of influence', 'https://www.youtube.com/watch?v=cFdCzN7RYbw', 20, 1, TRUE),
(117, 'pdf', 'Leadership Communication: A Guide for Executives', 'Effective communication strategies for organizational leaders', 'https://open.lib.umn.edu/communication/chapter/13-5-leader-communication/', 28, 2, TRUE),
(117, 'slides', 'Influential Leadership Communication', 'Building trust and credibility through strategic communication', 'https://www.ccl.org/articles/leading-effectively-articles/communication-1-idea-3-facts-5-tips/', 30, 3, TRUE),
(117, 'article', 'The Necessary Art of Persuasion', 'How leaders use persuasion to drive change and inspire action', 'https://hbr.org/1998/05/the-necessary-art-of-persuasion', 40, 4, FALSE);

-- Module 118 (Week 6) - Leadership Skills: Change Management

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(118, 'video', 'Leading Change: Why Transformation Efforts Fail', 'John Kotters 8-step process for leading organizational change', 'https://www.youtube.com/watch?v=Smxfs_3NsRU', 16, 1, TRUE),
(118, 'pdf', 'Change Leadership: The Kotter Model', 'Comprehensive guide to implementing successful organizational change', 'https://www.kotterinc.com/wp-content/uploads/2021/08/8-Steps-eBook-Kotter-2021.pdf', 34, 2, TRUE),
(118, 'slides', 'Managing Transitions: Making the Most of Change', 'William Bridges'' framework for navigating organizational transitions', 'https://wmbridges.com/wp-content/uploads/2020/07/Managing-Transitions-Overview.pdf', 32, 3, TRUE),
(118, 'article', 'Leading Change When Business Is Good', 'Strategies for proactive change leadership in stable times', 'https://hbr.org/2004/12/leading-change-when-business-is-good', 38, 4, FALSE);

-- Module 119 (Week 7) - Leadership Skills: Coaching and Mentoring
INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(119, 'video', 'The Coach''s Toolkit: Essential Skills for Leaders', 'Coaching techniques for developing high-performing teams', 'https://www.youtube.com/watch?v=4jCjKGrZH0k', 19, 1, TRUE),
(119, 'pdf', 'Leadership Coaching and Mentoring Guide', 'Framework for effective coaching conversations and development', 'https://www.ccl.org/wp-content/uploads/2015/04/coaching-mentoring.pdf', 30, 2, TRUE),
(119, 'slides', 'The GROW Model for Coaching Leaders', 'Goal, Reality, Options, Will - structured coaching framework', 'https://www.performanceconsultants.com/grow-model', 26, 3, TRUE),
(119, 'article', 'What Great Coaches Do: The Mindsets and Behaviors', 'Research on effective coaching practices for leaders', 'https://hbr.org/2019/05/what-can-coaches-do-for-you', 35, 4, FALSE);

INSERT INTO resources (module_id, resource_type, title, description, file_url, duration_minutes, order_index, is_mandatory) VALUES
(120, 'video', 'Strategic Thinking: A Leader''s Most Important Skill', 'Michael Porter on competitive strategy and strategic positioning', 'https://www.youtube.com/watch?v=mYF2_FBCvXw', 23, 1, TRUE),
(120, 'pdf', 'The Practice of Strategic Leadership', 'Developing strategic thinking capabilities for organizational success', 'https://www.ccl.org/wp-content/uploads/2015/04/strategicLeadership.pdf', 38, 2, TRUE),
(120, 'slides', 'Creating and Communicating Vision', 'How leaders articulate compelling visions that inspire action', 'https://www.mindtools.com/community/pages/article/newLDR_90.php', 34, 3, TRUE),
(120, 'article', 'The Strategic Leader''s Roadmap', 'Building strategic capability across your organization', 'https://hbr.org/2005/03/strategic-leadership-the-essential-skills', 42, 4, FALSE);
