USE elearning_db;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE student_answers;
TRUNCATE TABLE answer_options;
TRUNCATE TABLE questions;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(1, 'What is psychology primarily defined as?', 'multiple_choice', 1.00, 1, 'Psychology is the scientific study of behavior and mental processes.'),
(1, 'Who established the first psychology laboratory in 1879?', 'multiple_choice', 1.00, 2, 'Wilhelm Wundt opened the first experimental psychology lab in Leipzig, Germany.'),
(1, 'The psychoanalytic perspective was founded by which theorist?', 'multiple_choice', 1.00, 3, 'Sigmund Freud developed psychoanalysis, emphasizing unconscious processes.'),
(1, 'Psychology is only concerned with abnormal behavior.', 'true_false', 1.00, 4, 'False. Psychology studies all aspects of human and animal behavior, normal and abnormal.'),
(1, 'Which approach emphasizes the role of unconscious conflicts?', 'multiple_choice', 1.00, 5, 'The psychoanalytic approach focuses on unconscious motivations and conflicts.'),
(1, 'What research method involves manipulating variables to determine cause and effect?', 'multiple_choice', 1.00, 6, 'Experiments allow researchers to establish causal relationships through controlled manipulation.'),
(1, 'Behaviorism focuses on internal mental states rather than observable behavior.', 'true_false', 1.00, 7, 'False. Behaviorism emphasizes observable, measurable behaviors rather than internal states.'),
(1, 'Which perspective emphasizes personal growth and self-actualization?', 'multiple_choice', 1.00, 8, 'The humanistic perspective focuses on human potential and personal growth.'),
(1, 'What term describes the study of how biology influences behavior?', 'multiple_choice', 1.00, 9, 'Biological psychology examines the relationship between brain, body, and behavior.'),
(1, 'The cognitive perspective in psychology emerged in the 1950s-1960s.', 'true_false', 1.00, 10, 'True. The cognitive revolution began in the mid-20th century as a response to behaviorism.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(1, 'The scientific study of behavior and mental processes', TRUE, 1),
(1, 'The treatment of mental disorders only', FALSE, 2),
(1, 'The study of paranormal phenomena', FALSE, 3),
(1, 'The philosophical analysis of consciousness', FALSE, 4),
(2, 'Sigmund Freud', FALSE, 1),
(2, 'Wilhelm Wundt', TRUE, 2),
(2, 'William James', FALSE, 3),
(2, 'John Watson', FALSE, 4),
(3, 'Sigmund Freud', TRUE, 1),
(3, 'B.F. Skinner', FALSE, 2),
(3, 'Carl Rogers', FALSE, 3),
(3, 'Ivan Pavlov', FALSE, 4),
(4, 'True', FALSE, 1),
(4, 'False', TRUE, 2),
(5, 'Behavioral approach', FALSE, 1),
(5, 'Psychoanalytic approach', TRUE, 2),
(5, 'Humanistic approach', FALSE, 3),
(5, 'Cognitive approach', FALSE, 4),
(6, 'Correlational study', FALSE, 1),
(6, 'Experiment', TRUE, 2),
(6, 'Naturalistic observation', FALSE, 3),
(6, 'Case study', FALSE, 4),
(7, 'True', FALSE, 1),
(7, 'False', TRUE, 2),
(8, 'Behavioral perspective', FALSE, 1),
(8, 'Humanistic perspective', TRUE, 2),
(8, 'Biological perspective', FALSE, 3),
(8, 'Evolutionary perspective', FALSE, 4),
(9, 'Cognitive psychology', FALSE, 1),
(9, 'Biological psychology', TRUE, 2),
(9, 'Social psychology', FALSE, 3),
(9, 'Developmental psychology', FALSE, 4),
(10, 'True', TRUE, 1),
(10, 'False', FALSE, 2);

-- ============================================
-- Quiz 2: Week 2 - Research Methods (quiz_id = 2)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(2, 'What is the primary goal of descriptive research methods?', 'multiple_choice', 1.00, 1, 'Descriptive research aims to observe and record behavior without manipulating variables.'),
(2, 'Which research method provides the strongest evidence for cause-and-effect relationships?', 'multiple_choice', 1.00, 2, 'Experimental methods allow researchers to establish causality through controlled manipulation.'),
(2, 'A correlation coefficient of +0.85 indicates:', 'multiple_choice', 1.00, 3, 'A correlation of +0.85 indicates a strong positive relationship between variables.'),
(2, 'In an experiment, the independent variable is measured by the researcher.', 'true_false', 1.00, 4, 'False. The independent variable is manipulated, while the dependent variable is measured.'),
(2, 'What is random assignment designed to control for in experimental research?', 'multiple_choice', 1.00, 5, 'Random assignment helps control for participant variables that could confound results.'),
(2, 'Which ethical principle requires that participants be informed about the research procedures?', 'multiple_choice', 1.00, 6, 'Informed consent ensures participants understand what the research involves before agreeing.'),
(2, 'Naturalistic observation always involves the researcher participating in the activities being studied.', 'true_false', 1.00, 7, 'False. Naturalistic observation can be either participant or non-participant.'),
(2, 'What is the purpose of using a double-blind procedure in research?', 'multiple_choice', 1.00, 8, 'Double-blind procedures prevent both participants and researchers from knowing group assignments.'),
(2, 'Which measure of central tendency is most affected by extreme scores?', 'multiple_choice', 1.00, 9, 'The mean is most sensitive to outliers because it uses all values in its calculation.'),
(2, 'A p-value of 0.03 indicates the results are statistically significant at the 0.05 level.', 'true_false', 1.00, 10, 'True. A p-value less than 0.05 indicates statistical significance.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(11, 'To describe behavior and mental processes', TRUE, 1),
(11, 'To explain cause-and-effect relationships', FALSE, 2),
(11, 'To predict future behaviors', FALSE, 3),
(11, 'To change problematic behaviors', FALSE, 4),
(12, 'Correlational studies', FALSE, 1),
(12, 'Experiments', TRUE, 2),
(12, 'Case studies', FALSE, 3),
(12, 'Surveys', FALSE, 4),
(13, 'A weak positive relationship', FALSE, 1),
(13, 'A strong positive relationship', TRUE, 2),
(13, 'No relationship', FALSE, 3),
(13, 'A strong negative relationship', FALSE, 4),
(14, 'True', FALSE, 1),
(14, 'False', TRUE, 2),
(15, 'Experimenter bias', FALSE, 1),
(15, 'Participant variables', TRUE, 2),
(15, 'Environmental conditions', FALSE, 3),
(15, 'Measurement error', FALSE, 4),
(16, 'Confidentiality', FALSE, 1),
(16, 'Informed consent', TRUE, 2),
(16, 'Debriefing', FALSE, 3),
(16, 'Random assignment', FALSE, 4),
(17, 'True', FALSE, 1),
(17, 'False', TRUE, 2),
(18, 'To increase statistical power', FALSE, 1),
(18, 'To prevent experimenter and participant bias', TRUE, 2),
(18, 'To ensure random sampling', FALSE, 3),
(18, 'To control for confounding variables', FALSE, 4),
(19, 'Mode', FALSE, 1),
(19, 'Median', FALSE, 2),
(19, 'Mean', TRUE, 3),
(19, 'Range', FALSE, 4),
(20, 'True', TRUE, 1),
(20, 'False', FALSE, 2);

-- ============================================
-- Quiz 3: Week 3 - Biological Psychology (quiz_id = 3)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(3, 'Which part of the neuron receives messages from other neurons?', 'multiple_choice', 1.00, 1, 'Dendrites are the branching extensions that receive neural impulses from other neurons.'),
(3, 'What is the function of myelin sheath?', 'multiple_choice', 1.00, 2, 'Myelin sheath insulates axons and speeds up neural transmission.'),
(3, 'The resting potential of a neuron is approximately:', 'multiple_choice', 1.00, 3, 'The resting membrane potential is typically around -70 millivolts.'),
(3, 'All neurons have the same basic structure and function.', 'true_false', 1.00, 4, 'False. Neurons vary in structure and function depending on their location and role.'),
(3, 'Which neurotransmitter is primarily involved in muscle movement and memory?', 'multiple_choice', 1.00, 5, 'Acetylcholine is crucial for muscle contraction and plays a role in learning and memory.'),
(3, 'What division of the nervous system controls involuntary bodily functions?', 'multiple_choice', 1.00, 6, 'The autonomic nervous system regulates involuntary physiological processes.'),
(3, 'The sympathetic nervous system is responsible for "rest and digest" functions.', 'true_false', 1.00, 7, 'False. The sympathetic nervous system controls "fight or flight" responses.'),
(3, 'Which brain structure is crucial for forming new memories?', 'multiple_choice', 1.00, 8, 'The hippocampus plays a vital role in memory formation and spatial navigation.'),
(3, 'What technique provides detailed images of brain structure using magnetic fields?', 'multiple_choice', 1.00, 9, 'MRI uses magnetic fields and radio waves to produce detailed structural images.'),
(3, 'Plasticity refers to the brain''s ability to change and adapt throughout life.', 'true_false', 1.00, 10, 'True. Neuroplasticity allows the brain to reorganize itself in response to experience.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(21, 'Axon', FALSE, 1),
(21, 'Dendrite', TRUE, 2),
(21, 'Cell body', FALSE, 3),
(21, 'Terminal button', FALSE, 4),
(22, 'To produce neurotransmitters', FALSE, 1),
(22, 'To speed up neural transmission', TRUE, 2),
(22, 'To receive signals', FALSE, 3),
(22, 'To generate action potentials', FALSE, 4),
(23, '-70 mV', TRUE, 1),
(23, '0 mV', FALSE, 2),
(23, '+40 mV', FALSE, 3),
(23, '-100 mV', FALSE, 4),
(24, 'True', FALSE, 1),
(24, 'False', TRUE, 2),
(25, 'Dopamine', FALSE, 1),
(25, 'Serotonin', FALSE, 2),
(25, 'Acetylcholine', TRUE, 3),
(25, 'GABA', FALSE, 4),
(26, 'Somatic nervous system', FALSE, 1),
(26, 'Autonomic nervous system', TRUE, 2),
(26, 'Central nervous system', FALSE, 3),
(26, 'Peripheral nervous system', FALSE, 4),
(27, 'True', FALSE, 1),
(27, 'False', TRUE, 2),
(28, 'Amygdala', FALSE, 1),
(28, 'Hippocampus', TRUE, 2),
(28, 'Cerebellum', FALSE, 3),
(28, 'Thalamus', FALSE, 4),
(29, 'EEG', FALSE, 1),
(29, 'PET scan', FALSE, 2),
(29, 'MRI', TRUE, 3),
(29, 'CT scan', FALSE, 4),
(30, 'True', TRUE, 1),
(30, 'False', FALSE, 2);

-- ============================================
-- Quiz 4: Week 4 - Sensation and Perception (quiz_id = 4)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(4, 'What is the process by which sensory receptors convert stimuli into neural impulses?', 'multiple_choice', 1.00, 1, 'Transduction is the conversion of physical energy into neural signals by sensory receptors.'),
(4, 'Which theory explains how we perceive different colors?', 'multiple_choice', 1.00, 2, 'The opponent-process theory explains color vision in terms of opposing color pairs.'),
(4, 'The absolute threshold refers to:', 'multiple_choice', 1.00, 3, 'The absolute threshold is the minimum stimulation needed to detect a stimulus 50% of the time.'),
(4, 'Sensation and perception refer to the same psychological process.', 'true_false', 1.00, 4, 'False. Sensation is detecting stimuli, while perception is interpreting sensory information.'),
(4, 'What principle explains why we perceive objects as maintaining constant size despite changing retinal images?', 'multiple_choice', 1.00, 5, 'Size constancy allows us to perceive objects as the same size despite distance changes.'),
(4, 'Which Gestalt principle explains how we group nearby objects together?', 'multiple_choice', 1.00, 6, 'The principle of proximity states that we group nearby figures together.'),
(4, 'Rods are responsible for color vision in bright light conditions.', 'true_false', 1.00, 7, 'False. Cones are responsible for color vision and function best in bright light.'),
(4, 'What is the vestibular sense responsible for detecting?', 'multiple_choice', 1.00, 8, 'The vestibular sense provides information about body position and movement.'),
(4, 'Which depth cue relies on the comparison of images from both eyes?', 'multiple_choice', 1.00, 9, 'Retinal disparity uses the slightly different images from each eye to perceive depth.'),
(4, 'Perceptual set influences how we interpret ambiguous stimuli.', 'true_false', 1.00, 10, 'True. Perceptual set refers to mental predispositions that influence what we perceive.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(31, 'Transduction', TRUE, 1),
(31, 'Perception', FALSE, 2),
(31, 'Sensation', FALSE, 3),
(31, 'Adaptation', FALSE, 4),
(32, 'Trichromatic theory', FALSE, 1),
(32, 'Opponent-process theory', TRUE, 2),
(32, 'Gate-control theory', FALSE, 3),
(32, 'Signal detection theory', FALSE, 4),
(33, 'The minimum difference between two stimuli', FALSE, 1),
(33, 'The minimum stimulation needed to detect a stimulus', TRUE, 2),
(33, 'The maximum stimulation we can detect', FALSE, 3),
(33, 'The point at which stimuli become painful', FALSE, 4),
(34, 'True', FALSE, 1),
(34, 'False', TRUE, 2),
(35, 'Shape constancy', FALSE, 1),
(35, 'Size constancy', TRUE, 2),
(35, 'Color constancy', FALSE, 3),
(35, 'Brightness constancy', FALSE, 4),
(36, 'Similarity', FALSE, 1),
(36, 'Closure', FALSE, 2),
(36, 'Proximity', TRUE, 3),
(36, 'Continuity', FALSE, 4),
(37, 'True', FALSE, 1),
(37, 'False', TRUE, 2),
(38, 'Temperature', FALSE, 1),
(38, 'Body position and movement', TRUE, 2),
(38, 'Pain', FALSE, 3),
(38, 'Touch', FALSE, 4),
(39, 'Linear perspective', FALSE, 1),
(39, 'Relative size', FALSE, 2),
(39, 'Retinal disparity', TRUE, 3),
(39, 'Texture gradient', FALSE, 4),
(40, 'True', TRUE, 1),
(40, 'False', FALSE, 2);

-- ============================================
-- Quiz 5: Week 5 - Learning and Conditioning (quiz_id = 5)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(5, 'In classical conditioning, what is the initial stimulus that elicits a natural response?', 'multiple_choice', 1.00, 1, 'The unconditioned stimulus naturally and automatically triggers a response.'),
(5, 'What is the process of gradually learning a behavior through reinforcement called?', 'multiple_choice', 1.00, 2, 'Shaping involves reinforcing successive approximations toward a target behavior.'),
(5, 'Negative reinforcement involves:', 'multiple_choice', 1.00, 3, 'Negative reinforcement increases behavior by removing an aversive stimulus.'),
(5, 'Classical conditioning involves voluntary behaviors while operant conditioning involves involuntary responses.', 'true_false', 1.00, 4, 'False. Classical conditioning involves involuntary responses, operant involves voluntary behaviors.'),
(5, 'Which schedule of reinforcement produces the highest response rate?', 'multiple_choice', 1.00, 5, 'Variable ratio schedules produce high, steady response rates with resistance to extinction.'),
(5, 'What is the process of learning by watching others called?', 'multiple_choice', 1.00, 6, 'Observational learning occurs through observing and imitating others'' behaviors.'),
(5, 'Extinction in classical conditioning occurs when the CS is presented without the UCS.', 'true_false', 1.00, 7, 'True. Extinction happens when the conditioned stimulus no longer predicts the unconditioned stimulus.'),
(5, 'Which psychologist is most associated with operant conditioning?', 'multiple_choice', 1.00, 8, 'B.F. Skinner developed the principles of operant conditioning using his Skinner box.'),
(5, 'What is the term for learning that occurs but is not demonstrated until there is incentive to do so?', 'multiple_choice', 1.00, 9, 'Latent learning remains hidden until there is motivation to demonstrate it.'),
(5, 'Punishment always decreases the frequency of a behavior.', 'true_false', 1.00, 10, 'False. Punishment can have unintended consequences and may not always effectively reduce behavior.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(41, 'Conditioned stimulus', FALSE, 1),
(41, 'Unconditioned stimulus', TRUE, 2),
(41, 'Neutral stimulus', FALSE, 3),
(41, 'Conditioned response', FALSE, 4),
(42, 'Chaining', FALSE, 1),
(42, 'Shaping', TRUE, 2),
(42, 'Modeling', FALSE, 3),
(42, 'Prompting', FALSE, 4),
(43, 'Adding an unpleasant stimulus', FALSE, 1),
(43, 'Removing a pleasant stimulus', FALSE, 2),
(43, 'Removing an aversive stimulus', TRUE, 3),
(43, 'Adding a pleasant stimulus', FALSE, 4),
(44, 'True', FALSE, 1),
(44, 'False', TRUE, 2),
(45, 'Fixed ratio', FALSE, 1),
(45, 'Fixed interval', FALSE, 2),
(45, 'Variable ratio', TRUE, 3),
(45, 'Variable interval', FALSE, 4),
(46, 'Social learning', FALSE, 1),
(46, 'Observational learning', TRUE, 2),
(46, 'Cognitive learning', FALSE, 3),
(46, 'Associative learning', FALSE, 4),
(47, 'True', TRUE, 1),
(47, 'False', FALSE, 2),
(48, 'Ivan Pavlov', FALSE, 1),
(48, 'John Watson', FALSE, 2),
(48, 'B.F. Skinner', TRUE, 3),
(48, 'Albert Bandura', FALSE, 4),
(49, 'Insight learning', FALSE, 1),
(49, 'Observational learning', FALSE, 2),
(49, 'Latent learning', TRUE, 3),
(49, 'Cognitive learning', FALSE, 4),
(50, 'True', FALSE, 1),
(50, 'False', TRUE, 2);

-- ============================================
-- Quiz 6: Week 6 - Memory and Cognition (quiz_id = 6)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(6, 'Which memory system has the largest capacity but shortest duration?', 'multiple_choice', 1.00, 1, 'Sensory memory can hold vast amounts of information but only for a very brief period.'),
(6, 'What is the process of getting information into memory called?', 'multiple_choice', 1.00, 2, 'Encoding is the initial learning and processing of information into the memory system.'),
(6, 'The serial position effect demonstrates that we remember:', 'multiple_choice', 1.00, 3, 'The serial position effect shows better recall for items at the beginning and end of a list.'),
(6, 'Short-term memory can hold about 7±2 items for up to 30 seconds.', 'true_false', 1.00, 4, 'True. This is the classic capacity and duration of short-term memory.'),
(6, 'Which type of memory involves skills and procedures rather than facts?', 'multiple_choice', 1.00, 5, 'Procedural memory involves knowing how to do things, like riding a bike.'),
(6, 'What is the main cause of forgetting in short-term memory?', 'multiple_choice', 1.00, 6, 'Decay theory suggests memories fade over time without rehearsal.'),
(6, 'Flashbulb memories are always accurate and detailed.', 'true_false', 1.00, 7, 'False. Flashbulb memories feel vivid but can be inaccurate and change over time.'),
(6, 'Which memory strategy involves organizing information into familiar units?', 'multiple_choice', 1.00, 8, 'Chunking organizes information into meaningful units to improve memory capacity.'),
(6, 'What is the inability to form new memories called?', 'multiple_choice', 1.00, 9, 'Anterograde amnesia involves difficulty forming new memories after brain injury.'),
(6, 'Deep processing during encoding leads to better long-term retention.', 'true_false', 1.00, 10, 'True. Processing information meaningfully improves long-term memory storage.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(51, 'Sensory memory', TRUE, 1),
(51, 'Short-term memory', FALSE, 2),
(51, 'Long-term memory', FALSE, 3),
(51, 'Working memory', FALSE, 4),
(52, 'Encoding', TRUE, 1),
(52, 'Storage', FALSE, 2),
(52, 'Retrieval', FALSE, 3),
(52, 'Processing', FALSE, 4),
(53, 'Only the first items', FALSE, 1),
(53, 'Only the last items', FALSE, 2),
(53, 'Items at the beginning and end', TRUE, 3),
(53, 'Only middle items', FALSE, 4),
(54, 'True', TRUE, 1),
(54, 'False', FALSE, 2),
(55, 'Episodic memory', FALSE, 1),
(55, 'Semantic memory', FALSE, 2),
(55, 'Procedural memory', TRUE, 3),
(55, 'Declarative memory', FALSE, 4),
(56, 'Interference', FALSE, 1),
(56, 'Decay', TRUE, 2),
(56, 'Retrieval failure', FALSE, 3),
(56, 'Motivated forgetting', FALSE, 4),
(57, 'True', FALSE, 1),
(57, 'False', TRUE, 2),
(58, 'Mnemonics', FALSE, 1),
(58, 'Rehearsal', FALSE, 2),
(58, 'Chunking', TRUE, 3),
(58, 'Elaboration', FALSE, 4),
(59, 'Retrograde amnesia', FALSE, 1),
(59, 'Anterograde amnesia', TRUE, 2),
(59, 'Infantile amnesia', FALSE, 3),
(59, 'Source amnesia', FALSE, 4),
(60, 'True', TRUE, 1),
(60, 'False', FALSE, 2);

-- ============================================
-- Quiz 7: Week 7 - Developmental Psychology (quiz_id = 7)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(7, 'According to Piaget, what is the first stage of cognitive development?', 'multiple_choice', 1.00, 1, 'The sensorimotor stage (birth to 2 years) involves learning through senses and actions.'),
(7, 'Which parenting style is characterized by high demands and low responsiveness?', 'multiple_choice', 1.00, 2, 'Authoritarian parenting involves strict rules with little explanation or warmth.'),
(7, 'What is the term for the emotional bond between infant and caregiver?', 'multiple_choice', 1.00, 3, 'Attachment refers to the strong emotional connection between child and caregiver.'),
(7, 'Development occurs in distinct stages rather than continuously.', 'true_false', 1.00, 4, 'This is debated. Some theories propose stages (Piaget), others continuous development.'),
(7, 'According to Erikson, what is the primary conflict of adolescence?', 'multiple_choice', 1.00, 5, 'Identity vs. Role Confusion is Erikson''s stage for adolescence (12-18 years).'),
(7, 'Which type of development involves thinking, reasoning, and problem-solving?', 'multiple_choice', 1.00, 6, 'Cognitive development encompasses changes in mental processes and abilities.'),
(7, 'Object permanence develops during the preoperational stage.', 'true_false', 1.00, 7, 'False. Object permanence develops during the sensorimotor stage.'),
(7, 'What is the term for decreasing responsiveness to a repeated stimulus?', 'multiple_choice', 1.00, 8, 'Habituation refers to reduced response to familiar stimuli over time.'),
(7, 'Which theorist proposed the ecological systems theory of development?', 'multiple_choice', 1.00, 9, 'Urie Bronfenbrenner developed the ecological systems theory.'),
(7, 'Adolescent egocentrism involves the imaginary audience and personal fable.', 'true_false', 1.00, 10, 'True. These are key components of adolescent egocentric thinking.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(61, 'Sensorimotor stage', TRUE, 1),
(61, 'Preoperational stage', FALSE, 2),
(61, 'Concrete operational stage', FALSE, 3),
(61, 'Formal operational stage', FALSE, 4),
(62, 'Authoritative', FALSE, 1),
(62, 'Authoritarian', TRUE, 2),
(62, 'Permissive', FALSE, 3),
(62, 'Uninvolved', FALSE, 4),
(63, 'Bonding', FALSE, 1),
(63, 'Attachment', TRUE, 2),
(63, 'Connection', FALSE, 3),
(63, 'Relationship', FALSE, 4),
(64, 'True', FALSE, 1),
(64, 'False', TRUE, 2),
(65, 'Trust vs. Mistrust', FALSE, 1),
(65, 'Autonomy vs. Shame', FALSE, 2),
(65, 'Initiative vs. Guilt', FALSE, 3),
(65, 'Identity vs. Role Confusion', TRUE, 4),
(66, 'Physical development', FALSE, 1),
(66, 'Cognitive development', TRUE, 2),
(66, 'Social development', FALSE, 3),
(66, 'Emotional development', FALSE, 4),
(67, 'True', FALSE, 1),
(67, 'False', TRUE, 2),
(68, 'Accommodation', FALSE, 1),
(68, 'Assimilation', FALSE, 2),
(68, 'Habituation', TRUE, 3),
(68, 'Adaptation', FALSE, 4),
(69, 'Jean Piaget', FALSE, 1),
(69, 'Erik Erikson', FALSE, 2),
(69, 'Urie Bronfenbrenner', TRUE, 3),
(69, 'Lawrence Kohlberg', FALSE, 4),
(70, 'True', TRUE, 1),
(70, 'False', FALSE, 2);

-- ============================================
-- Quiz 8: Week 8 - Social Psychology (quiz_id = 8)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(8, 'What is the fundamental attribution error?', 'multiple_choice', 1.00, 1, 'The tendency to overestimate dispositional factors and underestimate situational factors when judging others.'),
(8, 'Which phenomenon involves reduced effort in group tasks?', 'multiple_choice', 1.00, 2, 'Social loafing occurs when individuals exert less effort in group settings.'),
(8, 'Cognitive dissonance theory explains:', 'multiple_choice', 1.00, 3, 'Cognitive dissonance is the discomfort from holding conflicting beliefs or attitudes.'),
(8, 'Conformity always leads to negative outcomes.', 'true_false', 1.00, 4, 'False. Conformity can be adaptive and help maintain social order.'),
(8, 'What is the bystander effect?', 'multiple_choice', 1.00, 5, 'The bystander effect is the decreased likelihood to help when others are present.'),
(8, 'Which type of love involves intimacy, passion, and commitment?', 'multiple_choice', 1.00, 6, 'Consummate love includes all three components of Sternberg''s triangular theory.'),
(8, 'Prejudice refers to actions while discrimination refers to attitudes.', 'true_false', 1.00, 7, 'False. Prejudice involves attitudes, discrimination involves behaviors.'),
(8, 'What is the just-world hypothesis?', 'multiple_choice', 1.00, 8, 'The belief that people get what they deserve and deserve what they get.'),
(8, 'Which compliance technique involves starting with a small request?', 'multiple_choice', 1.00, 9, 'The foot-in-the-door technique begins with a small request to gain compliance with larger ones.'),
(8, 'Deindividuation can lead to reduced self-awareness in group situations.', 'true_false', 1.00, 10, 'True. Deindividuation involves loss of self-awareness in groups, leading to altered behavior.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(71, 'Overestimating situational factors', FALSE, 1),
(71, 'Overestimating personality factors', TRUE, 2),
(71, 'Underestimating both factors', FALSE, 3),
(71, 'Accurately judging both factors', FALSE, 4),
(72, 'Groupthink', FALSE, 1),
(72, 'Social loafing', TRUE, 2),
(72, 'Deindividuation', FALSE, 3),
(72, 'Obedience', FALSE, 4),
(73, 'How attitudes influence behavior', FALSE, 1),
(73, 'The discomfort from inconsistent beliefs', TRUE, 2),
(73, 'How groups make decisions', FALSE, 3),
(73, 'How we form impressions', FALSE, 4),
(74, 'True', FALSE, 1),
(74, 'False', TRUE, 2),
(75, 'Helping only familiar people', FALSE, 1),
(75, 'Reduced helping in groups', TRUE, 2),
(75, 'Helping only when rewarded', FALSE, 3),
(75, 'Helping only in emergencies', FALSE, 4),
(76, 'Romantic love', FALSE, 1),
(76, 'Companionate love', FALSE, 2),
(76, 'Consummate love', TRUE, 3),
(76, 'Infatuation', FALSE, 4),
(77, 'True', FALSE, 1),
(77, 'False', TRUE, 2),
(78, 'Belief in fairness', TRUE, 1),
(78, 'Belief in karma', FALSE, 2),
(78, 'Belief in destiny', FALSE, 3),
(78, 'Belief in equality', FALSE, 4),
(79, 'Door-in-the-face', FALSE, 1),
(79, 'Foot-in-the-door', TRUE, 2),
(79, 'Low-ball technique', FALSE, 3),
(79, 'That''s-not-all', FALSE, 4),
(80, 'True', TRUE, 1),
(80, 'False', FALSE, 2);

-- ============================================
-- COURSE 2: COGNITIVE PSYCHOLOGY
-- ============================================

-- Quiz 9: Week 1 - Foundations (quiz_id = 9)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(9, 'What is cognitive psychology primarily concerned with?', 'multiple_choice', 1.00, 1, 'Cognitive psychology studies mental processes including how people think, perceive, remember, and learn.'),
(9, 'Which approach marked the beginning of the cognitive revolution in psychology?', 'multiple_choice', 1.00, 2, 'The information-processing approach compared the mind to a computer, focusing on how information is processed.'),
(9, 'What is the term for mental frameworks that help organize and interpret information?', 'multiple_choice', 1.00, 3, 'Schemas are cognitive frameworks that help organize and interpret information in our environment.'),
(9, 'Cognitive psychology emerged as a response to behaviorism.', 'true_false', 1.00, 4, 'True. Cognitive psychology developed in reaction to behaviorism''s focus on observable behavior while ignoring mental processes.'),
(9, 'Which research method involves measuring reaction times to study mental processes?', 'multiple_choice', 1.00, 5, 'Mental chronometry measures the time course of mental operations through reaction time experiments.'),
(9, 'What does the term "cognition" encompass?', 'multiple_choice', 1.00, 6, 'Cognition includes all mental activities associated with thinking, knowing, remembering, and communicating.'),
(9, 'The first cognitive psychology laboratory was established by Wilhelm Wundt.', 'true_false', 1.00, 7, 'True. Wundt established the first psychology lab in 1879 and focused on studying conscious thought.'),
(9, 'Which concept refers to the limited capacity of our mental systems?', 'multiple_choice', 1.00, 8, 'Cognitive load refers to the total amount of mental effort being used in working memory.'),
(9, 'What is the primary goal of cognitive neuroscience?', 'multiple_choice', 1.00, 9, 'Cognitive neuroscience aims to understand how brain function enables cognitive processes.'),
(9, 'Top-down processing uses sensory information to build up to perception.', 'true_false', 1.00, 10, 'False. Top-down processing uses prior knowledge and expectations to interpret sensory information.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(81, 'Observable behaviors only', FALSE, 1),
(81, 'Unconscious motivations', FALSE, 2),
(81, 'Mental processes like thinking and memory', TRUE, 3),
(81, 'Biological influences on behavior', FALSE, 4),
(82, 'Psychoanalytic approach', FALSE, 1),
(82, 'Humanistic approach', FALSE, 2),
(82, 'Information-processing approach', TRUE, 3),
(82, 'Biological approach', FALSE, 4),
(83, 'Heuristics', FALSE, 1),
(83, 'Algorithms', FALSE, 2),
(83, 'Schemas', TRUE, 3),
(83, 'Prototypes', FALSE, 4),
(84, 'True', TRUE, 1),
(84, 'False', FALSE, 2),
(85, 'Neuroimaging', FALSE, 1),
(85, 'Mental chronometry', TRUE, 2),
(85, 'Introspection', FALSE, 3),
(85, 'Behavioral observation', FALSE, 4),
(86, 'Only logical reasoning', FALSE, 1),
(86, 'Only memory processes', FALSE, 2),
(86, 'All mental activities related to knowledge', TRUE, 3),
(86, 'Only conscious thought processes', FALSE, 4),
(87, 'True', TRUE, 1),
(87, 'False', FALSE, 2),
(88, 'Cognitive capacity', FALSE, 1),
(88, 'Mental energy', FALSE, 2),
(88, 'Cognitive load', TRUE, 3),
(88, 'Processing speed', FALSE, 4),
(89, 'To study behavior in natural settings', FALSE, 1),
(89, 'To understand brain-cognition relationships', TRUE, 2),
(89, 'To analyze unconscious processes', FALSE, 3),
(89, 'To measure observable responses', FALSE, 4),
(90, 'True', FALSE, 1),
(90, 'False', TRUE, 2);

-- ============================================
-- Quiz 10: Week 2 - Attention (quiz_id = 10)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(10, 'What is selective attention?', 'multiple_choice', 1.00, 1, 'Selective attention allows us to focus on specific stimuli while ignoring others.'),
(10, 'The cocktail party effect demonstrates our ability to:', 'multiple_choice', 1.00, 2, 'The cocktail party effect shows we can focus on one conversation while monitoring others for important information.'),
(10, 'Which model proposes that we filter information early in processing?', 'multiple_choice', 1.00, 3, 'Broadbent''s early selection model suggests we filter out unattended information at an early stage.'),
(10, 'Divided attention allows us to perfectly perform multiple tasks simultaneously.', 'true_false', 1.00, 4, 'False. Divided attention has limits and often leads to decreased performance on all tasks.'),
(10, 'What is inattentional blindness?', 'multiple_choice', 1.00, 5, 'Inattentional blindness occurs when we fail to notice unexpected objects because our attention is engaged elsewhere.'),
(10, 'Which brain network is primarily involved in sustained attention?', 'multiple_choice', 1.00, 6, 'The frontoparietal network plays a key role in maintaining attention over time.'),
(10, 'Automatic processes require conscious effort and attention.', 'true_false', 1.00, 7, 'False. Automatic processes occur without conscious effort and don''t require attention.'),
(10, 'What does the Stroop effect demonstrate about attention?', 'multiple_choice', 1.00, 8, 'The Stroop effect shows how automatic processing (reading words) can interfere with controlled processing (naming colors).'),
(10, 'Which phenomenon involves failing to notice changes in visual scenes?', 'multiple_choice', 1.00, 9, 'Change blindness refers to the difficulty in detecting changes in visual scenes.'),
(10, 'Feature integration theory explains how we combine different features to perceive objects.', 'true_false', 1.00, 10, 'True. This theory describes how attention helps bind different features into unified objects.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(91, 'Focusing on multiple stimuli equally', FALSE, 1),
(91, 'Focusing on specific stimuli while ignoring others', TRUE, 2),
(91, 'Switching between tasks rapidly', FALSE, 3),
(91, 'Maintaining focus over long periods', FALSE, 4),
(92, 'Ignore all background noise', FALSE, 1),
(92, 'Focus on our name in other conversations', TRUE, 2),
(92, 'Remember all conversations equally', FALSE, 3),
(92, 'Process all auditory information', FALSE, 4),
(93, 'Late selection model', FALSE, 1),
(93, 'Early selection model', TRUE, 2),
(93, 'Attenuation model', FALSE, 3),
(93, 'Capacity model', FALSE, 4),
(94, 'True', FALSE, 1),
(94, 'False', TRUE, 2),
(95, 'Intentional ignoring of stimuli', FALSE, 1),
(95, 'Failure to notice unexpected objects', TRUE, 2),
(95, 'Inability to divide attention', FALSE, 3),
(95, 'Forgetting attended information', FALSE, 4),
(96, 'Default mode network', FALSE, 1),
(96, 'Frontoparietal network', TRUE, 2),
(96, 'Limbic system', FALSE, 3),
(96, 'Visual cortex', FALSE, 4),
(97, 'True', FALSE, 1),
(97, 'False', TRUE, 2),
(98, 'The speed of attention shifts', FALSE, 1),
(98, 'Interference between automatic and controlled processes', TRUE, 2),
(98, 'The capacity of working memory', FALSE, 3),
(98, 'The duration of sustained attention', FALSE, 4),
(99, 'Inattentional blindness', FALSE, 1),
(99, 'Change blindness', TRUE, 2),
(99, 'Selective attention', FALSE, 3),
(99, 'Divided attention', FALSE, 4),
(100, 'True', TRUE, 1),
(100, 'False', FALSE, 2);

-- ============================================
-- Quiz 11: Week 3 - Pattern Recognition (quiz_id = 11)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(11, 'What is pattern recognition?', 'multiple_choice', 1.00, 1, 'Pattern recognition involves identifying and interpreting sensory information by matching it to stored knowledge.'),
(11, 'Which theory suggests we recognize patterns by comparing them to templates?', 'multiple_choice', 1.00, 2, 'Template matching theory proposes we store exact templates and match incoming patterns to them.'),
(11, 'What are geons in recognition-by-components theory?', 'multiple_choice', 1.00, 3, 'Geons are basic 3D shapes that combine to form object representations.'),
(11, 'Bottom-up processing is driven solely by sensory input.', 'true_false', 1.00, 4, 'True. Bottom-up processing begins with sensory input and builds up to perception.'),
(11, 'Which phenomenon demonstrates that context influences pattern recognition?', 'multiple_choice', 1.00, 5, 'The word superiority effect shows that letters are recognized better in words than in isolation, demonstrating context effects.'),
(11, 'What does feature detection theory propose?', 'multiple_choice', 1.00, 6, 'Feature detection theory suggests we recognize patterns by identifying their individual features.'),
(11, 'Prototype matching requires exact matches to stored patterns.', 'true_false', 1.00, 7, 'False. Prototype matching allows for recognition based on similarity to an average representation.'),
(11, 'Which brain area is crucial for facial recognition?', 'multiple_choice', 1.00, 8, 'The fusiform face area specializes in facial recognition and processing.'),
(11, 'What is the phenomenon where we perceive complete figures even when parts are missing?', 'multiple_choice', 1.00, 9, 'Closure is a Gestalt principle where we perceive complete figures despite gaps.'),
(11, 'Top-down processing can lead to errors in pattern recognition when expectations are wrong.', 'true_false', 1.00, 10, 'True. Incorrect expectations in top-down processing can cause misperceptions.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(101, 'Remembering sequences', FALSE, 1),
(101, 'Identifying and interpreting sensory information', TRUE, 2),
(101, 'Creating mental images', FALSE, 3),
(101, 'Solving visual puzzles', FALSE, 4),
(102, 'Prototype theory', FALSE, 1),
(102, 'Template matching theory', TRUE, 2),
(102, 'Feature detection theory', FALSE, 3),
(102, 'Recognition-by-components theory', FALSE, 4),
(103, 'Basic visual features', FALSE, 1),
(103, '2D shapes', FALSE, 2),
(103, 'Basic 3D shapes', TRUE, 3),
(103, 'Neural patterns', FALSE, 4),
(104, 'True', TRUE, 1),
(104, 'False', FALSE, 2),
(105, 'Stroop effect', FALSE, 1),
(105, 'Word superiority effect', TRUE, 2),
(105, 'Cocktail party effect', FALSE, 3),
(105, 'McGurk effect', FALSE, 4),
(106, 'We match to perfect templates', FALSE, 1),
(106, 'We identify individual features', TRUE, 2),
(106, 'We use 3D components', FALSE, 3),
(106, 'We compare to averages', FALSE, 4),
(107, 'True', FALSE, 1),
(107, 'False', TRUE, 2),
(108, 'Primary visual cortex', FALSE, 1),
(108, 'Fusiform face area', TRUE, 2),
(108, 'Prefrontal cortex', FALSE, 3),
(108, 'Hippocampus', FALSE, 4),
(109, 'Similarity', FALSE, 1),
(109, 'Proximity', FALSE, 2),
(109, 'Closure', TRUE, 3),
(109, 'Continuity', FALSE, 4),
(110, 'True', TRUE, 1),
(110, 'False', FALSE, 2);

-- ============================================
-- Quiz 12: Week 4 - Memory Systems (quiz_id = 12)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(12, 'Which memory system has the briefest duration?', 'multiple_choice', 1.00, 1, 'Sensory memory lasts only a few seconds at most before information decays.'),
(12, 'What is the capacity of working memory according to Miller''s research?', 'multiple_choice', 1.00, 2, 'Miller proposed that working memory can hold 7±2 items, though more recent research suggests 4±1.'),
(12, 'Which type of long-term memory involves facts and knowledge?', 'multiple_choice', 1.00, 3, 'Semantic memory stores general knowledge and facts about the world.'),
(12, 'Procedural memory is a type of declarative memory.', 'true_false', 1.00, 4, 'False. Procedural memory is non-declarative and involves skills and procedures.'),
(12, 'What is the primary function of the phonological loop?', 'multiple_choice', 1.00, 5, 'The phonological loop processes and temporarily stores auditory and verbal information.'),
(12, 'Which brain structure is crucial for forming new declarative memories?', 'multiple_choice', 1.00, 6, 'The hippocampus plays a vital role in consolidating new declarative memories.'),
(12, 'Episodic memory stores information about how to perform tasks.', 'true_false', 1.00, 7, 'False. Episodic memory stores personal experiences and events.'),
(12, 'What is the process of transferring information from working memory to long-term memory?', 'multiple_choice', 1.00, 8, 'Encoding involves processing information for storage in long-term memory.'),
(12, 'Which component of working memory manages attention and coordinates subsystems?', 'multiple_choice', 1.00, 9, 'The central executive controls attention and coordinates the phonological loop and visuospatial sketchpad.'),
(12, 'Long-term potentiation is believed to be the neural basis for memory formation.', 'true_false', 1.00, 10, 'True. LTP involves strengthening synaptic connections and is crucial for memory storage.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(111, 'Sensory memory', TRUE, 1),
(111, 'Working memory', FALSE, 2),
(111, 'Long-term memory', FALSE, 3),
(111, 'Procedural memory', FALSE, 4),
(112, '3±1 items', FALSE, 1),
(112, '7±2 items', TRUE, 2),
(112, '10±3 items', FALSE, 3),
(112, 'Unlimited capacity', FALSE, 4),
(113, 'Episodic memory', FALSE, 1),
(113, 'Procedural memory', FALSE, 2),
(113, 'Semantic memory', TRUE, 3),
(113, 'Working memory', FALSE, 4),
(114, 'True', FALSE, 1),
(114, 'False', TRUE, 2),
(115, 'Process visual information', FALSE, 1),
(115, 'Process auditory information', TRUE, 2),
(115, 'Coordinate attention', FALSE, 3),
(115, 'Store long-term memories', FALSE, 4),
(116, 'Amygdala', FALSE, 1),
(116, 'Cerebellum', FALSE, 2),
(116, 'Hippocampus', TRUE, 3),
(116, 'Prefrontal cortex', FALSE, 4),
(117, 'True', FALSE, 1),
(117, 'False', TRUE, 2),
(118, 'Consolidation', FALSE, 1),
(118, 'Encoding', TRUE, 2),
(118, 'Retrieval', FALSE, 3),
(118, 'Storage', FALSE, 4),
(119, 'Phonological loop', FALSE, 1),
(119, 'Visuospatial sketchpad', FALSE, 2),
(119, 'Central executive', TRUE, 3),
(119, 'Episodic buffer', FALSE, 4),
(120, 'True', TRUE, 1),
(120, 'False', FALSE, 2);

-- ============================================
-- Quiz 13: Week 5 - Knowledge Representation (quiz_id = 13)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(13, 'What are mental representations?', 'multiple_choice', 1.00, 1, 'Mental representations are internal symbols that stand for objects, events, or ideas.'),
(13, 'Which type of concept has clearly defined rules for membership?', 'multiple_choice', 1.00, 2, 'Artificial concepts have precise definitions and clear boundaries for membership.'),
(13, 'What is a prototype in conceptual knowledge?', 'multiple_choice', 1.00, 3, 'A prototype is the most typical or representative example of a category.'),
(13, 'All concepts have clear boundaries and defining features.', 'true_false', 1.00, 4, 'False. Many natural concepts have fuzzy boundaries and no single defining feature.'),
(13, 'Which model represents knowledge as interconnected nodes?', 'multiple_choice', 1.00, 5, 'Semantic network models represent knowledge as interconnected nodes in a network.'),
(13, 'What is the basic unit of knowledge in a semantic network?', 'multiple_choice', 1.00, 6, 'Nodes represent concepts or ideas in semantic network models.'),
(13, 'Spreading activation explains how related concepts become activated in memory.', 'true_false', 1.00, 7, 'True. Activation spreads from one node to related nodes in semantic networks.'),
(13, 'Which theory suggests we organize knowledge in mental frameworks?', 'multiple_choice', 1.00, 8, 'Schema theory proposes we organize knowledge in mental frameworks that represent our understanding.'),
(13, 'What are scripts in knowledge representation?', 'multiple_choice', 1.00, 9, 'Scripts are schemas for routine activities or events that specify typical sequences of actions.'),
(13, 'Exemplar theory suggests we categorize objects by comparing them to all stored examples.', 'true_false', 1.00, 10, 'True. Exemplar theory proposes we use specific stored examples rather than abstract prototypes.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(121, 'External symbols', FALSE, 1),
(121, 'Internal symbols for objects and ideas', TRUE, 2),
(121, 'Brain structures', FALSE, 3),
(121, 'Sensory experiences', FALSE, 4),
(122, 'Natural concepts', FALSE, 1),
(122, 'Artificial concepts', TRUE, 2),
(122, 'Fuzzy concepts', FALSE, 3),
(122, 'Basic-level concepts', FALSE, 4),
(123, 'The first example learned', FALSE, 1),
(123, 'The most typical example', TRUE, 2),
(123, 'The most recent example', FALSE, 3),
(123, 'The most complex example', FALSE, 4),
(124, 'True', FALSE, 1),
(124, 'False', TRUE, 2),
(125, 'Prototype model', FALSE, 1),
(125, 'Semantic network model', TRUE, 2),
(125, 'Exemplar model', FALSE, 3),
(125, 'Feature model', FALSE, 4),
(126, 'Links', FALSE, 1),
(126, 'Nodes', TRUE, 2),
(126, 'Schemas', FALSE, 3),
(126, 'Prototypes', FALSE, 4),
(127, 'True', TRUE, 1),
(127, 'False', FALSE, 2),
(128, 'Prototype theory', FALSE, 1),
(128, 'Schema theory', TRUE, 2),
(128, 'Exemplar theory', FALSE, 3),
(128, 'Network theory', FALSE, 4),
(129, 'Written documents', FALSE, 1),
(129, 'Event sequences in memory', TRUE, 2),
(129, 'Mental images', FALSE, 3),
(129, 'Verbal descriptions', FALSE, 4),
(130, 'True', TRUE, 1),
(130, 'False', FALSE, 2);

-- ============================================
-- Quiz 14: Week 6 - Language Processing (quiz_id = 14)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(14, 'What are the smallest units of meaning in language?', 'multiple_choice', 1.00, 1, 'Morphemes are the smallest meaningful units in language, including words and word parts.'),
(14, 'Which brain area is primarily associated with language production?', 'multiple_choice', 1.00, 2, 'Broca''s area in the left frontal lobe is crucial for speech production and grammar.'),
(14, 'What is syntax in language?', 'multiple_choice', 1.00, 3, 'Syntax refers to the rules for combining words into grammatically correct sentences.'),
(14, 'All languages share the same basic grammatical structure.', 'true_false', 1.00, 4, 'False. Languages vary significantly in their grammatical structures and rules.'),
(14, 'What does the critical period hypothesis propose about language acquisition?', 'multiple_choice', 1.00, 5, 'The critical period hypothesis suggests there is an optimal window for language acquisition in early childhood.'),
(14, 'Which theory suggests we learn language through reinforcement and imitation?', 'multiple_choice', 1.00, 6, 'Behaviorist theory, associated with Skinner, emphasizes reinforcement and imitation in language learning.'),
(14, 'Wernicke''s area is primarily involved in language comprehension.', 'true_false', 1.00, 7, 'True. Wernicke''s area in the left temporal lobe is crucial for understanding language.'),
(14, 'What is the term for the meaning derived from words and sentences?', 'multiple_choice', 1.00, 8, 'Semantics refers to the meaning of words, phrases, and sentences in language.'),
(14, 'Which phenomenon demonstrates that context influences word recognition?', 'multiple_choice', 1.00, 9, 'Semantic priming shows that processing a word is faster when it follows a related word.'),
(14, 'Universal grammar theory proposes that all humans are born with innate language structures.', 'true_false', 1.00, 10, 'True. Chomsky proposed that humans have an innate biological capacity for language acquisition.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(131, 'Phonemes', FALSE, 1),
(131, 'Morphemes', TRUE, 2),
(131, 'Words', FALSE, 3),
(131, 'Sentences', FALSE, 4),
(132, 'Wernicke''s area', FALSE, 1),
(132, 'Broca''s area', TRUE, 2),
(132, 'Angular gyrus', FALSE, 3),
(132, 'Primary auditory cortex', FALSE, 4),
(133, 'Word meanings', FALSE, 1),
(133, 'Speech sounds', FALSE, 2),
(133, 'Sentence structure', TRUE, 3),
(133, 'Social use of language', FALSE, 4),
(134, 'True', FALSE, 1),
(134, 'False', TRUE, 2),
(135, 'Language learning is continuous', FALSE, 1),
(135, 'There is an optimal period for language acquisition', TRUE, 2),
(135, 'Adults learn languages better', FALSE, 3),
(135, 'Multiple languages confuse children', FALSE, 4),
(136, 'Nativist theory', FALSE, 1),
(136, 'Cognitive theory', FALSE, 2),
(136, 'Behaviorist theory', TRUE, 3),
(136, 'Interactionist theory', FALSE, 4),
(137, 'True', TRUE, 1),
(137, 'False', FALSE, 2),
(138, 'Syntax', FALSE, 1),
(138, 'Pragmatics', FALSE, 2),
(138, 'Semantics', TRUE, 3),
(138, 'Phonology', FALSE, 4),
(139, 'Syntactic priming', FALSE, 1),
(139, 'Semantic priming', TRUE, 2),
(139, 'Phonological priming', FALSE, 3),
(139, 'Contextual priming', FALSE, 4),
(140, 'True', TRUE, 1),
(140, 'False', FALSE, 2);

-- ============================================
-- Quiz 15: Week 7 - Problem Solving (quiz_id = 15)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(15, 'What is the initial state in problem solving?', 'multiple_choice', 1.00, 1, 'The initial state is the starting point of a problem before any solving attempts.'),
(15, 'Which problem-solving strategy guarantees a solution but may be inefficient?', 'multiple_choice', 1.00, 2, 'Algorithms are step-by-step procedures that guarantee solutions but can be time-consuming.'),
(15, 'What are mental shortcuts in problem solving called?', 'multiple_choice', 1.00, 3, 'Heuristics are mental shortcuts that are efficient but don''t guarantee correct solutions.'),
(15, 'Functional fixedness involves seeing objects only in their traditional uses.', 'true_false', 1.00, 4, 'True. Functional fixedness is the inability to see novel uses for familiar objects.'),
(15, 'What is the sudden realization of a problem''s solution called?', 'multiple_choice', 1.00, 5, 'Insight involves sudden understanding or realization of a problem''s solution.'),
(15, 'Which barrier to problem solving involves persisting with unsuccessful strategies?', 'multiple_choice', 1.00, 6, 'Mental set is the tendency to approach problems with previously successful strategies even when inappropriate.'),
(15, 'The means-end analysis heuristic involves breaking problems into subgoals.', 'true_false', 1.00, 7, 'True. Means-end analysis works by reducing differences between current and goal states through subgoals.'),
(15, 'What is analogical problem solving?', 'multiple_choice', 1.00, 8, 'Analogical problem solving involves applying solutions from similar past problems to current ones.'),
(15, 'Which type of problem has well-defined starting points and solutions?', 'multiple_choice', 1.00, 9, 'Well-defined problems have clear initial states, goal states, and solution paths.'),
(15, 'Confirmation bias can hinder effective problem solving by limiting consideration of alternatives.', 'true_false', 1.00, 10, 'True. Confirmation bias leads us to seek information that confirms our existing beliefs.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(141, 'The goal', FALSE, 1),
(141, 'The starting point', TRUE, 2),
(141, 'The solution path', FALSE, 3),
(141, 'The obstacles', FALSE, 4),
(142, 'Heuristics', FALSE, 1),
(142, 'Algorithms', TRUE, 2),
(142, 'Insight', FALSE, 3),
(142, 'Intuition', FALSE, 4),
(143, 'Algorithms', FALSE, 1),
(143, 'Insights', FALSE, 2),
(143, 'Heuristics', TRUE, 3),
(143, 'Analyses', FALSE, 4),
(144, 'True', TRUE, 1),
(144, 'False', FALSE, 2),
(145, 'Algorithm', FALSE, 1),
(145, 'Heuristic', FALSE, 2),
(145, 'Insight', TRUE, 3),
(145, 'Analysis', FALSE, 4),
(146, 'Functional fixedness', FALSE, 1),
(146, 'Confirmation bias', FALSE, 2),
(146, 'Mental set', TRUE, 3),
(146, 'Availability heuristic', FALSE, 4),
(147, 'True', TRUE, 1),
(147, 'False', FALSE, 2),
(148, 'Using mathematical formulas', FALSE, 1),
(148, 'Applying solutions from similar problems', TRUE, 2),
(148, 'Breaking problems into parts', FALSE, 3),
(148, 'Working backward from the goal', FALSE, 4),
(149, 'Ill-defined problems', FALSE, 1),
(149, 'Well-defined problems', TRUE, 2),
(149, 'Insight problems', FALSE, 3),
(149, 'Analogical problems', FALSE, 4),
(150, 'True', TRUE, 1),
(150, 'False', FALSE, 2);

-- ============================================
-- Quiz 16: Week 8 - Decision Making (quiz_id = 16)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(16, 'What is the rational choice theory of decision making?', 'multiple_choice', 1.00, 1, 'Rational choice theory assumes people make decisions by weighing costs and benefits to maximize utility.'),
(16, 'Which heuristic involves estimating probability based on ease of recall?', 'multiple_choice', 1.00, 2, 'The availability heuristic uses how easily examples come to mind to estimate frequency or probability.'),
(16, 'What is prospect theory primarily concerned with?', 'multiple_choice', 1.00, 3, 'Prospect theory describes how people make decisions involving risk and uncertainty, showing systematic deviations from rationality.'),
(16, 'People are generally risk-averse for gains and risk-seeking for losses.', 'true_false', 1.00, 4, 'True. This is a key finding of prospect theory - we prefer sure gains but take risks to avoid losses.'),
(16, 'Which bias involves being influenced by how information is presented?', 'multiple_choice', 1.00, 5, 'Framing effects occur when decisions are influenced by how options are worded or presented.'),
(16, 'What does the representativeness heuristic involve?', 'multiple_choice', 1.00, 6, 'The representativeness heuristic involves judging probability based on similarity to prototypes.'),
(16, 'Anchoring and adjustment involves being influenced by initial information when making estimates.', 'true_false', 1.00, 7, 'True. Anchoring occurs when initial information unduly influences subsequent judgments.'),
(16, 'What is the sunk cost fallacy?', 'multiple_choice', 1.00, 8, 'The sunk cost fallacy involves continuing investments based on past costs rather than future benefits.'),
(16, 'Which concept describes optimal decision making under uncertainty?', 'multiple_choice', 1.00, 9, 'Expected utility theory describes rational decision making by calculating expected values of options.'),
(16, 'Emotions play no role in rational decision making according to traditional economic theory.', 'true_false', 1.00, 10, 'True. Traditional economic models assumed completely rational, emotion-free decision making.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(151, 'Maximizing emotional satisfaction', FALSE, 1),
(151, 'Weighing costs and benefits rationally', TRUE, 2),
(151, 'Following intuition', FALSE, 3),
(151, 'Minimizing cognitive effort', FALSE, 4),
(152, 'Representativeness heuristic', FALSE, 1),
(152, 'Availability heuristic', TRUE, 2),
(152, 'Anchoring heuristic', FALSE, 3),
(152, 'Affect heuristic', FALSE, 4),
(153, 'Optimal decision strategies', FALSE, 1),
(153, 'Decision making under risk', TRUE, 2),
(153, 'Group decision making', FALSE, 3),
(153, 'Emotional influences on decisions', FALSE, 4),
(154, 'True', TRUE, 1),
(154, 'False', FALSE, 2),
(155, 'Confirmation bias', FALSE, 1),
(155, 'Anchoring effect', FALSE, 2),
(155, 'Framing effect', TRUE, 3),
(155, 'Hindsight bias', FALSE, 4),
(156, 'Ease of recall', FALSE, 1),
(156, 'Similarity to prototypes', TRUE, 2),
(156, 'Initial information', FALSE, 3),
(156, 'Emotional reactions', FALSE, 4),
(157, 'True', TRUE, 1),
(157, 'False', FALSE, 2),
(158, 'Overvaluing future costs', FALSE, 1),
(158, 'Continuing based on past investments', TRUE, 2),
(158, 'Ignoring opportunity costs', FALSE, 3),
(158, 'Focusing only on benefits', FALSE, 4),
(159, 'Prospect theory', FALSE, 1),
(159, 'Expected utility theory', TRUE, 2),
(159, 'Heuristic theory', FALSE, 3),
(159, 'Bounded rationality', FALSE, 4),
(160, 'True', TRUE, 1),
(160, 'False', FALSE, 2);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(17, 'What is the primary purpose of a business?', 'multiple_choice', 1.00, 1, 'Businesses exist to create value for customers, which in turn generates profit for owners and stakeholders.'),
(17, 'Which business structure provides the owner with complete control but unlimited personal liability?', 'multiple_choice', 1.00, 2, 'Sole proprietorships offer complete control but expose the owner to unlimited personal liability for business debts.'),
(17, 'What are the four main factors of production in business?', 'multiple_choice', 1.00, 3, 'The four factors of production are land, labor, capital, and entrepreneurship - the resources needed to produce goods and services.'),
(17, 'All businesses must have a physical location to operate legally.', 'true_false', 1.00, 4, 'False. Many successful businesses operate entirely online or as home-based businesses without traditional physical locations.'),
(17, 'What does ROI stand for in business terminology?', 'multiple_choice', 1.00, 5, 'ROI stands for Return on Investment, which measures the profitability of an investment.'),
(17, 'Which type of business environment includes factors like competition and customer demographics?', 'multiple_choice', 1.00, 6, 'The external environment includes market forces, competition, and demographic factors that affect business operations.'),
(17, 'A mission statement describes what a business hopes to achieve in the future.', 'true_false', 1.00, 7, 'False. A mission statement describes a company''s current purpose and operations, while a vision statement describes future aspirations.'),
(17, 'What is the term for the difference between revenue and total costs?', 'multiple_choice', 1.00, 8, 'Profit is the financial gain calculated as revenue minus all expenses and costs.'),
(17, 'Which business function involves managing money and financial resources?', 'multiple_choice', 1.00, 9, 'Finance involves managing monetary resources, including budgeting, investing, and financial planning.'),
(17, 'Stakeholders include only the owners and shareholders of a business.', 'true_false', 1.00, 10, 'False. Stakeholders include all parties affected by a business, including employees, customers, suppliers, and the community.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(161, 'To maximize shareholder value', FALSE, 1),
(161, 'To create value for customers', TRUE, 2),
(161, 'To provide employment', FALSE, 3),
(161, 'To pay taxes', FALSE, 4),
(162, 'Corporation', FALSE, 1),
(162, 'Partnership', FALSE, 2),
(162, 'Sole proprietorship', TRUE, 3),
(162, 'Limited liability company', FALSE, 4),
(163, 'Money, assets, revenue, profit', FALSE, 1),
(163, 'Land, labor, capital, entrepreneurship', TRUE, 2),
(163, 'Management, marketing, finance, operations', FALSE, 3),
(163, 'Products, services, customers, employees', FALSE, 4),
(164, 'True', FALSE, 1),
(164, 'False', TRUE, 2),
(165, 'Return on Investment', TRUE, 1),
(165, 'Rate of Interest', FALSE, 2),
(165, 'Revenue on Inventory', FALSE, 3),
(165, 'Return on Income', FALSE, 4),
(166, 'Internal environment', FALSE, 1),
(166, 'External environment', TRUE, 2),
(166, 'Operational environment', FALSE, 3),
(166, 'Corporate environment', FALSE, 4),
(167, 'True', FALSE, 1),
(167, 'False', TRUE, 2),
(168, 'Revenue', FALSE, 1),
(168, 'Profit', TRUE, 2),
(168, 'Income', FALSE, 3),
(168, 'Margin', FALSE, 4),
(169, 'Marketing', FALSE, 1),
(169, 'Operations', FALSE, 2),
(169, 'Finance', TRUE, 3),
(169, 'Human Resources', FALSE, 4),
(170, 'True', FALSE, 1),
(170, 'False', TRUE, 2);

-- ============================================
-- Quiz 18: Week 2 - Business Strategy (quiz_id = 18)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(18, 'What is SWOT analysis used for in business strategy?', 'multiple_choice', 1.00, 1, 'SWOT analysis helps businesses identify internal Strengths and Weaknesses, and external Opportunities and Threats.'),
(18, 'Which competitive strategy involves offering unique products that customers value?', 'multiple_choice', 1.00, 2, 'Differentiation strategy focuses on creating unique products or services that stand out from competitors.'),
(18, 'What does PEST analysis examine?', 'multiple_choice', 1.00, 3, 'PEST analysis examines Political, Economic, Social, and Technological factors in the external environment.'),
(18, 'Corporate strategy and business strategy refer to the same concept.', 'true_false', 1.00, 4, 'False. Corporate strategy deals with the overall scope of the organization, while business strategy focuses on competing in specific markets.'),
(18, 'Which of Porter''s Five Forces deals with the threat of new competitors?', 'multiple_choice', 1.00, 5, 'Threat of new entrants examines how easy it is for new competitors to enter the market.'),
(18, 'What is a sustainable competitive advantage?', 'multiple_choice', 1.00, 6, 'A sustainable competitive advantage is a long-term advantage that competitors cannot easily copy or replicate.'),
(18, 'Cost leadership strategy focuses on having the lowest prices in the market.', 'true_false', 1.00, 7, 'True. Cost leadership aims to become the lowest-cost producer in the industry to compete on price.'),
(18, 'What is the purpose of a balanced scorecard in strategic management?', 'multiple_choice', 1.00, 8, 'The balanced scorecard provides a comprehensive view of business performance across financial and non-financial measures.'),
(18, 'Which type of growth strategy involves selling existing products to new markets?', 'multiple_choice', 1.00, 9, 'Market development involves selling existing products to new customer segments or geographic markets.'),
(18, 'Strategic planning typically covers a 1-year time horizon.', 'true_false', 1.00, 10, 'False. Strategic planning usually covers 3-5 years, while operational planning covers 1 year or less.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(171, 'Financial analysis', FALSE, 1),
(171, 'Strategic planning', TRUE, 2),
(171, 'Marketing campaigns', FALSE, 3),
(171, 'Employee evaluation', FALSE, 4),
(172, 'Cost leadership', FALSE, 1),
(172, 'Differentiation', TRUE, 2),
(172, 'Focus strategy', FALSE, 3),
(172, 'Market penetration', FALSE, 4),
(173, 'Internal capabilities', FALSE, 1),
(173, 'External macro-environment', TRUE, 2),
(173, 'Financial performance', FALSE, 3),
(173, 'Competitor actions', FALSE, 4),
(174, 'True', FALSE, 1),
(174, 'False', TRUE, 2),
(175, 'Bargaining power of suppliers', FALSE, 1),
(175, 'Threat of substitute products', FALSE, 2),
(175, 'Threat of new entrants', TRUE, 3),
(175, 'Rivalry among competitors', FALSE, 4),
(176, 'A temporary market advantage', FALSE, 1),
(176, 'An advantage that lasts 6 months', FALSE, 2),
(176, 'A long-term advantage competitors cannot easily copy', TRUE, 3),
(176, 'Having the largest market share', FALSE, 4),
(177, 'True', TRUE, 1),
(177, 'False', FALSE, 2),
(178, 'To track financial performance only', FALSE, 1),
(178, 'To measure employee productivity', FALSE, 2),
(178, 'To provide comprehensive performance measurement', TRUE, 3),
(178, 'To analyze customer complaints', FALSE, 4),
(179, 'Market penetration', FALSE, 1),
(179, 'Market development', TRUE, 2),
(179, 'Product development', FALSE, 3),
(179, 'Diversification', FALSE, 4),
(180, 'True', FALSE, 1),
(180, 'False', TRUE, 2);

-- ============================================
-- Quiz 19: Week 3 - Marketing Basics (quiz_id = 19)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(19, 'What are the four P''s of the marketing mix?', 'multiple_choice', 1.00, 1, 'The marketing mix consists of Product, Price, Place, and Promotion - the key elements marketers control.'),
(19, 'What is market segmentation?', 'multiple_choice', 1.00, 2, 'Market segmentation involves dividing a broad market into smaller groups with similar needs or characteristics.'),
(19, 'Which type of research gathers new data specifically for a current research problem?', 'multiple_choice', 1.00, 3, 'Primary research collects new data directly from sources for a specific research purpose.'),
(19, 'The marketing concept focuses on selling whatever the company can produce efficiently.', 'true_false', 1.00, 4, 'False. The marketing concept focuses on identifying customer needs and satisfying them profitably.'),
(19, 'What is a target market?', 'multiple_choice', 1.00, 5, 'A target market is the specific group of consumers a company aims to reach with its marketing efforts.'),
(19, 'Which pricing strategy sets high initial prices to maximize profits from early adopters?', 'multiple_choice', 1.00, 6, 'Price skimming involves setting high initial prices to maximize revenue from customers willing to pay premium prices.'),
(19, 'Brand equity refers to the financial value of a company''s physical assets.', 'true_false', 1.00, 7, 'False. Brand equity refers to the commercial value derived from consumer perception of the brand name.'),
(19, 'What is the purpose of a Unique Selling Proposition (USP)?', 'multiple_choice', 1.00, 8, 'A USP distinguishes a product from competitors by highlighting its unique benefits or features.'),
(19, 'Which marketing channel involves selling directly to consumers without intermediaries?', 'multiple_choice', 1.00, 9, 'Direct marketing involves selling directly to consumers through channels like websites, catalogs, or direct sales.'),
(19, 'Digital marketing has made traditional marketing methods completely obsolete.', 'true_false', 1.00, 10, 'False. While digital marketing is important, traditional methods still play valuable roles in integrated marketing strategies.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(181, 'Product, Price, Place, Promotion', TRUE, 1),
(181, 'People, Process, Physical evidence, Promotion', FALSE, 2),
(181, 'Production, Placement, Profit, Publicity', FALSE, 3),
(181, 'Planning, Production, Pricing, Placement', FALSE, 4),
(182, 'Targeting all customers equally', FALSE, 1),
(182, 'Dividing markets into smaller groups', TRUE, 2),
(182, 'Creating new markets', FALSE, 3),
(182, 'Eliminating unprofitable markets', FALSE, 4),
(183, 'Secondary research', FALSE, 1),
(183, 'Primary research', TRUE, 2),
(183, 'Tertiary research', FALSE, 3),
(183, 'Quantitative research', FALSE, 4),
(184, 'True', FALSE, 1),
(184, 'False', TRUE, 2),
(185, 'All potential customers', FALSE, 1),
(185, 'The specific group a company wants to reach', TRUE, 2),
(185, 'Competitors'' customers', FALSE, 3),
(185, 'International markets', FALSE, 4),
(186, 'Penetration pricing', FALSE, 1),
(186, 'Price skimming', TRUE, 2),
(186, 'Competitive pricing', FALSE, 3),
(186, 'Cost-plus pricing', FALSE, 4),
(187, 'True', FALSE, 1),
(187, 'False', TRUE, 2),
(188, 'To reduce marketing costs', FALSE, 1),
(188, 'To differentiate from competitors', TRUE, 2),
(188, 'To increase production efficiency', FALSE, 3),
(188, 'To simplify product design', FALSE, 4),
(189, 'Retail marketing', FALSE, 1),
(189, 'Wholesale marketing', FALSE, 2),
(189, 'Direct marketing', TRUE, 3),
(189, 'Indirect marketing', FALSE, 4),
(190, 'True', FALSE, 1),
(190, 'False', TRUE, 2);

-- ============================================
-- Quiz 20: Week 4 - Operations Management (quiz_id = 20)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(20, 'What is the primary goal of operations management?', 'multiple_choice', 1.00, 1, 'Operations management focuses on efficiently converting inputs into outputs to create goods and services.'),
(20, 'Which production process is characterized by high volume and low variety?', 'multiple_choice', 1.00, 2, 'Mass production involves high volumes of standardized products with limited variety.'),
(20, 'What does JIT stand for in operations management?', 'multiple_
choice', 1.00, 3, 'JIT stands for Just-In-Time, an inventory strategy that minimizes stock by receiving goods only as needed.'),
(20, 'Quality control and quality assurance refer to the same process in operations.', 'true_false', 1.00, 4, 'False. Quality control focuses on detecting defects in finished products, while quality assurance focuses on preventing defects throughout the process.'),
(20, 'What is the purpose of supply chain management?', 'multiple_choice', 1.00, 5, 'Supply chain management coordinates the flow of materials, information, and finances from supplier to customer.'),
(20, 'Which quality management approach focuses on continuous improvement?', 'multiple_choice', 1.00, 6, 'Kaizen is the Japanese philosophy of continuous improvement involving all employees.'),
(20, 'Capacity planning involves determining the maximum output a facility can produce.', 'true_false', 1.00, 7, 'True. Capacity planning determines the production capacity needed to meet changing demand.'),
(20, 'What is the term for the sequence of activities that creates value for customers?', 'multiple_choice', 1.00, 8, 'The value chain describes the series of activities that create and build value at every step.'),
(20, 'Which inventory management method categorizes items based on importance?', 'multiple_choice', 1.00, 9, 'ABC analysis categorizes inventory into A (high value), B (medium value), and C (low value) items.'),
(20, 'Lean manufacturing principles focus on maximizing inventory levels to ensure production continuity.', 'true_false', 1.00, 10, 'False. Lean manufacturing focuses on eliminating waste and minimizing inventory.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(191, 'Maximizing employee satisfaction', FALSE, 1),
(191, 'Efficiently creating goods and services', TRUE, 2),
(191, 'Increasing marketing effectiveness', FALSE, 3),
(191, 'Minimizing customer complaints', FALSE, 4),
(192, 'Job production', FALSE, 1),
(192, 'Batch production', FALSE, 2),
(192, 'Mass production', TRUE, 3),
(192, 'Project production', FALSE, 4),
(193, 'Just-In-Time', TRUE, 1),
(193, 'Job-In-Transit', FALSE, 2),
(193, 'Joint-Inventory-Technique', FALSE, 3),
(193, 'Justified-Inventory-Turnover', FALSE, 4),
(194, 'True', FALSE, 1),
(194, 'False', TRUE, 2),
(195, 'Managing only production', FALSE, 1),
(195, 'Coordinating supplier to customer flows', TRUE, 2),
(195, 'Controlling inventory costs', FALSE, 3),
(195, 'Improving product quality', FALSE, 4),
(196, 'Six Sigma', FALSE, 1),
(196, 'Total Quality Management', FALSE, 2),
(196, 'Kaizen', TRUE, 3),
(196, 'ISO 9000', FALSE, 4),
(197, 'True', TRUE, 1),
(197, 'False', FALSE, 2),
(198, 'Supply chain', FALSE, 1),
(198, 'Value chain', TRUE, 2),
(198, 'Production line', FALSE, 3),
(198, 'Business process', FALSE, 4),
(199, 'FIFO method', FALSE, 1),
(199, 'LIFO method', FALSE, 2),
(199, 'ABC analysis', TRUE, 3),
(199, 'EOQ model', FALSE, 4),
(200, 'True', FALSE, 1),
(200, 'False', TRUE, 2);

-- ============================================
-- Quiz 21: Week 5 - Human Resource Management (quiz_id = 21)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(21, 'What is the primary function of Human Resource Management?', 'multiple_choice', 1.00, 1, 'HRM focuses on managing people within organizations to achieve both organizational and employee goals.'),
(21, 'Which process involves attracting qualified candidates to apply for jobs?', 'multiple_choice', 1.00, 2, 'Recruitment is the process of attracting, screening, and selecting qualified people for jobs.'),
(21, 'What is the purpose of performance appraisal?', 'multiple_choice', 1.00, 3, 'Performance appraisal evaluates employee job performance and provides feedback for improvement.'),
(21, 'HRM is only responsible for hiring and firing employees.', 'true_false', 1.00, 4, 'False. HRM encompasses recruitment, training, compensation, performance management, and employee development.'),
(21, 'Which law prohibits employment discrimination based on race, color, religion, sex, or national origin?', 'multiple_choice', 1.00, 5, 'The Civil Rights Act of 1964 Title VII prohibits employment discrimination based on protected characteristics.'),
(21, 'What is the term for helping new employees adjust to the organization?', 'multiple_choice', 1.00, 6, 'Orientation or onboarding helps new employees learn about the organization and their roles.'),
(21, 'Compensation includes only monetary payments like salary and wages.', 'true_false', 1.00, 7, 'False. Compensation includes both monetary payments and benefits like health insurance and retirement plans.'),
(21, 'Which HR activity identifies future workforce needs?', 'multiple_choice', 1.00, 8, 'Human resource planning forecasts future personnel needs and develops strategies to meet them.'),
(21, 'What does OSHA stand for in workplace safety?', 'multiple_choice', 1.00, 9, 'OSHA stands for Occupational Safety and Health Administration, which sets and enforces safety standards.'),
(21, 'Employee training and development are the same concept in HRM.', 'true_false', 1.00, 10, 'False. Training focuses on current job skills, while development prepares employees for future roles and responsibilities.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(201, 'Managing financial resources', FALSE, 1),
(201, 'Managing people in organizations', TRUE, 2),
(201, 'Managing production processes', FALSE, 3),
(201, 'Managing customer relationships', FALSE, 4),
(202, 'Selection', FALSE, 1),
(202, 'Recruitment', TRUE, 2),
(202, 'Orientation', FALSE, 3),
(202, 'Training', FALSE, 4),
(203, 'To reduce salaries', FALSE, 1),
(203, 'To evaluate and improve performance', TRUE, 2),
(203, 'To eliminate employees', FALSE, 3),
(203, 'To increase workload', FALSE, 4),
(204, 'True', FALSE, 1),
(204, 'False', TRUE, 2),
(205, 'ADA', FALSE, 1),
(205, 'EEOC', FALSE, 2),
(205, 'Civil Rights Act', TRUE, 3),
(205, 'FLSA', FALSE, 4),
(206, 'Training', FALSE, 1),
(206, 'Orientation', TRUE, 2),
(206, 'Recruitment', FALSE, 3),
(206, 'Development', FALSE, 4),
(207, 'True', FALSE, 1),
(207, 'False', TRUE, 2),
(208, 'Recruitment', FALSE, 1),
(208, 'Human resource planning', TRUE, 2),
(208, 'Performance management', FALSE, 3),
(208, 'Compensation planning', FALSE, 4),
(209, 'Occupational Safety and Health Administration', TRUE, 1),
(209, 'Organizational Safety and Health Association', FALSE, 2),
(209, 'Occupational Standards and Health Agency', FALSE, 3),
(209, 'Organization for Safety and Health Advancement', FALSE, 4),
(210, 'True', FALSE, 1),
(210, 'False', TRUE, 2);

-- ============================================
-- Quiz 22: Week 6 - Financial Management (quiz_id = 22)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(22, 'What is the primary goal of financial management?', 'multiple_choice', 1.00, 1, 'The primary goal is to maximize shareholder wealth through effective financial decision-making.'),
(22, 'Which financial statement shows a company''s financial position at a specific point in time?', 'multiple_choice', 1.00, 2, 'The balance sheet provides a snapshot of assets, liabilities, and equity at a specific date.'),
(22, 'What does ROI measure?', 'multiple_choice', 1.00, 3, 'ROI (Return on Investment) measures the profitability of an investment relative to its cost.'),
(22, 'Assets always equal liabilities plus owner''s equity on a balance sheet.', 'true_false', 1.00, 4, 'True. The accounting equation is Assets = Liabilities + Owner''s Equity, which must always balance.'),
(22, 'What is working capital management concerned with?', 'multiple_choice', 1.00, 5, 'Working capital management involves managing short-term assets and liabilities to ensure liquidity.'),
(22, 'Which ratio measures a company''s ability to pay short-term obligations?', 'multiple_choice', 1.00, 6, 'The current ratio measures liquidity by comparing current assets to current liabilities.'),
(22, 'Cash flow and profit are always the same amount for a business.', 'true_false', 1.00, 7, 'False. Cash flow tracks actual cash movements, while profit includes non-cash items like depreciation.'),
(22, 'What is capital budgeting?', 'multiple_choice', 1.00, 8, 'Capital budgeting involves evaluating and selecting long-term investment projects.'),
(22, 'Which type of cost remains constant regardless of production volume?', 'multiple_choice', 1.00, 9, 'Fixed costs remain constant regardless of changes in production or sales volume.'),
(22, 'Financial leverage involves using debt to finance assets and increase potential returns.', 'true_false', 1.00, 10, 'True. Financial leverage uses borrowed funds to amplify potential returns, though it also increases risk.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(211, 'Maximizing employee satisfaction', FALSE, 1),
(211, 'Maximizing shareholder wealth', TRUE, 2),
(211, 'Minimizing all costs', FALSE, 3),
(211, 'Maximizing sales revenue', FALSE, 4),
(212, 'Income statement', FALSE, 1),
(212, 'Balance sheet', TRUE, 2),
(212, 'Cash flow statement', FALSE, 3),
(212, 'Statement of retained earnings', FALSE, 4),
(213, 'Risk of investment', FALSE, 1),
(213, 'Profitability of investment', TRUE, 2),
(213, 'Liquidity of investment', FALSE, 3),
(213, 'Tax implications of investment', FALSE, 4),
(214, 'True', TRUE, 1),
(214, 'False', FALSE, 2),
(215, 'Long-term investments', FALSE, 1),
(215, 'Short-term assets and liabilities', TRUE, 2),
(215, 'Stock market investments', FALSE, 3),
(215, 'Employee compensation', FALSE, 4),
(216, 'Debt ratio', FALSE, 1),
(216, 'Current ratio', TRUE, 2),
(216, 'Return on equity', FALSE, 3),
(216, 'Profit margin', FALSE, 4),
(217, 'True', FALSE, 1),
(217, 'False', TRUE, 2),
(218, 'Managing daily expenses', FALSE, 1),
(218, 'Evaluating long-term investments', TRUE, 2),
(218, 'Preparing tax returns', FALSE, 3),
(218, 'Managing payroll', FALSE, 4),
(219, 'Variable cost', FALSE, 1),
(219, 'Fixed cost', TRUE, 2),
(219, 'Marginal cost', FALSE, 3),
(219, 'Opportunity cost', FALSE, 4),
(220, 'True', TRUE, 1),
(220, 'False', FALSE, 2);

-- ============================================
-- Quiz 23: Week 7 - Business Ethics (quiz_id = 23)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(23, 'What are business ethics?', 'multiple_choice', 1.00, 1, 'Business ethics are moral principles that guide behavior and decision-making in business contexts.'),
(23, 'Which concept describes a company''s responsibility to society beyond profit-making?', 'multiple_choice', 1.00, 2, 'Corporate Social Responsibility (CSR) involves businesses considering social and environmental impacts.'),
(23, 'What is a code of ethics?', 'multiple_choice', 1.00, 3, 'A code of ethics is a formal document outlining the ethical principles and standards that guide an organization.'),
(23, 'Legal compliance ensures ethical business behavior in all situations.', 'true_false', 1.00, 4, 'False. Legal behavior is the minimum standard, while ethical behavior often requires going beyond legal requirements.'),
(23, 'What is whistleblowing in business ethics?', 'multiple_choice', 1.00, 5, 'Whistleblowing involves reporting unethical or illegal activities within an organization to authorities or the public.'),
(23, 'Which ethical approach focuses on the greatest good for the greatest number?', 'multiple_choice', 1.00, 6, 'Utilitarianism evaluates actions based on their consequences and seeks to maximize overall happiness.'),
(23, 'Conflict of interest occurs when personal interests interfere with professional judgment.', 'true_false', 1.00, 7, 'True. Conflict of interest arises when personal considerations could improperly influence professional duties.'),
(23, 'What is sustainability in business ethics?', 'multiple_choice', 1.00, 8, 'Sustainability involves meeting present needs without compromising future generations'' ability to meet theirs.'),
(23, 'Which law prohibits bribery of foreign officials?', 'multiple_choice', 1.00, 9, 'The Foreign Corrupt Practices Act (FCPA) prohibits bribery of foreign officials to obtain business.'),
(23, 'Ethical business practices always reduce profitability.', 'true_false', 1.00, 10, 'False. Ethical practices can enhance reputation, employee morale, and long-term profitability.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(221, 'Government regulations for business', FALSE, 1),
(221, 'Moral principles guiding business behavior', TRUE, 2),
(221, 'Financial reporting standards', FALSE, 3),
(221, 'Marketing strategies', FALSE, 4),
(222, 'Corporate governance', FALSE, 1),
(222, 'Corporate Social Responsibility', TRUE, 2),
(222, 'Business compliance', FALSE, 3),
(222, 'Ethical investing', FALSE, 4),
(223, 'A legal requirement for incorporation', FALSE, 1),
(223, 'Formal ethical guidelines for an organization', TRUE, 2),
(223, 'A list of prohibited activities', FALSE, 3),
(223, 'Employee performance standards', FALSE, 4),
(224, 'True', FALSE, 1),
(224, 'False', TRUE, 2),
(225, 'Ignoring minor violations', FALSE, 1),
(225, 'Reporting unethical activities', TRUE, 2),
(225, 'Spreading rumors', FALSE, 3),
(225, 'Competitive intelligence', FALSE, 4),
(226, 'Deontology', FALSE, 1),
(226, 'Virtue ethics', FALSE, 2),
(226, 'Utilitarianism', TRUE, 3),
(226, 'Relativism', FALSE, 4),
(227, 'True', TRUE, 1),
(227, 'False', FALSE, 2),
(228, 'Maximizing short-term profits', FALSE, 1),
(228, 'Meeting needs without compromising future', TRUE, 2),
(228, 'Reducing all environmental impacts', FALSE, 3),
(228, 'Eliminating waste completely', FALSE, 4),
(229, 'Sarbanes-Oxley Act', FALSE, 1),
(229, 'Foreign Corrupt Practices Act', TRUE, 2),
(229, 'Sherman Antitrust Act', FALSE, 3),
(229, 'Dodd-Frank Act', FALSE, 4),
(230, 'True', FALSE, 1),
(230, 'False', TRUE, 2);

-- ============================================
-- Quiz 24: Week 8 - Entrepreneurship (quiz_id = 24)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(24, 'What is an entrepreneur?', 'multiple_choice', 1.00, 1, 'An entrepreneur is someone who starts and operates a business, taking on financial risks to do so.'),
(24, 'What is a business plan?', 'multiple_choice', 1.00, 2, 'A business plan is a formal document outlining business goals, strategies, and financial projections.'),
(24, 'Which source of funding involves exchanging ownership shares for capital?', 'multiple_choice', 1.00, 3, 'Equity financing involves selling ownership stakes in the business to raise capital.'),
(24, 'All entrepreneurs are born with innate business talents and cannot learn entrepreneurship.', 'true_false', 1.00, 4, 'False. While some traits may be innate, entrepreneurship can be learned and developed through education and experience.'),
(24, 'What is the term for a new business that copies an existing business model?', 'multiple_choice', 1.00, 5, 'A franchise involves operating a business using the established brand and systems of another company.'),
(24, 'Which characteristic is most important for entrepreneurial success?', 'multiple_choice', 1.00, 6, 'Resilience helps entrepreneurs overcome the inevitable challenges and failures they will face.'),
(24, 'A startup is always a small version of a large corporation.', 'true_false', 1.00, 7, 'False. Startups are designed for rapid growth and scaling, not just being small versions of established companies.'),
(24, 'What is bootstrapping in entrepreneurship?', 'multiple_choice', 1.00, 8, 'Bootstrapping involves starting a business with personal finances and revenue rather than external funding.'),
(24, 'Which document is essential for protecting a unique business idea?', 'multiple_choice', 1.00, 9, 'A non-disclosure agreement (NDA) protects confidential information when sharing business ideas.'),
(24, 'Market research is unnecessary if the entrepreneur strongly believes in their idea.', 'true_false', 1.00, 10, 'False. Market research is crucial for validating ideas and understanding customer needs and competition.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(231, 'A business manager', FALSE, 1),
(231, 'Someone who starts and runs a business', TRUE, 2),
(231, 'An investor only', FALSE, 3),
(231, 'A corporate employee', FALSE, 4),
(232, 'A marketing brochure', FALSE, 1),
(232, 'A formal document outlining business strategy', TRUE, 2),
(232, 'A legal incorporation document', FALSE, 3),
(232, 'An employee handbook', FALSE, 4),
(233, 'Debt financing', FALSE, 1),
(233, 'Equity financing', TRUE, 2),
(233, 'Bootstrapping', FALSE, 3),
(233, 'Crowdfunding', FALSE, 4),
(234, 'True', FALSE, 1),
(234, 'False', TRUE, 2),
(235, 'Startup', FALSE, 1),
(235, 'Franchise', TRUE, 2),
(235, 'Partnership', FALSE, 3),
(235, 'Corporation', FALSE, 4),
(236, 'Wealth', FALSE, 1),
(236, 'Education', FALSE, 2),
(236, 'Resilience', TRUE, 3),
(236, 'Family connections', FALSE, 4),
(237, 'True', FALSE, 1),
(237, 'False', TRUE, 2),
(238, 'Using personal funds to start a business', TRUE, 1),
(238, 'Borrowing from banks', FALSE, 2),
(238, 'Getting venture capital', FALSE, 3),
(238, 'Selling company shares', FALSE, 4),
(239, 'Business plan', FALSE, 1),
(239, 'Non-disclosure agreement', TRUE, 2),
(239, 'Marketing plan', FALSE, 3),
(239, 'Financial statement', FALSE, 4),
(240, 'True', FALSE, 1),
(240, 'False', TRUE, 2);


USE elearning_db;

-- ============================================
-- COURSE 4: MICROECONOMICS
-- ============================================

-- Quiz 25: Week 1 - Economic Thinking (quiz_id = 25)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(25, 'What is the fundamental economic problem that all societies face?', 'multiple_choice', 1.00, 1, 'Scarcity exists because human wants exceed the limited resources available to satisfy them.'),
(25, 'What does the term "opportunity cost" refer to in economics?', 'multiple_choice', 1.00, 2, 'Opportunity cost is the value of the next best alternative that must be given up when making a choice.'),
(25, 'Which economic concept describes the additional satisfaction from consuming one more unit?', 'multiple_choice', 1.00, 3, 'Marginal utility measures the change in total satisfaction from consuming an additional unit of a good.'),
(25, 'Economics is only concerned with money and financial transactions.', 'true_false', 1.00, 4, 'False. Economics studies how societies allocate scarce resources to satisfy unlimited wants, including non-monetary decisions.'),
(25, 'What is the law of diminishing marginal utility?', 'multiple_choice', 1.00, 5, 'This law states that as consumption of a good increases, the additional satisfaction from each extra unit decreases.'),
(25, 'Which branch of economics focuses on individual consumers and firms?', 'multiple_choice', 1.00, 6, 'Microeconomics studies the behavior of individual economic units like households, firms, and markets.'),
(25, 'Rational decision-makers always consider sunk costs in their choices.', 'true_false', 1.00, 7, 'False. Rational decision-makers ignore sunk costs because they cannot be recovered and should not affect future decisions.'),
(25, 'What is a production possibilities curve used to illustrate?', 'multiple_choice', 1.00, 8, 'The PPC shows the maximum combination of two goods an economy can produce with available resources and technology.'),
(25, 'Which economic principle states that people respond to incentives?', 'multiple_choice', 1.00, 9, 'People make decisions by comparing costs and benefits, and their behavior changes when these incentives change.'),
(25, 'Positive economics deals with what ought to be, while normative economics deals with what is.', 'true_false', 1.00, 10, 'False. Positive economics describes what is, while normative economics prescribes what ought to be.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(241, 'Unemployment', FALSE, 1),
(241, 'Inflation', FALSE, 2),
(241, 'Scarcity', TRUE, 3),
(241, 'Poverty', FALSE, 4),
(242, 'The monetary cost of a product', FALSE, 1),
(242, 'The value of the next best alternative', TRUE, 2),
(242, 'The total cost of production', FALSE, 3),
(242, 'The fixed costs of a business', FALSE, 4),
(243, 'Total utility', FALSE, 1),
(243, 'Average utility', FALSE, 2),
(243, 'Marginal utility', TRUE, 3),
(243, 'Maximum utility', FALSE, 4),
(244, 'True', FALSE, 1),
(244, 'False', TRUE, 2),
(245, 'Utility increases with price', FALSE, 1),
(245, 'Additional satisfaction decreases with consumption', TRUE, 2),
(245, 'Costs decrease with scale', FALSE, 3),
(245, 'Prices reflect value', FALSE, 4),
(246, 'Macroeconomics', FALSE, 1),
(246, 'Microeconomics', TRUE, 2),
(246, 'International economics', FALSE, 3),
(246, 'Development economics', FALSE, 4),
(247, 'True', FALSE, 1),
(247, 'False', TRUE, 2),
(248, 'Market equilibrium', FALSE, 1),
(248, 'Trade-offs and opportunity costs', TRUE, 2),
(248, 'Consumer demand', FALSE, 3),
(248, 'Production costs', FALSE, 4),
(249, 'Law of supply', FALSE, 1),
(249, 'Law of demand', FALSE, 2),
(249, 'Principle of incentives', TRUE, 3),
(249, 'Theory of comparative advantage', FALSE, 4),
(250, 'True', FALSE, 1),
(250, 'False', TRUE, 2);

-- ============================================
-- Quiz 26: Week 2 - Supply and Demand (quiz_id = 26)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(26, 'According to the law of demand, what is the relationship between price and quantity demanded?', 'multiple_choice', 1.00, 1, 'The law of demand states that as price increases, quantity demanded decreases, and vice versa, all else equal.'),
(26, 'What does the law of supply state about the price-quantity relationship?', 'multiple_choice', 1.00, 2, 'The law of supply states that as price increases, quantity supplied increases, and vice versa, all else equal.'),
(26, 'What is market equilibrium?', 'multiple_choice', 1.00, 3, 'Market equilibrium occurs where quantity demanded equals quantity supplied at a particular price.'),
(26, 'A change in consumer income will shift the demand curve for normal goods.', 'true_false', 1.00, 4, 'True. For normal goods, increased income shifts demand rightward, while decreased income shifts it leftward.'),
(26, 'What happens in a market when there is a surplus?', 'multiple_choice', 1.00, 5, 'A surplus occurs when quantity supplied exceeds quantity demanded, typically leading to price decreases.'),
(26, 'Which factor would cause a shift in the supply curve?', 'multiple_choice', 1.00, 6, 'Changes in production costs, technology, or input prices shift the supply curve, while price changes cause movement along the curve.'),
(26, 'The demand curve for inferior goods slopes upward rather than downward.', 'true_false', 1.00, 7, 'False. The demand curve for all goods slopes downward, but inferior goods see increased demand when income decreases.'),
(26, 'What is the term for goods that are used together?', 'multiple_choice', 1.00, 8, 'Complementary goods are consumed together, so price changes in one affect demand for the other.'),
(26, 'Which concept explains why demand curves slope downward?', 'multiple_choice', 1.00, 9, 'The substitution effect occurs when consumers switch to alternatives as a good''s price rises.'),
(26, 'A price ceiling set above the equilibrium price will create a shortage.', 'true_false', 1.00, 10, 'False. A price ceiling set above equilibrium has no effect, while one set below creates a shortage.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(251, 'Inverse relationship', TRUE, 1),
(251, 'Direct relationship', FALSE, 2),
(251, 'No relationship', FALSE, 3),
(251, 'Variable relationship', FALSE, 4),
(252, 'Inverse relationship', FALSE, 1),
(252, 'Direct relationship', TRUE, 2),
(252, 'No relationship', FALSE, 3),
(252, 'Random relationship', FALSE, 4),
(253, 'Maximum production level', FALSE, 1),
(253, 'Where supply equals demand', TRUE, 2),
(253, 'Minimum cost point', FALSE, 3),
(253, 'Government-set price', FALSE, 4),
(254, 'True', TRUE, 1),
(254, 'False', FALSE, 2),
(255, 'Prices increase', FALSE, 1),
(255, 'Prices decrease', TRUE, 2),
(255, 'Supply increases', FALSE, 3),
(255, 'Demand decreases', FALSE, 4),
(256, 'Change in product price', FALSE, 1),
(256, 'Change in production technology', TRUE, 2),
(256, 'Change in quantity demanded', FALSE, 3),
(256, 'Change in consumer tastes', FALSE, 4),
(257, 'True', FALSE, 1),
(257, 'False', TRUE, 2),
(258, 'Substitute goods', FALSE, 1),
(258, 'Complementary goods', TRUE, 2),
(258, 'Inferior goods', FALSE, 3),
(258, 'Normal goods', FALSE, 4),
(259, 'Income effect', FALSE, 1),
(259, 'Substitution effect', TRUE, 2),
(259, 'Price effect', FALSE, 3),
(259, 'Wealth effect', FALSE, 4),
(260, 'True', FALSE, 1),
(260, 'False', TRUE, 2);

-- ============================================
-- Quiz 27: Week 3 - Elasticity (quiz_id = 27)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(27, 'What does price elasticity of demand measure?', 'multiple_choice', 1.00, 1, 'Price elasticity measures how responsive quantity demanded is to changes in price.'),
(27, 'If demand is elastic, what happens to total revenue when price decreases?', 'multiple_choice', 1.00, 2, 'With elastic demand, the percentage increase in quantity demanded exceeds the percentage decrease in price, increasing total revenue.'),
(27, 'Which product would likely have the most inelastic demand?', 'multiple_choice', 1.00, 3, 'Essential medications have inelastic demand because consumers need them regardless of price changes.'),
(27, 'Perfectly inelastic demand means quantity demanded does not change when price changes.', 'true_false', 1.00, 4, 'True. Perfectly inelastic demand has zero responsiveness to price changes.'),
(27, 'What does cross-price elasticity of demand measure?', 'multiple_choice', 1.00, 5, 'Cross-price elasticity measures how quantity demanded of one good responds to price changes of another good.'),
(27, 'If income elasticity is positive, what type of good is it?', 'multiple_choice', 1.00, 6, 'Positive income elasticity indicates a normal good, where demand increases as income rises.'),
(27, 'The availability of substitutes makes demand more elastic.', 'true_false', 1.00, 7, 'True. When substitutes are available, consumers can easily switch if prices rise, making demand more elastic.'),
(27, 'What is the formula for price elasticity of demand?', 'multiple_choice', 1.00, 8, 'Price elasticity equals the percentage change in quantity demanded divided by percentage change in price.'),
(27, 'Which time period typically has more elastic demand?', 'multiple_choice', 1.00, 9, 'Long-run demand is more elastic because consumers have more time to find substitutes or adjust behavior.'),
(27, 'Unit elastic demand means total revenue remains constant when price changes.', 'true_false', 1.00, 10, 'True. With unit elasticity, the percentage change in quantity equals the percentage change in price, so revenue stays the same.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(261, 'Responsiveness to price changes', TRUE, 1),
(261, 'Total consumer spending', FALSE, 2),
(261, 'Market equilibrium', FALSE, 3),
(261, 'Production costs', FALSE, 4),
(262, 'Total revenue decreases', FALSE, 1),
(262, 'Total revenue increases', TRUE, 2),
(262, 'Total revenue stays the same', FALSE, 3),
(262, 'Cannot be determined', FALSE, 4),
(263, 'Luxury cars', FALSE, 1),
(263, 'Designer clothing', FALSE, 2),
(263, 'Essential medications', TRUE, 3),
(263, 'Restaurant meals', FALSE, 4),
(264, 'True', TRUE, 1),
(264, 'False', FALSE, 2),
(265, 'Responsiveness to income changes', FALSE, 1),
(265, 'Responsiveness to price of another good', TRUE, 2),
(265, 'Total market demand', FALSE, 3),
(265, 'Production responsiveness', FALSE, 4),
(266, 'Inferior good', FALSE, 1),
(266, 'Normal good', TRUE, 2),
(266, 'Complementary good', FALSE, 3),
(266, 'Luxury good', FALSE, 4),
(267, 'True', TRUE, 1),
(267, 'False', FALSE, 2),
(268, '%ΔQd / %ΔP', TRUE, 1),
(268, '%ΔP / %ΔQd', FALSE, 2),
(268, 'ΔQd / ΔP', FALSE, 3),
(268, 'P / Qd', FALSE, 4),
(269, 'Short-run', FALSE, 1),
(269, 'Long-run', TRUE, 2),
(269, 'Immediate', FALSE, 3),
(269, 'Market period', FALSE, 4),
(270, 'True', TRUE, 1),
(270, 'False', FALSE, 2);

-- ============================================
-- Quiz 28: Week 4 - Consumer Behavior (quiz_id = 28)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(28, 'What is utility in economics?', 'multiple_choice', 1.00, 1, 'Utility is the satisfaction or benefit that consumers derive from consuming goods and services.'),
(28, 'What does the budget constraint represent?', 'multiple_choice', 1.00, 2, 'The budget constraint shows all combinations of goods a consumer can afford given their income and prices.'),
(28, 'According to consumer choice theory, how do consumers maximize utility?', 'multiple_choice', 1.00, 3, 'Consumers maximize utility when the marginal utility per dollar spent is equal across all goods.'),
(28, 'The indifference curve shows all combinations of goods that cost the same amount.', 'true_false', 1.00, 4, 'False. Indifference curves show combinations providing equal satisfaction, while budget lines show equal cost.'),
(28, 'What is the marginal rate of substitution (MRS)?', 'multiple_choice', 1.00, 5, 'MRS is the rate at which a consumer is willing to trade one good for another while maintaining the same utility level.'),
(28, 'Which point on the budget line maximizes consumer utility?', 'multiple_choice', 1.00, 6, 'Utility is maximized where the budget line is tangent to the highest possible indifference curve.'),
(28, 'Normal indifference curves are convex to the origin due to diminishing MRS.', 'true_false', 1.00, 7, 'True. Convex shape reflects diminishing marginal rate of substitution as consumers have more of one good.'),
(28, 'What happens to consumer choice when income increases?', 'multiple_choice', 1.00, 8, 'Increased income shifts the budget constraint outward, allowing consumption of more goods.'),
(28, 'Which effect explains why demand curves slope downward?', 'multiple_choice', 1.00, 9, 'The substitution effect occurs when consumers substitute toward relatively cheaper goods as prices change.'),
(28, 'Revealed preference theory uses observed consumer behavior to infer preferences.', 'true_false', 1.00, 10, 'True. This theory deduces preferences from actual consumer choices rather than stated preferences.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(271, 'Production efficiency', FALSE, 1),
(271, 'Consumer satisfaction', TRUE, 2),
(271, 'Market price', FALSE, 3),
(271, 'Cost of living', FALSE, 4),
(272, 'Maximum possible utility', FALSE, 1),
(272, 'Affordable consumption bundles', TRUE, 2),
(272, 'Consumer preferences', FALSE, 3),
(272, 'Market demand', FALSE, 4),
(273, 'Spending all income', FALSE, 1),
(273, 'Equal marginal utility per dollar', TRUE, 2),
(273, 'Buying only necessities', FALSE, 3),
(273, 'Minimizing costs', FALSE, 4),
(274, 'True', FALSE, 1),
(274, 'False', TRUE, 2),
(275, 'Price ratio of goods', FALSE, 1),
(275, 'Willingness to trade goods', TRUE, 2),
(275, 'Income elasticity', FALSE, 3),
(275, 'Utility maximization point', FALSE, 4),
(276, 'Where it crosses the x-axis', FALSE, 1),
(276, 'Where it crosses the y-axis', FALSE, 2),
(276, 'Tangency with indifference curve', TRUE, 3),
(276, 'At the origin', FALSE, 4),
(277, 'True', TRUE, 1),
(277, 'False', FALSE, 2),
(278, 'Budget constraint shifts inward', FALSE, 1),
(278, 'Budget constraint shifts outward', TRUE, 2),
(278, 'Indifference curves shift', FALSE, 3),
(278, 'Prices decrease', FALSE, 4),
(279, 'Income effect', FALSE, 1),
(279, 'Substitution effect', TRUE, 2),
(279, 'Wealth effect', FALSE, 3),
(279, 'Scale effect', FALSE, 4),
(280, 'True', TRUE, 1),
(280, 'False', FALSE, 2);

-- ============================================
-- Quiz 29: Week 5 - Production and Costs (quiz_id = 29)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(29, 'What are fixed costs in production?', 'multiple_choice', 1.00, 1, 'Fixed costs do not change with the level of output in the short run, such as rent or salaries.'),
(29, 'What is the law of diminishing returns?', 'multiple_choice', 1.00, 2, 'This law states that as more variable inputs are added to fixed inputs, marginal product eventually decreases.'),
(29, 'Which cost curve is U-shaped in the short run?', 'multiple_choice', 1.00, 3, 'The average total cost curve is U-shaped due to initially falling then rising average costs.'),
(29, 'Economic costs include both explicit and implicit costs.', 'true_false', 1.00, 4, 'True. Economic costs include explicit monetary payments and implicit opportunity costs.'),
(29, 'What is marginal cost?', 'multiple_choice', 1.00, 5, 'Marginal cost is the additional cost of producing one more unit of output.'),
(29, 'Which concept describes the lowest cost at which a firm can produce a given output?', 'multiple_choice', 1.00, 6, 'The minimum efficient scale is the smallest output where long-run average cost is minimized.'),
(29, 'In the long run, all costs are variable costs.', 'true_false', 1.00, 7, 'True. The long run allows firms to adjust all inputs, so there are no fixed costs.'),
(29, 'What are economies of scale?', 'multiple_choice', 1.00, 8, 'Economies of scale occur when long-run average costs decrease as output increases.'),
(29, 'Which cost is always zero when production is zero?', 'multiple_choice', 1.00, 9, 'Variable costs are zero when output is zero because they depend on production level.'),
(29, 'The marginal cost curve always intersects the average total cost curve at its minimum point.', 'true_false', 1.00, 10, 'True. This mathematical relationship occurs because marginal changes affect averages.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(281, 'Costs that vary with output', FALSE, 1),
(281, 'Costs that don''t change with output', TRUE, 2),
(281, 'Costs of raw materials', FALSE, 3),
(281, 'Labor costs', FALSE, 4),
(282, 'Total output decreases', FALSE, 1),
(282, 'Marginal product eventually falls', TRUE, 2),
(282, 'Costs always increase', FALSE, 3),
(282, 'Prices must decrease', FALSE, 4),
(283, 'Marginal cost curve', FALSE, 1),
(283, 'Average total cost curve', TRUE, 2),
(283, 'Total cost curve', FALSE, 3),
(283, 'Fixed cost curve', FALSE, 4),
(284, 'True', TRUE, 1),
(284, 'False', FALSE, 2),
(285, 'Total cost divided by output', FALSE, 1),
(285, 'Cost of one more unit', TRUE, 2),
(285, 'Variable costs only', FALSE, 3),
(285, 'Fixed costs per unit', FALSE, 4),
(286, 'Marginal cost', FALSE, 1),
(286, 'Minimum efficient scale', TRUE, 2),
(286, 'Average variable cost', FALSE, 3),
(286, 'Total cost minimum', FALSE, 4),
(287, 'True', TRUE, 1),
(287, 'False', FALSE, 2),
(288, 'Decreasing long-run average costs', TRUE, 1),
(288, 'Decreasing short-run costs', FALSE, 2),
(288, 'Increasing marginal returns', FALSE, 3),
(288, 'Fixed cost reduction', FALSE, 4),
(289, 'Fixed costs', FALSE, 1),
(289, 'Variable costs', TRUE, 2),
(289, 'Total costs', FALSE, 3),
(289, 'Average costs', FALSE, 4),
(290, 'True', TRUE, 1),
(290, 'False', FALSE, 2);

-- ============================================
-- Quiz 30: Week 6 - Perfect Competition (quiz_id = 30)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(30, 'Which characteristic defines a perfectly competitive market?', 'multiple_choice', 1.00, 1, 'Perfect competition requires many buyers and sellers, homogeneous products, and free entry/exit.'),
(30, 'How is a perfectly competitive firm''s demand curve described?', 'multiple_choice', 1.00, 2, 'Each firm faces a perfectly elastic demand curve because it can sell all output at the market price.'),
(30, 'What is the profit-maximizing rule for a competitive firm?', 'multiple_choice', 1.00, 3, 'Firms maximize profit where marginal cost equals marginal revenue (which equals price in perfect competition).'),
(30, 'In perfect competition, individual firms have market power to set prices.', 'true_false', 1.00, 4, 'False. Competitive firms are price takers and must accept the market price.'),
(30, 'When should a competitive firm shut down in the short run?', 'multiple_choice', 1.00, 5, 'A firm should shut down if price falls below average variable cost, as it cannot cover variable costs.'),
(30, 'What is the break-even point for a competitive firm?', 'multiple_choice', 1.00, 6, 'The break-even point occurs where price equals minimum average total cost, resulting in zero economic profit.'),
(30, 'Perfectly competitive markets always achieve productive efficiency.', 'true_false', 1.00, 7, 'True. Competition forces firms to produce at minimum average cost in the long run.'),
(30, 'What happens in long-run equilibrium in perfect competition?', 'multiple_choice', 1.00, 8, 'Firms earn zero economic profit, produce at minimum ATC, and price equals marginal cost.'),
(30, 'Which cost is most important for the short-run shutdown decision?', 'multiple_choice', 1.00, 9, 'The shutdown decision depends on whether price covers average variable costs.'),
(30, 'Perfect competition results in allocative efficiency because P = MC.', 'true_false', 1.00, 10, 'True. Allocative efficiency occurs when price equals marginal cost, ensuring optimal resource allocation.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(291, 'Few sellers', FALSE, 1),
(291, 'Product differentiation', FALSE, 2),
(291, 'Many buyers and sellers', TRUE, 3),
(291, 'Barriers to entry', FALSE, 4),
(292, 'Perfectly elastic', TRUE, 1),
(292, 'Perfectly inelastic', FALSE, 2),
(292, 'Unit elastic', FALSE, 3),
(292, 'Relatively elastic', FALSE, 4),
(293, 'P = ATC', FALSE, 1),
(293, 'MR = MC', TRUE, 2),
(293, 'P = AVC', FALSE, 3),
(293, 'TR = TC', FALSE, 4),
(294, 'True', FALSE, 1),
(294, 'False', TRUE, 2),
(295, 'P < ATC', FALSE, 1),
(295, 'P < AVC', TRUE, 2),
(295, 'P < AFC', FALSE, 3),
(295, 'P < MC', FALSE, 4),
(296, 'P = AVC', FALSE, 1),
(296, 'P = minimum ATC', TRUE, 2),
(296, 'P = MC', FALSE, 3),
(296, 'MR = ATC', FALSE, 4),
(297, 'True', TRUE, 1),
(297, 'False', FALSE, 2),
(298, 'Economic profits are positive', FALSE, 1),
(298, 'Firms enter the market', FALSE, 2),
(298, 'Zero economic profit', TRUE, 3),
(298, 'Prices are above ATC', FALSE, 4),
(299, 'Average fixed cost', FALSE, 1),
(299, 'Average variable cost', TRUE, 2),
(299, 'Average total cost', FALSE, 3),
(299, 'Marginal cost', FALSE, 4),
(300, 'True', TRUE, 1),
(300, 'False', FALSE, 2);

-- ============================================
-- Quiz 31: Week 7 - Monopoly and Market Power (quiz_id = 31)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(31, 'What is the key characteristic of a monopoly?', 'multiple_choice', 1.00, 1, 'A monopoly exists when a single firm is the sole producer of a product with no close substitutes.'),
(31, 'Why do monopolies arise?', 'multiple_choice', 1.00, 2, 'Barriers to entry like patents, control of resources, or government licensing prevent competition.'),
(31, 'How does a monopolist''s demand curve compare to a competitive market?', 'multiple_choice', 1.00, 3, 'A monopolist faces the market demand curve, which slopes downward, unlike competitive firms.'),
(31, 'Monopolists can charge any price they want and still maximize profits.', 'true_false', 1.00, 4, 'False. Monopolists face demand constraints and maximize profit where MR = MC, not by charging the highest possible price.'),
(31, 'What is the relationship between marginal revenue and price for a monopolist?', 'multiple_choice', 1.00, 5, 'Marginal revenue is less than price for a monopolist because price must be lowered to sell additional units.'),
(31, 'Where does a monopolist maximize profit?', 'multiple_choice', 1.00, 6, 'Like all profit-maximizing firms, monopolists produce where marginal revenue equals marginal cost.'),
(31, 'Monopolies always earn economic profits in the long run.', 'true_false', 1.00, 7, 'False. While monopolies can earn long-run profits, they may have losses if demand decreases or costs increase.'),
(31, 'What is price discrimination?', 'multiple_choice', 1.00, 8, 'Price discrimination involves charging different prices to different customers for the same product.'),
(31, 'Which type of price discrimination charges each customer their maximum willingness to pay?', 'multiple_choice', 1.00, 9, 'First-degree price discrimination captures all consumer surplus by charging each customer their reservation price.'),
(31, 'Natural monopolies occur when average costs decline over the relevant output range.', 'true_false', 1.00, 10, 'True. Natural monopolies arise when one firm can supply the entire market at lower cost than multiple firms.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(301, 'Many competitors', FALSE, 1),
(301, 'Single seller', TRUE, 2),
(301, 'Homogeneous products', FALSE, 3),
(301, 'Free entry', FALSE, 4),
(302, 'Low prices', FALSE, 1),
(302, 'Barriers to entry', TRUE, 2),
(302, 'High demand', FALSE, 3),
(302, 'Government subsidies', FALSE, 4),
(303, 'Perfectly elastic', FALSE, 1),
(303, 'Market demand curve', TRUE, 2),
(303, 'Unit elastic', FALSE, 3),
(303, 'Perfectly inelastic', FALSE, 4),
(304, 'True', FALSE, 1),
(304, 'False', TRUE, 2),
(305, 'MR = P', FALSE, 1),
(305, 'MR < P', TRUE, 2),
(305, 'MR > P', FALSE, 3),
(305, 'MR = 0', FALSE, 4),
(306, 'P = MC', FALSE, 1),
(306, 'MR = MC', TRUE, 2),
(306, 'P = ATC', FALSE, 3),
(306, 'TR = TC', FALSE, 4),
(307, 'True', FALSE, 1),
(307, 'False', TRUE, 2),
(308, 'Different prices for different customers', TRUE, 1),
(308, 'Different quality products', FALSE, 2),
(308, 'Price matching', FALSE, 3),
(308, 'Bundling products', FALSE, 4),
(309, 'Second-degree', FALSE, 1),
(309, 'Third-degree', FALSE, 2),
(309, 'First-degree', TRUE, 3),
(309, 'Perfect', FALSE, 4),
(310, 'True', TRUE, 1),
(310, 'False', FALSE, 2);

-- ============================================
-- Quiz 32: Week 8 - Market Failures (quiz_id = 32)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(32, 'What is market failure?', 'multiple_choice', 1.00, 1, 'Market failure occurs when free markets allocate resources inefficiently.'),
(32, 'What are externalities?', 'multiple_choice', 1.00, 2, 'Externalities are costs or benefits that affect third parties not directly involved in a transaction.'),
(32, 'What is a public good?', 'multiple_choice', 1.00, 3, 'Public goods are non-excludable and non-rivalrous, meaning multiple people can consume them without reducing availability.'),
(32, 'Positive externalities lead to underproduction in free markets.', 'true_false', 1.00, 4, 'True. Positive externalities create social benefits exceeding private benefits, leading to underproduction.'),
(32, 'What is the free rider problem?', 'multiple_choice', 1.00, 5, 'The free rider problem occurs when people benefit from public goods without paying for them.'),
(32, 'How can governments correct negative externalities?', 'multiple_choice', 1.00, 6, 'Pigouvian taxes internalize external costs by making polluters pay for the damage they cause.'),
(32, 'Asymmetric information occurs when both parties have equal information about a transaction.', 'true_false', 1.00, 7, 'False. Asymmetric information means one party has more or better information than the other.'),
(32, 'What is moral hazard?', 'multiple_choice', 1.00, 8, 'Moral hazard occurs when one party takes risks because they don''t bear the full costs of those risks.'),
(32, 'Which solution addresses the problem of asymmetric information?', 'multiple_choice', 1.00, 9, 'Signaling involves informed parties revealing information to reduce information asymmetry.'),
(32, 'Common pool resources are both excludable and rivalrous.', 'true_false', 1.00, 10, 'False. Common pool resources are non-excludable but rivalrous, leading to potential overuse.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(311, 'Market price changes', FALSE, 1),
(311, 'Inefficient resource allocation', TRUE, 2),
(311, 'Firm bankruptcy', FALSE, 3),
(311, 'Government intervention', FALSE, 4),
(312, 'Internal costs', FALSE, 1),
(312, 'Effects on third parties', TRUE, 2),
(312, 'Market prices', FALSE, 3),
(312, 'Production costs', FALSE, 4),
(313, 'Government-produced goods', FALSE, 1),
(313, 'Non-excludable and non-rivalrous', TRUE, 2),
(313, 'Private goods', FALSE, 3),
(313, 'Expensive goods', FALSE, 4),
(314, 'True', TRUE, 1),
(314, 'False', FALSE, 2),
(315, 'Overconsumption of private goods', FALSE, 1),
(315, 'Benefiting without paying', TRUE, 2),
(315, 'Paying too much', FALSE, 3),
(315, 'Underproduction', FALSE, 4),
(316, 'Subsidies', FALSE, 1),
(316, 'Pigouvian taxes', TRUE, 2),
(316, 'Price controls', FALSE, 3),
(316, 'Quantity restrictions', FALSE, 4),
(317, 'True', FALSE, 1),
(317, 'False', TRUE, 2),
(318, 'Taking risks without bearing costs', TRUE, 1),
(318, 'Ethical business practices', FALSE, 2),
(318, 'Market competition', FALSE, 3),
(318, 'Government regulation', FALSE, 4),
(319, 'Price fixing', FALSE, 1),
(319, 'Signaling', TRUE, 2),
(319, 'Taxation', FALSE, 3),
(319, 'Subsidies', FALSE, 4),
(320, 'True', FALSE, 1),
(320, 'False', TRUE, 2);

USE elearning_db;

-- ============================================
-- COURSE 5: PERSONAL FINANCE
-- ============================================

-- Quiz 33: Week 1 - Goal Setting (quiz_id = 33)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(33, 'What is the first step in effective financial planning?', 'multiple_choice', 1.00, 1, 'Setting clear, specific financial goals provides direction and motivation for your financial plan.'),
(33, 'Which characteristic describes a well-defined financial goal?', 'multiple_choice', 1.00, 2, 'SMART goals are Specific, Measurable, Achievable, Relevant, and Time-bound.'),
(33, 'What is the purpose of an emergency fund in financial planning?', 'multiple_choice', 1.00, 3, 'An emergency fund provides financial security for unexpected expenses without derailing other goals.'),
(33, 'All financial goals should have the same time horizon.', 'true_false', 1.00, 4, 'False. Financial goals should span short-term (1 year), medium-term (1-5 years), and long-term (5+ years) timeframes.'),
(33, 'Which type of goal typically has the highest priority in financial planning?', 'multiple_choice', 1.00, 5, 'Basic needs and debt repayment should be addressed before pursuing other financial goals.'),
(33, 'What is the 50/30/20 rule in personal finance?', 'multiple_choice', 1.00, 6, 'This rule suggests allocating 50% to needs, 30% to wants, and 20% to savings and debt repayment.'),
(33, 'Financial goals should be reviewed and adjusted annually.', 'true_false', 1.00, 7, 'True. Regular reviews ensure goals remain relevant as life circumstances change.'),
(33, 'What is the main benefit of writing down financial goals?', 'multiple_choice', 1.00, 8, 'Written goals increase commitment and provide a clear roadmap to follow.'),
(33, 'Which factor is most important when prioritizing financial goals?', 'multiple_choice', 1.00, 9, 'Urgency and importance determine which goals should be addressed first.'),
(33, 'Goal setting should only focus on large, long-term objectives.', 'true_false', 1.00, 10, 'False. Including smaller, short-term goals provides motivation and builds momentum.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(321, 'Creating a budget', FALSE, 1),
(321, 'Setting financial goals', TRUE, 2),
(321, 'Tracking expenses', FALSE, 3),
(321, 'Investing money', FALSE, 4),
(322, 'Vague and general', FALSE, 1),
(322, 'SMART criteria', TRUE, 2),
(322, 'Based on others'' goals', FALSE, 3),
(322, 'Unchangeable', FALSE, 4),
(323, 'To earn high returns', FALSE, 1),
(323, 'For unexpected expenses', TRUE, 2),
(323, 'For vacation spending', FALSE, 3),
(323, 'To pay regular bills', FALSE, 4),
(324, 'True', FALSE, 1),
(324, 'False', TRUE, 2),
(325, 'Vacation planning', FALSE, 1),
(325, 'Basic needs and essential debt', TRUE, 2),
(325, 'Luxury purchases', FALSE, 3),
(325, 'Investment goals', FALSE, 4),
(326, 'Investment allocation', FALSE, 1),
(326, 'Budget percentage guidelines', TRUE, 2),
(326, 'Retirement spending', FALSE, 3),
(326, 'Debt repayment strategy', FALSE, 4),
(327, 'True', TRUE, 1),
(327, 'False', FALSE, 2),
(328, 'For tax purposes', FALSE, 1),
(328, 'Increased commitment and clarity', TRUE, 2),
(328, 'To show others', FALSE, 3),
(328, 'Because it''s required', FALSE, 4),
(329, 'What friends are doing', FALSE, 1),
(329, 'Urgency and importance', TRUE, 2),
(329, 'Ease of achievement', FALSE, 3),
(329, 'Popular financial trends', FALSE, 4),
(330, 'True', FALSE, 1),
(330, 'False', TRUE, 2);

-- ============================================
-- Quiz 34: Week 2 - Budgeting (quiz_id = 34)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(34, 'What is the primary purpose of a personal budget?', 'multiple_choice', 1.00, 1, 'A budget helps track income and expenses to ensure you''re living within your means and making progress toward goals.'),
(34, 'Which budgeting method uses envelopes for different spending categories?', 'multiple_choice', 1.00, 2, 'The envelope system allocates cash to different categories in physical envelopes to control spending.'),
(34, 'What is the first step in creating a budget?', 'multiple_choice', 1.00, 3, 'Tracking current spending provides the data needed to create a realistic budget.'),
(34, 'A budget should never be adjusted once created.', 'true_false', 1.00, 4, 'False. Budgets should be flexible and adjusted as income, expenses, or goals change.'),
(34, 'What is zero-based budgeting?', 'multiple_choice', 1.00, 5, 'Zero-based budgeting assigns every dollar of income to a specific category, so income minus expenses equals zero.'),
(34, 'Which expense category is typically fixed?', 'multiple_choice', 1.00, 6, 'Fixed expenses like rent or car payments remain the same each month.'),
(34, 'Variable expenses are easier to reduce than fixed expenses.', 'true_false', 1.00, 7, 'True. Variable expenses like dining out or entertainment can be adjusted more easily than fixed commitments.'),
(34, 'What is the purpose of tracking actual spending against budgeted amounts?', 'multiple_choice', 1.00, 8, 'Regular tracking helps identify spending patterns and areas where adjustments are needed.'),
(34, 'Which tool is most effective for ongoing budget management?', 'multiple_choice', 1.00, 9, 'Regular monitoring, whether weekly or monthly, helps maintain budget discipline.'),
(34, 'Budgeting is only necessary for people with low incomes.', 'true_false', 1.00, 10, 'False. People at all income levels benefit from budgeting to achieve financial goals.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(331, 'To restrict spending', FALSE, 1),
(331, 'To plan and control finances', TRUE, 2),
(331, 'To impress others', FALSE, 3),
(331, 'For tax documentation', FALSE, 4),
(332, 'Digital budgeting', FALSE, 1),
(332, 'Envelope system', TRUE, 2),
(332, 'Spreadsheet method', FALSE, 3),
(332, 'App-based budgeting', FALSE, 4),
(333, 'Setting goals', FALSE, 1),
(333, 'Tracking current spending', TRUE, 2),
(333, 'Creating categories', FALSE, 3),
(333, 'Calculating income', FALSE, 4),
(334, 'True', FALSE, 1),
(334, 'False', TRUE, 2),
(335, 'Spending nothing', FALSE, 1),
(335, 'Income minus expenses equals zero', TRUE, 2),
(335, 'No savings', FALSE, 3),
(335, 'Eliminating all expenses', FALSE, 4),
(336, 'Groceries', FALSE, 1),
(336, 'Entertainment', FALSE, 2),
(336, 'Rent or mortgage', TRUE, 3),
(336, 'Dining out', FALSE, 4),
(337, 'True', TRUE, 1),
(337, 'False', FALSE, 2),
(338, 'For punishment', FALSE, 1),
(338, 'To identify patterns and adjust', TRUE, 2),
(338, 'To feel guilty', FALSE, 3),
(338, 'Because it''s fun', FALSE, 4),
(339, 'Annual review', FALSE, 1),
(339, 'Regular monitoring', TRUE, 2),
(339, 'Setting and forgetting', FALSE, 3),
(339, 'Guessing expenses', FALSE, 4),
(340, 'True', FALSE, 1),
(340, 'False', TRUE, 2);

-- ============================================
-- Quiz 35: Week 3 - Banking and Saving (quiz_id = 35)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(35, 'What is the main advantage of using a bank account for savings?', 'multiple_choice', 1.00, 1, 'FDIC insurance protects deposits up to $250,000 per account type per institution.'),
(35, 'What is the difference between a checking and savings account?', 'multiple_choice', 1.00, 2, 'Checking accounts are for daily transactions, while savings accounts are for storing money and earning interest.'),
(35, 'What does APY stand for in banking?', 'multiple_choice', 1.00, 3, 'APY includes compound interest and reflects the actual rate of return earned.'),
(35, 'Online banks typically offer higher interest rates than traditional brick-and-mortar banks.', 'true_false', 1.00, 4, 'True. Online banks have lower overhead costs and often pass savings to customers through higher rates.'),
(35, 'What is the purpose of compound interest?', 'multiple_choice', 1.00, 5, 'Compound interest earns interest on both the principal and accumulated interest, accelerating growth.'),
(35, 'Which type of account is best for emergency funds?', 'multiple_choice', 1.00, 6, 'High-yield savings accounts offer safety, liquidity, and better returns than traditional savings accounts.'),
(35, 'All bank accounts are insured by the FDIC.', 'true_false', 1.00, 7, 'False. Only accounts at FDIC-member banks are insured, and certain investment accounts may not be covered.'),
(35, 'What is a CD (Certificate of Deposit)?', 'multiple_choice', 1.00, 8, 'CDs offer fixed interest rates for specific terms, with penalties for early withdrawal.'),
(35, 'What is the Rule of 72 used for?', 'multiple_choice', 1.00, 9, 'The Rule of 72 estimates how long it takes money to double at a given interest rate (72/interest rate).'),
(35, 'Automated transfers to savings accounts can help build savings consistently.', 'true_false', 1.00, 10, 'True. Automation makes saving effortless and ensures consistency.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(341, 'FDIC insurance', TRUE, 1),
(341, 'High returns', FALSE, 2),
(341, 'No fees', FALSE, 3),
(341, 'Easy access', FALSE, 4),
(342, 'Checking for spending, savings for storing', TRUE, 1),
(342, 'No difference', FALSE, 2),
(342, 'Savings for daily use', FALSE, 3),
(342, 'Checking earns more interest', FALSE, 4),
(343, 'Annual Percentage Yield', TRUE, 1),
(343, 'Average Percentage Yearly', FALSE, 2),
(343, 'Annual Payment Yield', FALSE, 3),
(343, 'Accumulated Percentage Yearly', FALSE, 4),
(344, 'True', TRUE, 1),
(344, 'False', FALSE, 2),
(345, 'Earning interest on interest', TRUE, 1),
(345, 'Simple interest calculation', FALSE, 2),
(345, 'Bank fees', FALSE, 3),
(345, 'Loan interest', FALSE, 4),
(346, 'Checking account', FALSE, 1),
(346, 'High-yield savings account', TRUE, 2),
(346, 'CD account', FALSE, 3),
(346, 'Investment account', FALSE, 4),
(347, 'True', FALSE, 1),
(347, 'False', TRUE, 2),
(348, 'Credit card', FALSE, 1),
(348, 'Time-based savings account', TRUE, 2),
(348, 'Debit card', FALSE, 3),
(348, 'Loan product', FALSE, 4),
(349, 'Calculating interest', FALSE, 1),
(349, 'Estimating doubling time', TRUE, 2),
(349, 'Determining bank fees', FALSE, 3),
(349, 'Budgeting expenses', FALSE, 4),
(350, 'True', TRUE, 1),
(350, 'False', FALSE, 2);

-- ============================================
-- Quiz 36: Week 4 - Credit and Debt (quiz_id = 36)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(36, 'What is a credit score?', 'multiple_choice', 1.00, 1, 'A credit score is a numerical representation of your creditworthiness based on credit history.'),
(36, 'Which factor has the greatest impact on your credit score?', 'multiple_choice', 1.00, 2, 'Payment history is the most significant factor, accounting for about 35% of your FICO score.'),
(36, 'What is the debt snowball method?', 'multiple_choice', 1.00, 3, 'The debt snowball focuses on paying off smallest debts first for psychological wins.'),
(36, 'Carrying a balance on credit cards helps improve your credit score.', 'true_false', 1.00, 4, 'False. Paying balances in full each month is better for your score and avoids interest charges.'),
(36, 'What is a good credit utilization ratio?', 'multiple_choice', 1.00, 5, 'Keeping credit utilization below 30% helps maintain a good credit score.'),
(36, 'Which type of debt typically has the highest interest rate?', 'multiple_choice', 1.00, 6, 'Credit cards often have the highest APRs, making them the most expensive form of debt.'),
(36, 'Checking your own credit report lowers your credit score.', 'true_false', 1.00, 7, 'False. Checking your own credit is a soft inquiry and doesn''t affect your score.'),
(36, 'What is the difference between secured and unsecured debt?', 'multiple_choice', 1.00, 8, 'Secured debt is backed by collateral, while unsecured debt relies only on your promise to repay.'),
(36, 'What is debt consolidation?', 'multiple_choice', 1.00, 9, 'Debt consolidation combines multiple debts into one payment, often with a lower interest rate.'),
(36, 'All three major credit bureaus must have identical information.', 'true_false', 1.00, 10, 'False. Credit bureaus may have different information, which is why you should check all three reports.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(351, 'Numerical creditworthiness measure', TRUE, 1),
(351, 'Bank account balance', FALSE, 2),
(351, 'Income level', FALSE, 3),
(351, 'Employment history', FALSE, 4),
(352, 'Credit mix', FALSE, 1),
(352, 'Payment history', TRUE, 2),
(352, 'Credit inquiries', FALSE, 3),
(352, 'Account age', FALSE, 4),
(353, 'Paying highest interest first', FALSE, 1),
(353, 'Paying smallest balances first', TRUE, 2),
(353, 'Paying all debts equally', FALSE, 3),
(353, 'Ignoring small debts', FALSE, 4),
(354, 'True', FALSE, 1),
(354, 'False', TRUE, 2),
(355, 'Below 30%', TRUE, 1),
(355, 'Below 50%', FALSE, 2),
(355, 'Below 70%', FALSE, 3),
(355, 'Below 90%', FALSE, 4),
(356, 'Mortgage', FALSE, 1),
(356, 'Student loans', FALSE, 2),
(356, 'Credit cards', TRUE, 3),
(356, 'Auto loans', FALSE, 4),
(357, 'True', FALSE, 1),
(357, 'False', TRUE, 2),
(358, 'Collateral requirement', TRUE, 1),
(358, 'Interest rates', FALSE, 2),
(358, 'Payment terms', FALSE, 3),
(358, 'Credit score impact', FALSE, 4),
(359, 'Combining multiple debts', TRUE, 1),
(359, 'Increasing debt', FALSE, 2),
(359, 'Avoiding payments', FALSE, 3),
(359, 'Transferring to friends', FALSE, 4),
(360, 'True', FALSE, 1),
(360, 'False', TRUE, 2);

-- ============================================
-- Quiz 37: Week 5 - Investing Fundamentals (quiz_id = 37)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(37, 'What is the primary goal of investing?', 'multiple_choice', 1.00, 1, 'Investing aims to grow wealth over time by putting money to work in various assets.'),
(37, 'Which investment principle suggests spreading money across different assets?', 'multiple_choice', 1.00, 2, 'Diversification reduces risk by investing in various assets that may perform differently.'),
(37, 'What is the relationship between risk and return in investing?', 'multiple_choice', 1.00, 3, 'Higher potential returns typically come with higher risk, and vice versa.'),
(37, 'Investing is the same as saving.', 'true_false', 1.00, 4, 'False. Saving preserves money with minimal risk, while investing seeks growth with some risk.'),
(37, 'What is dollar-cost averaging?', 'multiple_choice', 1.00, 5, 'Investing fixed amounts regularly reduces the impact of market timing and emotional decisions.'),
(37, 'Which investment typically carries the highest risk?', 'multiple_choice', 1.00, 6, 'Individual stocks are riskier than diversified funds because company-specific issues can cause large losses.'),
(37, 'Bonds are generally riskier than stocks.', 'true_false', 1.00, 7, 'False. Bonds are typically less risky than stocks but offer lower potential returns.'),
(37, 'What is a mutual fund?', 'multiple_choice', 1.00, 8, 'Mutual funds pool money from many investors to buy a diversified portfolio of securities.'),
(37, 'Which factor is most important for long-term investment success?', 'multiple_choice', 1.00, 9, 'Time in the market allows compounding to work effectively, often outweighing timing decisions.'),
(37, 'All investments are guaranteed to make money.', 'true_false', 1.00, 10, 'False. All investments carry some risk, and losses are possible.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(361, 'Growing wealth over time', TRUE, 1),
(361, 'Preserving cash', FALSE, 2),
(361, 'Avoiding taxes', FALSE, 3),
(361, 'Spending money', FALSE, 4),
(362, 'Diversification', TRUE, 1),
(362, 'Speculation', FALSE, 2),
(362, 'Concentration', FALSE, 3),
(362, 'Leverage', FALSE, 4),
(363, 'No relationship', FALSE, 1),
(363, 'Higher risk, higher return', TRUE, 2),
(363, 'Higher risk, lower return', FALSE, 3),
(363, 'Inverse relationship', FALSE, 4),
(364, 'True', FALSE, 1),
(364, 'False', TRUE, 2),
(365, 'Timing the market', FALSE, 1),
(365, 'Regular fixed-amount investing', TRUE, 2),
(365, 'Buying only winners', FALSE, 3),
(365, 'Selling during downturns', FALSE, 4),
(366, 'Government bonds', FALSE, 1),
(366, 'Individual stocks', TRUE, 2),
(366, 'Money market funds', FALSE, 3),
(366, 'CDs', FALSE, 4),
(367, 'True', FALSE, 1),
(367, 'False', TRUE, 2),
(368, 'Single stock', FALSE, 1),
(368, 'Pooled investment vehicle', TRUE, 2),
(368, 'Bank account', FALSE, 3),
(368, 'Loan product', FALSE, 4),
(369, 'Market timing', FALSE, 1),
(369, 'Time in the market', TRUE, 2),
(369, 'Frequent trading', FALSE, 3),
(369, 'Following trends', FALSE, 4),
(370, 'True', FALSE, 1),
(370, 'False', TRUE, 2);

-- ============================================
-- Quiz 38: Week 6 - Retirement Planning (quiz_id = 38)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(38, 'What is the main advantage of starting retirement savings early?', 'multiple_choice', 1.00, 1, 'Starting early maximizes compound growth, where earnings generate their own earnings over time.'),
(38, 'What is a 401(k) plan?', 'multiple_choice', 1.00, 2, 'A 401(k) is an employer-sponsored retirement plan with tax advantages.'),
(38, 'What does IRA stand for?', 'multiple_choice', 1.00, 3, 'IRA stands for Individual Retirement Arrangement, a personal retirement savings account.'),
(38, 'Social Security benefits alone are sufficient for most people''s retirement needs.', 'true_false', 1.00, 4, 'False. Social Security typically replaces only about 40% of pre-retirement income for average earners.'),
(38, 'What is the "rule of 25" for retirement planning?', 'multiple_choice', 1.00, 5, 'This rule suggests you need 25 times your annual expenses saved to retire using the 4% withdrawal rule.'),
(38, 'Which retirement account offers tax-free withdrawals in retirement?', 'multiple_choice', 1.00, 6, 'Roth accounts are funded with after-tax money, allowing tax-free qualified withdrawals.'),
(38, 'Employer matching in 401(k) plans is essentially free money.', 'true_false', 1.00, 7, 'True. Employer matches represent immediate return on your contributions.'),
(38, 'What is asset allocation in retirement planning?', 'multiple_choice', 1.00, 8, 'Asset allocation involves dividing investments among different categories like stocks, bonds, and cash.'),
(38, 'What is the 4% rule in retirement?', 'multiple_choice', 1.00, 9, 'This rule suggests withdrawing 4% of retirement savings annually for a high probability of funds lasting 30 years.'),
(38, 'Retirement planning should only begin in your 50s.', 'true_false', 1.00, 10, 'False. The earlier you start retirement planning, the more time compound growth has to work.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(371, 'More compound growth', TRUE, 1),
(371, 'Higher contribution limits', FALSE, 2),
(371, 'Less paperwork', FALSE, 3),
(371, 'Guaranteed returns', FALSE, 4),
(372, 'Employer retirement plan', TRUE, 1),
(372, 'Government pension', FALSE, 2),
(372, 'Insurance product', FALSE, 3),
(372, 'Tax credit', FALSE, 4),
(373, 'Individual Retirement Arrangement', TRUE, 1),
(373, 'Internal Revenue Account', FALSE, 2),
(373, 'Investment Retirement Asset', FALSE, 3),
(373, 'Individual Revenue Account', FALSE, 4),
(374, 'True', FALSE, 1),
(374, 'False', TRUE, 2),
(375, 'Save 25% of income', FALSE, 1),
(375, '25 times annual expenses', TRUE, 2),
(375, 'Retire at age 25', FALSE, 3),
(375, 'Work 25 years', FALSE, 4),
(376, 'Traditional IRA', FALSE, 1),
(376, 'Roth IRA', TRUE, 2),
(376, '401(k)', FALSE, 3),
(376, 'Taxable account', FALSE, 4),
(377, 'True', TRUE, 1),
(377, 'False', FALSE, 2),
(378, 'Investment diversification', TRUE, 1),
(378, 'Social Security planning', FALSE, 2),
(378, 'Budgeting expenses', FALSE, 3),
(378, 'Estate planning', FALSE, 4),
(379, 'Withdrawal rate guideline', TRUE, 1),
(379, 'Savings percentage', FALSE, 2),
(379, 'Tax rate', FALSE, 3),
(379, 'Inflation rate', FALSE, 4),
(380, 'True', FALSE, 1),
(380, 'False', TRUE, 2);

-- ============================================
-- Quiz 39: Week 7 - Insurance (quiz_id = 39)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(39, 'What is the primary purpose of insurance?', 'multiple_choice', 1.00, 1, 'Insurance transfers financial risk from individuals to companies in exchange for premium payments.'),
(39, 'What is a deductible in insurance?', 'multiple_choice', 1.00, 2, 'The deductible is the amount you pay out-of-pocket before insurance coverage begins.'),
(39, 'Which type of insurance is most important for young, healthy adults?', 'multiple_choice', 1.00, 3, 'Health insurance protects against potentially catastrophic medical costs.'),
(39, 'Life insurance is necessary for everyone.', 'true_false', 1.00, 4, 'False. Life insurance is primarily for those with dependents who rely on their income.'),
(39, 'What is the difference between term and whole life insurance?', 'multiple_choice', 1.00, 5, 'Term life provides coverage for a specific period, while whole life lasts a lifetime and includes savings.'),
(39, 'What does liability auto insurance cover?', 'multiple_choice', 1.00, 6, 'Liability coverage pays for damage and injuries you cause to others in an accident.'),
(39, 'Renters insurance only covers the building structure.', 'true_false', 1.00, 7, 'False. Renters insurance covers personal property and liability, not the building itself.'),
(39, 'What is an insurance premium?', 'multiple_choice', 1.00, 8, 'The premium is the regular payment made to maintain insurance coverage.'),
(39, 'What is the purpose of disability insurance?', 'multiple_choice', 1.00, 9, 'Disability insurance replaces income if you become unable to work due to illness or injury.'),
(39, 'All insurance policies have the same coverage terms and conditions.', 'true_false', 1.00, 10, 'False. Insurance policies vary significantly, so it''s important to read and compare coverage details.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(381, 'Risk transfer', TRUE, 1),
(381, 'Wealth building', FALSE, 2),
(381, 'Tax avoidance', FALSE, 3),
(381, 'Investment', FALSE, 4),
(382, 'Monthly payment', FALSE, 1),
(382, 'Out-of-pocket amount before coverage', TRUE, 2),
(382, 'Insurance company profit', FALSE, 3),
(382, 'Coverage limit', FALSE, 4),
(383, 'Life insurance', FALSE, 1),
(383, 'Health insurance', TRUE, 2),
(383, 'Disability insurance', FALSE, 3),
(383, 'Long-term care insurance', FALSE, 4),
(384, 'True', FALSE, 1),
(384, 'False', TRUE, 2),
(385, 'Temporary vs permanent coverage', TRUE, 1),
(385, 'Cost difference only', FALSE, 2),
(385, 'Medical requirements', FALSE, 3),
(385, 'Investment options', FALSE, 4),
(386, 'Your vehicle repairs', FALSE, 1),
(386, 'Damage to others', TRUE, 2),
(386, 'Theft of personal items', FALSE, 3),
(386, 'Medical costs for you', FALSE, 4),
(387, 'True', FALSE, 1),
(387, 'False', TRUE, 2),
(388, 'Insurance payment', TRUE, 1),
(388, 'Deductible amount', FALSE, 2),
(388, 'Coverage limit', FALSE, 3),
(388, 'Claim payment', FALSE, 4),
(389, 'Income replacement if disabled', TRUE, 1),
(389, 'Medical bills', FALSE, 2),
(389, 'Life insurance', FALSE, 3),
(389, 'Property damage', FALSE, 4),
(390, 'True', FALSE, 1),
(390, 'False', TRUE, 2);

-- ============================================
-- Quiz 40: Week 8 - Tax Planning (quiz_id = 40)
-- ============================================

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(40, 'What is the difference between a tax credit and a tax deduction?', 'multiple_choice', 1.00, 1, 'Tax credits reduce tax liability dollar-for-dollar, while deductions reduce taxable income.'),
(40, 'Which retirement account offers tax-deductible contributions?', 'multiple_choice', 1.00, 2, 'Traditional IRA and 401(k) contributions may be tax-deductible, reducing current taxable income.'),
(40, 'What are estimated tax payments?', 'multiple_choice', 1.00, 3, 'Self-employed individuals and others make quarterly estimated payments to cover tax liability.'),
(40, 'Tax avoidance and tax evasion are the same thing.', 'true_false', 1.00, 4, 'False. Tax avoidance is legal minimization of taxes, while tax evasion is illegal non-payment.'),
(40, 'What is the standard deduction?', 'multiple_choice', 1.00, 5, 'The standard deduction is a fixed amount that reduces taxable income, available to all taxpayers.'),
(40, 'Which investment gains preferential tax treatment?', 'multiple_choice', 1.00, 6, 'Long-term capital gains (assets held over one year) are taxed at lower rates than ordinary income.'),
(40, 'You should keep tax records for at least three years.', 'true_false', 1.00, 7, 'True. The IRS typically has three years to audit returns, but some situations require longer retention.'),
(40, 'What is tax-loss harvesting?', 'multiple_choice', 1.00, 8, 'Selling investments at a loss to offset capital gains and reduce tax liability.'),
(40, 'Which education savings account offers tax-free growth?', 'multiple_choice', 1.00, 9, '529 plans allow tax-free growth and withdrawals for qualified education expenses.'),
(40, 'Everyone needs to hire a professional tax preparer.', 'true_false', 1.00, 10, 'False. Many people with simple tax situations can prepare their own returns using tax software.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(391, 'Credit reduces tax, deduction reduces income', TRUE, 1),
(391, 'No difference', FALSE, 2),
(391, 'Deduction is better', FALSE, 3),
(391, 'Credit is for businesses only', FALSE, 4),
(392, 'Roth IRA', FALSE, 1),
(392, 'Traditional IRA', TRUE, 2),
(392, 'Taxable account', FALSE, 3),
(392, 'Savings account', FALSE, 4),
(393, 'Quarterly tax payments', TRUE, 1),
(393, 'Final tax payment', FALSE, 2),
(393, 'Early refund', FALSE, 3),
(393, 'State taxes only', FALSE, 4),
(394, 'True', FALSE, 1),
(394, 'False', TRUE, 2),
(395, 'Fixed income reduction', TRUE, 1),
(395, 'Itemized deduction limit', FALSE, 2),
(395, 'Tax credit amount', FALSE, 3),
(395, 'Business expense', FALSE, 4),
(396, 'Long-term capital gains', TRUE, 1),
(396, 'Interest income', FALSE, 2),
(396, 'Short-term gains', FALSE, 3),
(396, 'Ordinary dividends', FALSE, 4),
(397, 'True', TRUE, 1),
(397, 'False', FALSE, 2),
(398, 'Selling losses to offset gains', TRUE, 1),
(398, 'Harvesting crops for tax benefits', FALSE, 2),
(398, 'Early tax filing', FALSE, 3),
(398, 'Investment strategy', FALSE, 4),
(399, '529 plan', TRUE, 1),
(399, 'Savings account', FALSE, 2),
(399, 'CD', FALSE, 3),
(399, 'Brokerage account', FALSE, 4),
(400, 'True', FALSE, 1),
(400, 'False', TRUE, 2);

-- ============================================
-- COURSE 6: INTRODUCTION TO PROGRAMMING
-- ============================================

-- Quiz 41: Week 1 - Programming Basics (quiz_id = 41)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(41, 'What is a variable in programming?', 'multiple_choice', 1.00, 1, 'A variable is a named storage location that holds a value that can change during program execution.'),
(41, 'Which of the following is NOT a primitive data type?', 'multiple_choice', 1.00, 2, 'Array is a complex data structure, not a primitive data type like integers, booleans, or strings.'),
(41, 'What does IDE stand for?', 'multiple_choice', 1.00, 3, 'IDE stands for Integrated Development Environment, which provides comprehensive tools for software development.'),
(41, 'Comments in code are executed by the computer.', 'true_false', 1.00, 4, 'False. Comments are ignored by the compiler or interpreter and are for human readability only.'),
(41, 'Which operator is used for assignment in most programming languages?', 'multiple_choice', 1.00, 5, 'The equals sign (=) is commonly used for assignment, while double equals (==) is for comparison.'),
(41, 'What is the purpose of a compiler?', 'multiple_choice', 1.00, 6, 'A compiler translates source code into machine code before execution, while an interpreter translates during execution.'),
(41, 'Pseudocode is actual programming code that can be executed.', 'true_false', 1.00, 7, 'False. Pseudocode is an informal way to describe algorithms using natural language and programming concepts.'),
(41, 'Which programming paradigm focuses on objects and classes?', 'multiple_choice', 1.00, 8, 'Object-oriented programming organizes code around objects and classes rather than functions and logic.'),
(41, 'What is syntax in programming?', 'multiple_choice', 1.00, 9, 'Syntax refers to the rules that define the structure of a programming language, similar to grammar in natural languages.'),
(41, 'Debugging is the process of finding and fixing errors in code.', 'true_false', 1.00, 10, 'True. Debugging involves identifying, analyzing, and removing errors or bugs from software programs.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(401, 'A named storage location for data', TRUE, 1),
(401, 'A mathematical equation', FALSE, 2),
(401, 'A type of loop', FALSE, 3),
(401, 'A comment in code', FALSE, 4),
(402, 'Integer', FALSE, 1),
(402, 'Boolean', FALSE, 2),
(402, 'String', FALSE, 3),
(402, 'Array', TRUE, 4),
(403, 'Integrated Development Environment', TRUE, 1),
(403, 'International Data Exchange', FALSE, 2),
(403, 'Interactive Design Element', FALSE, 3),
(403, 'Internal Debugging Engine', FALSE, 4),
(404, 'True', FALSE, 1),
(404, 'False', TRUE, 2),
(405, '=', TRUE, 1),
(405, '==', FALSE, 2),
(405, ':=', FALSE, 3),
(405, '->', FALSE, 4),
(406, 'Translate source code to machine code', TRUE, 1),
(406, 'Execute code line by line', FALSE, 2),
(406, 'Debug programs automatically', FALSE, 3),
(406, 'Create user interfaces', FALSE, 4),
(407, 'True', FALSE, 1),
(407, 'False', TRUE, 2),
(408, 'Object-oriented programming', TRUE, 1),
(408, 'Functional programming', FALSE, 2),
(408, 'Procedural programming', FALSE, 3),
(408, 'Logical programming', FALSE, 4),
(409, 'The rules for writing code', TRUE, 1),
(409, 'The meaning of code', FALSE, 2),
(409, 'The speed of execution', FALSE, 3),
(409, 'The user interface', FALSE, 4),
(410, 'True', TRUE, 1),
(410, 'False', FALSE, 2);

-- Quiz 42: Week 2 - Control Flow (quiz_id = 42)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(42, 'What is the purpose of conditional statements?', 'multiple_choice', 1.00, 1, 'Conditional statements allow programs to make decisions and execute different code blocks based on conditions.'),
(42, 'Which loop executes at least once regardless of the condition?', 'multiple_choice', 1.00, 2, 'A do-while loop checks the condition after executing the loop body, ensuring at least one execution.'),
(42, 'What does the "break" statement do in a loop?', 'multiple_choice', 1.00, 3, 'The break statement immediately terminates the loop and continues with the code after the loop.'),
(42, 'Switch statements can only be used with integer values.', 'true_false', 1.00, 4, 'False. Modern programming languages allow switch statements with various data types including strings and enums.'),
(42, 'Which operator has the highest precedence in most programming languages?', 'multiple_choice', 1.00, 5, 'Parentheses have the highest precedence and can be used to explicitly control order of operations.'),
(42, 'What is the difference between "==" and "===" in some languages?', 'multiple_choice', 1.00, 6, 'Triple equals (===) checks both value and type, while double equals (==) may perform type conversion.'),
(42, 'All programming languages use the same syntax for control flow structures.', 'true_false', 1.00, 7, 'False. Different programming languages have variations in syntax for control flow structures like loops and conditionals.'),
(42, 'What is short-circuit evaluation in logical operators?', 'multiple_choice', 1.00, 8, 'Short-circuit evaluation stops evaluating expressions as soon as the overall result is determined.'),
(42, 'Which loop is best when the number of iterations is known?', 'multiple_choice', 1.00, 9, 'For loops are ideal when the number of iterations is known beforehand, as they include initialization, condition, and increment.'),
(42, 'Nested if statements can always be replaced with switch statements.', 'true_false', 1.00, 10, 'False. Switch statements work with discrete values, while nested if statements can handle complex conditions and ranges.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(411, 'Make decisions based on conditions', TRUE, 1),
(411, 'Repeat code multiple times', FALSE, 2),
(411, 'Store data values', FALSE, 3),
(411, 'Define functions', FALSE, 4),
(412, 'For loop', FALSE, 1),
(412, 'While loop', FALSE, 2),
(412, 'Do-while loop', TRUE, 3),
(412, 'For-each loop', FALSE, 4),
(413, 'Exit the loop immediately', TRUE, 1),
(413, 'Skip current iteration', FALSE, 2),
(413, 'Restart the loop', FALSE, 3),
(413, 'Check loop condition', FALSE, 4),
(414, 'True', FALSE, 1),
(414, 'False', TRUE, 2),
(415, 'Parentheses ()', TRUE, 1),
(415, 'Multiplication *', FALSE, 2),
(415, 'Addition +', FALSE, 3),
(415, 'Assignment =', FALSE, 4),
(416, '== checks value, === checks value and type', TRUE, 1),
(416, '== is for strings, === is for numbers', FALSE, 2),
(416, 'No difference', FALSE, 3),
(416, '== is newer syntax', FALSE, 4),
(417, 'True', FALSE, 1),
(417, 'False', TRUE, 2),
(418, 'Stop evaluating when result is known', TRUE, 1),
(418, 'Evaluate all expressions completely', FALSE, 2),
(418, 'Use fewer CPU cycles', FALSE, 3),
(418, 'A type of loop optimization', FALSE, 4),
(419, 'For loop', TRUE, 1),
(419, 'While loop', FALSE, 2),
(419, 'Do-while loop', FALSE, 3),
(419, 'Infinite loop', FALSE, 4),
(420, 'True', FALSE, 1),
(420, 'False', TRUE, 2);

-- Quiz 43: Week 3 - Functions (quiz_id = 43)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(43, 'What is a function in programming?', 'multiple_choice', 1.00, 1, 'A function is a reusable block of code that performs a specific task and can be called from other parts of the program.'),
(43, 'What are parameters in a function?', 'multiple_choice', 1.00, 2, 'Parameters are variables listed in the function definition that receive values passed to the function.'),
(43, 'What is the difference between parameters and arguments?', 'multiple_choice', 1.00, 3, 'Parameters are the variables in the function definition, while arguments are the actual values passed when calling the function.'),
(43, 'All functions must return a value.', 'true_false', 1.00, 4, 'False. Functions can be void, meaning they don''t return any value, but simply perform actions.'),
(43, 'What is function overloading?', 'multiple_choice', 1.00, 5, 'Function overloading allows multiple functions with the same name but different parameters in the same scope.'),
(43, 'What is a recursive function?', 'multiple_choice', 1.00, 6, 'A recursive function is one that calls itself either directly or indirectly to solve a problem.'),
(43, 'Global variables can be accessed from any function in the program.', 'true_false', 1.00, 7, 'True. Global variables have program-wide scope and can be accessed from any function, unlike local variables.'),
(43, 'What is the purpose of the "return" statement?', 'multiple_choice', 1.00, 8, 'The return statement specifies the value to be returned from a function and exits the function immediately.'),
(43, 'What is the call stack?', 'multiple_choice', 1.00, 9, 'The call stack is a data structure that tracks function calls and their execution contexts in a program.'),
(43, 'Pure functions always produce the same output for the same input and have no side effects.', 'true_false', 1.00, 10, 'True. Pure functions are deterministic and don''t modify external state, making them predictable and testable.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(421, 'Reusable block of code', TRUE, 1),
(421, 'A type of variable', FALSE, 2),
(421, 'A loop structure', FALSE, 3),
(421, 'A comment section', FALSE, 4),
(422, 'Input variables for the function', TRUE, 1),
(422, 'The return value', FALSE, 2),
(422, 'Local variables inside the function', FALSE, 3),
(422, 'Global variables', FALSE, 4),
(423, 'Parameters are in definition, arguments are passed values', TRUE, 1),
(423, 'Arguments are in definition, parameters are passed values', FALSE, 2),
(423, 'They are the same thing', FALSE, 3),
(423, 'Parameters are for numbers, arguments for strings', FALSE, 4),
(424, 'True', FALSE, 1),
(424, 'False', TRUE, 2),
(425, 'Multiple functions with same name but different parameters', TRUE, 1),
(425, 'Functions that run too long', FALSE, 2),
(425, 'Functions that call themselves', FALSE, 3),
(425, 'Functions with no parameters', FALSE, 4),
(426, 'A function that calls itself', TRUE, 1),
(426, 'A function with many parameters', FALSE, 2),
(426, 'A function that never returns', FALSE, 3),
(426, 'A function that calls other functions', FALSE, 4),
(427, 'True', TRUE, 1),
(427, 'False', FALSE, 2),
(428, 'Exit function and return a value', TRUE, 1),
(428, 'Start the function', FALSE, 2),
(428, 'Print to console', FALSE, 3),
(428, 'Declare variables', FALSE, 4),
(429, 'Tracks function calls and execution', TRUE, 1),
(429, 'Stores global variables', FALSE, 2),
(429, 'Manages memory allocation', FALSE, 3),
(429, 'Handles user input', FALSE, 4),
(430, 'True', TRUE, 1),
(430, 'False', FALSE, 2);

-- Quiz 44: Week 4 - Data Structures (quiz_id = 44)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(44, 'What is an array?', 'multiple_choice', 1.00, 1, 'An array is a collection of elements stored in contiguous memory locations, accessible by index.'),
(44, 'Which data structure follows LIFO (Last-In-First-Out) principle?', 'multiple_choice', 1.00, 2, 'A stack follows LIFO where the last element added is the first one removed, like a stack of plates.'),
(44, 'What is the main advantage of a linked list over an array?', 'multiple_choice', 1.00, 3, 'Linked lists allow efficient insertion and deletion at any position without shifting elements, unlike arrays.'),
(44, 'All elements in an array must be of the same data type.', 'true_false', 1.00, 4, 'True. In most strongly-typed languages, arrays are homogeneous and contain elements of the same type.'),
(44, 'What is a hash table?', 'multiple_choice', 1.00, 5, 'A hash table is a data structure that maps keys to values using a hash function for efficient lookup.'),
(44, 'Which data structure uses FIFO (First-In-First-Out) principle?', 'multiple_choice', 1.00, 6, 'A queue follows FIFO where the first element added is the first one removed, like people in a line.'),
(44, 'Binary search trees always remain balanced.', 'true_false', 1.00, 7, 'False. Binary search trees can become unbalanced depending on the insertion order, affecting performance.'),
(44, 'What is the time complexity of accessing an element by index in an array?', 'multiple_choice', 1.00, 8, 'Array access by index is O(1) constant time because elements are stored in contiguous memory locations.'),
(44, 'Which data structure is ideal for implementing undo functionality?', 'multiple_choice', 1.00, 9, 'A stack is perfect for undo functionality as it can store actions in LIFO order for reversal.'),
(44, 'Graphs can only represent hierarchical relationships.', 'true_false', 1.00, 10, 'False. Graphs can represent various relationships including networks, social connections, and routes, not just hierarchies.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(431, 'Collection of elements indexed sequentially', TRUE, 1),
(431, 'A type of function', FALSE, 2),
(431, 'A loop structure', FALSE, 3),
(431, 'A variable declaration', FALSE, 4),
(432, 'Queue', FALSE, 1),
(432, 'Stack', TRUE, 2),
(432, 'Array', FALSE, 3),
(432, 'Linked List', FALSE, 4),
(433, 'Efficient insertion/deletion', TRUE, 1),
(433, 'Faster access by index', FALSE, 2),
(433, 'Smaller memory footprint', FALSE, 3),
(433, 'Built-in sorting', FALSE, 4),
(434, 'True', TRUE, 1),
(434, 'False', FALSE, 2),
(435, 'Key-value storage with hash function', TRUE, 1),
(435, 'A sorted array', FALSE, 2),
(435, 'A type of linked list', FALSE, 3),
(435, 'A database table', FALSE, 4),
(436, 'Stack', FALSE, 1),
(436, 'Queue', TRUE, 2),
(436, 'Array', FALSE, 3),
(436, 'Tree', FALSE, 4),
(437, 'True', FALSE, 1),
(437, 'False', TRUE, 2),
(438, 'O(1)', TRUE, 1),
(438, 'O(log n)', FALSE, 2),
(438, 'O(n)', FALSE, 3),
(438, 'O(n²)', FALSE, 4),
(439, 'Stack', TRUE, 1),
(439, 'Queue', FALSE, 2),
(439, 'Array', FALSE, 3),
(439, 'Graph', FALSE, 4),
(440, 'True', FALSE, 1),
(440, 'False', TRUE, 2);

-- Quiz 45: Week 5 - String Manipulation (quiz_id = 45)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(45, 'What is string concatenation?', 'multiple_choice', 1.00, 1, 'String concatenation is the operation of joining two or more strings end-to-end to create a new string.'),
(45, 'Which method is commonly used to find the length of a string?', 'multiple_choice', 1.00, 2, 'Most programming languages provide a length() or similar method to get the number of characters in a string.'),
(45, 'What does string immutability mean?', 'multiple_choice', 1.00, 3, 'String immutability means that once a string is created, it cannot be modified; operations create new strings.'),
(45, 'String indexing usually starts at 1 in most programming languages.', 'true_false', 1.00, 4, 'False. Most programming languages use 0-based indexing for strings and arrays.'),
(45, 'What is a substring?', 'multiple_choice', 1.00, 5, 'A substring is a contiguous sequence of characters within a larger string.'),
(45, 'Which operation would you use to check if a string contains specific text?', 'multiple_choice', 1.00, 6, 'The contains() or indexOf() methods are commonly used to check for substring presence within a string.'),
(45, 'All programming languages handle Unicode characters the same way.', 'true_false', 1.00, 7, 'False. Different programming languages and environments have varying levels of Unicode support and implementation.'),
(45, 'What is the purpose of string trimming?', 'multiple_choice', 1.00, 8, 'Trimming removes whitespace characters from the beginning and/or end of a string.'),
(45, 'Which method converts a string to uppercase?', 'multiple_choice', 1.00, 9, 'The toUpperCase() or similar method converts all characters in a string to uppercase letters.'),
(45, 'Regular expressions can only be used for validation, not for string manipulation.', 'true_false', 1.00, 10, 'False. Regular expressions are powerful tools for both validation and complex string manipulation tasks.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(441, 'Joining strings together', TRUE, 1),
(441, 'Splitting strings apart', FALSE, 2),
(441, 'Comparing strings', FALSE, 3),
(441, 'Converting case', FALSE, 4),
(442, 'length()', TRUE, 1),
(442, 'size()', FALSE, 2),
(442, 'count()', FALSE, 3),
(442, 'measure()', FALSE, 4),
(443, 'Strings cannot be changed after creation', TRUE, 1),
(443, 'Strings can change size', FALSE, 2),
(443, 'Strings are always uppercase', FALSE, 3),
(443, 'Strings are numeric values', FALSE, 4),
(444, 'True', FALSE, 1),
(444, 'False', TRUE, 2),
(445, 'Part of a string', TRUE, 1),
(445, 'A type of array', FALSE, 2),
(445, 'A concatenated string', FALSE, 3),
(445, 'An empty string', FALSE, 4),
(446, 'contains() or indexOf()', TRUE, 1),
(446, 'length()', FALSE, 2),
(446, 'concat()', FALSE, 3),
(446, 'trim()', FALSE, 4),
(447, 'True', FALSE, 1),
(447, 'False', TRUE, 2),
(448, 'Remove whitespace from ends', TRUE, 1),
(448, 'Remove all spaces', FALSE, 2),
(448, 'Add padding', FALSE, 3),
(448, 'Split into words', FALSE, 4),
(449, 'toUpperCase()', TRUE, 1),
(449, 'upper()', FALSE, 2),
(449, 'capitalize()', FALSE, 3),
(449, 'caseUpper()', FALSE, 4),
(450, 'True', FALSE, 1),
(450, 'False', TRUE, 2);

-- Quiz 46: Week 6 - File Handling (quiz_id = 46)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(46, 'What is the purpose of file handling in programming?', 'multiple_choice', 1.00, 1, 'File handling allows programs to read from and write to files for persistent data storage beyond program execution.'),
(46, 'Which mode opens a file for writing and creates it if it doesn''t exist?', 'multiple_choice', 1.00, 2, 'The "w" (write) mode creates a new file or truncates an existing file for writing.'),
(46, 'What is the difference between text and binary file modes?', 'multiple_choice', 1.00, 3, 'Text mode handles character encoding and newline conversions, while binary mode reads/writes raw bytes without modification.'),
(46, 'Files must always be closed explicitly in programming.', 'true_false', 1.00, 4, 'True. While some languages have automatic garbage collection, explicitly closing files ensures proper resource management.'),
(46, 'What is a file pointer/cursor?', 'multiple_choice', 1.00, 5, 'A file pointer indicates the current position in a file for the next read or write operation.'),
(46, 'Which operation would you use to read an entire file at once?', 'multiple_choice', 1.00, 6, 'Methods like read() or readAll() are used to read the entire contents of a file in one operation.'),
(46, 'CSV files can only store numerical data.', 'true_false', 1.00, 7, 'False. CSV files can store various data types including text, numbers, and dates, separated by commas.'),
(46, 'What is serialization?', 'multiple_choice', 1.00, 8, 'Serialization is the process of converting objects or data structures into a format suitable for storage or transmission.'),
(46, 'Which method is used to check if a file exists?', 'multiple_choice', 1.00, 9, 'Most languages provide file existence checks like exists() or similar methods before attempting file operations.'),
(46, 'JSON files are only used for web applications.', 'true_false', 1.00, 10, 'False. JSON is a versatile data format used in various applications including configuration files and data exchange.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(451, 'Read and write persistent data', TRUE, 1),
(451, 'Handle user input', FALSE, 2),
(451, 'Manage memory', FALSE, 3),
(451, 'Control program flow', FALSE, 4),
(452, 'Read mode "r"', FALSE, 1),
(452, 'Write mode "w"', TRUE, 2),
(452, 'Append mode "a"', FALSE, 3),
(452, 'Binary mode "b"', FALSE, 4),
(453, 'Text mode handles encoding, binary mode does not', TRUE, 1),
(453, 'Binary mode is faster', FALSE, 2),
(453, 'Text mode is for numbers only', FALSE, 3),
(453, 'No difference', FALSE, 4),
(454, 'True', TRUE, 1),
(454, 'False', FALSE, 2),
(455, 'Current position in file', TRUE, 1),
(455, 'File size', FALSE, 2),
(455, 'File name', FALSE, 3),
(455, 'File type', FALSE, 4),
(456, 'read()', TRUE, 1),
(456, 'readLine()', FALSE, 2),
(456, 'seek()', FALSE, 3),
(456, 'open()', FALSE, 4),
(457, 'True', FALSE, 1),
(457, 'False', TRUE, 2),
(458, 'Convert objects to storable format', TRUE, 1),
(458, 'Compress files', FALSE, 2),
(458, 'Encrypt data', FALSE, 3),
(458, 'Sort file contents', FALSE, 4),
(459, 'exists()', TRUE, 1),
(459, 'check()', FALSE, 2),
(459, 'find()', FALSE, 3),
(459, 'verify()', FALSE, 4),
(460, 'True', FALSE, 1),
(460, 'False', TRUE, 2);

-- Quiz 47: Week 7 - Error Handling (quiz_id = 47)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(47, 'What is the purpose of exception handling?', 'multiple_choice', 1.00, 1, 'Exception handling allows programs to gracefully handle runtime errors and continue execution rather than crashing.'),
(47, 'What is the difference between checked and unchecked exceptions?', 'multiple_choice', 1.00, 2, 'Checked exceptions must be declared or handled, while unchecked exceptions (runtime) don''t require explicit handling.'),
(47, 'Which block is used to handle exceptions in try-catch?', 'multiple_choice', 1.00, 3, 'The catch block contains code that executes when a specific exception occurs in the try block.'),
(47, 'All programming errors should be handled using exceptions.', 'true_false', 1.00, 4, 'False. Some errors like logic errors are better prevented through proper coding practices rather than exception handling.'),
(47, 'What is the purpose of the finally block?', 'multiple_choice', 1.00, 5, 'The finally block always executes regardless of whether an exception occurred, making it ideal for cleanup code.'),
(47, 'What is stack tracing?', 'multiple_choice', 1.00, 6, 'Stack tracing shows the sequence of method calls that led to an exception, helping debug the error source.'),
(47, 'Custom exceptions can only extend the base Exception class.', 'true_false', 1.00, 7, 'False. Custom exceptions can extend any existing exception class depending on the specific needs.'),
(47, 'What is defensive programming?', 'multiple_choice', 1.00, 8, 'Defensive programming involves writing code that anticipates and handles potential errors before they occur.'),
(47, 'Which exception is thrown when accessing a null object?', 'multiple_choice', 1.00, 9, 'NullPointerException (or similar) occurs when trying to use an object reference that points to null.'),
(47, 'Logging is only useful for debugging during development.', 'true_false', 1.00, 10, 'False. Logging is essential in production for monitoring, troubleshooting, and auditing application behavior.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(461, 'Gracefully handle runtime errors', TRUE, 1),
(461, 'Make programs faster', FALSE, 2),
(461, 'Prevent all bugs', FALSE, 3),
(461, 'Replace if statements', FALSE, 4),
(462, 'Checked must be handled, unchecked may not', TRUE, 1),
(462, 'Checked are for files, unchecked for math', FALSE, 2),
(462, 'No difference', FALSE, 3),
(462, 'Checked are more severe', FALSE, 4),
(463, 'catch block', TRUE, 1),
(463, 'try block', FALSE, 2),
(463, 'finally block', FALSE, 3),
(463, 'error block', FALSE, 4),
(464, 'True', FALSE, 1),
(464, 'False', TRUE, 2),
(465, 'Always execute cleanup code', TRUE, 1),
(465, 'Handle uncaught exceptions', FALSE, 2),
(465, 'Replace catch blocks', FALSE, 3),
(465, 'Prevent exceptions', FALSE, 4),
(466, 'Show method call sequence during error', TRUE, 1),
(466, 'Track variable values', FALSE, 2),
(466, 'Measure execution time', FALSE, 3),
(466, 'Count exceptions', FALSE, 4),
(467, 'True', FALSE, 1),
(467, 'False', TRUE, 2),
(468, 'Anticipate and prevent errors', TRUE, 1),
(468, 'Ignore potential errors', FALSE, 2),
(468, 'Use exceptions for all logic', FALSE, 3),
(468, 'Make programs slower but safer', FALSE, 4),
(469, 'NullPointerException', TRUE, 1),
(469, 'ArrayIndexOutOfBounds', FALSE, 2),
(469, 'IOException', FALSE, 3),
(469, 'ClassCastException', FALSE, 4),
(470, 'True', FALSE, 1),
(470, 'False', TRUE, 2);

-- Quiz 48: Week 8 - Final Project Review (quiz_id = 48)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(48, 'What is the first step in planning a programming project?', 'multiple_choice', 1.00, 1, 'Requirements gathering is crucial to understand what the program should accomplish before writing any code.'),
(48, 'Which development approach involves building in small, iterative cycles?', 'multiple_choice', 1.00, 2, 'Agile development focuses on iterative progress, collaboration, and flexibility in response to change.'),
(48, 'What is version control primarily used for?', 'multiple_choice', 1.00, 3, 'Version control tracks changes to code, enables collaboration, and allows reverting to previous states.'),
(48, 'Comments should explain what the code does, not why it does it.', 'true_false', 1.00, 4, 'False. Good comments explain the intent and reasoning behind code, not just what it''s doing.'),
(48, 'What is code refactoring?', 'multiple_choice', 1.00, 5, 'Refactoring improves code structure and design without changing its external behavior.'),
(48, 'Which testing approach verifies individual units of code?', 'multiple_choice', 1.00, 6, 'Unit testing focuses on testing individual components or functions in isolation from the rest of the system.'),
(48, 'All programming projects require object-oriented design.', 'true_false', 1.00, 7, 'False. Different projects may benefit from different paradigms like functional, procedural, or declarative programming.'),
(48, 'What is the purpose of code documentation?', 'multiple_choice', 1.00, 8, 'Documentation helps other developers understand, use, and maintain the code effectively.'),
(48, 'Which principle suggests a function should have single responsibility?', 'multiple_choice', 1.00, 9, 'The Single Responsibility Principle states that a function or class should have only one reason to change.'),
(48, 'Performance optimization should always be the first priority in programming.', 'true_false', 1.00, 10, 'False. Readability, maintainability, and correctness are often more important than premature optimization.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(471, 'Gather requirements', TRUE, 1),
(471, 'Write code', FALSE, 2),
(471, 'Choose programming language', FALSE, 3),
(471, 'Design user interface', FALSE, 4),
(472, 'Waterfall', FALSE, 1),
(472, 'Agile', TRUE, 2),
(472, 'Big Bang', FALSE, 3),
(472, 'Spiral', FALSE, 4),
(473, 'Track changes and collaborate', TRUE, 1),
(473, 'Make code run faster', FALSE, 2),
(473, 'Prevent bugs', FALSE, 3),
(473, 'Generate documentation', FALSE, 4),
(474, 'True', FALSE, 1),
(474, 'False', TRUE, 2),
(475, 'Improve code structure without changing behavior', TRUE, 1),
(475, 'Fix bugs', FALSE, 2),
(475, 'Add new features', FALSE, 3),
(475, 'Optimize performance', FALSE, 4),
(476, 'Unit testing', TRUE, 1),
(476, 'Integration testing', FALSE, 2),
(476, 'System testing', FALSE, 3),
(476, 'Acceptance testing', FALSE, 4),
(477, 'True', FALSE, 1),
(477, 'False', TRUE, 2),
(478, 'Help others understand and use code', TRUE, 1),
(478, 'Make code run faster', FALSE, 2),
(478, 'Prevent hacking', FALSE, 3),
(478, 'Reduce file size', FALSE, 4),
(479, 'Single Responsibility Principle', TRUE, 1),
(479, 'Open-Closed Principle', FALSE, 2),
(479, 'Liskov Substitution', FALSE, 3),
(479, 'Interface Segregation', FALSE, 4),
(480, 'True', FALSE, 1),
(480, 'False', TRUE, 2);

-- ============================================
-- COURSE 7: WEB DEVELOPMENT BASICS
-- ============================================

-- Quiz 49: Week 1 - HTML Basics (quiz_id = 49)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(49, 'What does HTML stand for?', 'multiple_choice', 1.00, 1, 'HTML stands for HyperText Markup Language, which is the standard language for creating web pages.'),
(49, 'Which tag is used to create a hyperlink?', 'multiple_choice', 1.00, 2, 'The <a> tag (anchor tag) creates hyperlinks to other web pages, files, or locations within the same page.'),
(49, 'What is the purpose of the <head> section in HTML?', 'multiple_choice', 1.00, 3, 'The <head> section contains metadata, links to stylesheets, scripts, and other information not displayed on the page.'),
(49, 'HTML is a programming language.', 'true_false', 1.00, 4, 'False. HTML is a markup language used for structuring content, not a programming language with logic capabilities.'),
(49, 'Which tag represents the highest level heading?', 'multiple_choice', 1.00, 5, '<h1> represents the main heading of a page, with <h2> through <h6> representing subheadings of decreasing importance.'),
(49, 'What is the correct way to create an ordered list?', 'multiple_choice', 1.00, 6, '<ol> creates an ordered (numbered) list, with <li> tags for each list item.'),
(49, 'All HTML tags require a closing tag.', 'true_false', 1.00, 7, 'False. Some HTML tags like <img> and <br> are self-closing and don''t require separate closing tags.'),
(49, 'Which attribute is used to provide additional information about an element?', 'multiple_choice', 1.00, 8, 'The class attribute is used to assign one or more class names to an element for styling or JavaScript selection.'),
(49, 'What is semantic HTML?', 'multiple_choice', 1.00, 9, 'Semantic HTML uses elements that clearly describe their meaning to both browser and developer, like <header>, <article>, etc.'),
(49, 'The <title> tag content is displayed in the browser''s title bar or tab.', 'true_false', 1.00, 10, 'True. The <title> tag defines the document title shown in browser tabs, bookmarks, and search engine results.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(481, 'HyperText Markup Language', TRUE, 1),
(481, 'HighTech Modern Language', FALSE, 2),
(481, 'HyperTransfer Markup Language', FALSE, 3),
(481, 'Home Tool Markup Language', FALSE, 4),
(482, '<link>', FALSE, 1),
(482, '<a>', TRUE, 2),
(482, '<href>', FALSE, 3),
(482, '<hyper>', FALSE, 4),
(483, 'Contains metadata and resources', TRUE, 1),
(483, 'Displays main content', FALSE, 2),
(483, 'Defines page structure', FALSE, 3),
(483, 'Handles user interactions', FALSE, 4),
(484, 'True', FALSE, 1),
(484, 'False', TRUE, 2),
(485, '<h1>', TRUE, 1),
(485, '<head>', FALSE, 2),
(485, '<heading>', FALSE, 3),
(485, '<h6>', FALSE, 4),
(486, '<ol> with <li> items', TRUE, 1),
(486, '<ul> with <li> items', FALSE, 2),
(486, '<list> with <item>', FALSE, 3),
(486, '<dl> with <dt> and <dd>', FALSE, 4),
(487, 'True', FALSE, 1),
(487, 'False', TRUE, 2),
(488, 'class', TRUE, 1),
(488, 'src', FALSE, 2),
(488, 'href', FALSE, 3),
(488, 'alt', FALSE, 4),
(489, 'HTML that describes its meaning', TRUE, 1),
(489, 'HTML with CSS', FALSE, 2),
(489, 'HTML with JavaScript', FALSE, 3),
(489, 'HTML for mobile devices', FALSE, 4),
(490, 'True', TRUE, 1),
(490, 'False', FALSE, 2);

-- Quiz 50: Week 2 - CSS Styling (quiz_id = 50)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(50, 'What does CSS stand for?', 'multiple_choice', 1.00, 1, 'CSS stands for Cascading Style Sheets, used to control the presentation and layout of web pages.'),
(50, 'Which CSS property controls text color?', 'multiple_choice', 1.00, 2, 'The color property sets the foreground color of text content within an element.'),
(50, 'What is the purpose of the "cascade" in CSS?', 'multiple_choice', 1.00, 3, 'The cascade determines which styles apply when multiple rules could target the same element, based on specificity and source order.'),
(50, 'Inline styles have higher priority than external stylesheets.', 'true_false', 1.00, 4, 'True. Inline styles (style attribute) have the highest specificity and override other style declarations.'),
(50, 'Which selector targets all paragraph elements?', 'multiple_choice', 1.00, 5, 'The element selector p targets all <p> elements on the page.'),
(50, 'What does the "box model" describe?', 'multiple_choice', 1.00, 6, 'The CSS box model describes how elements are rendered as rectangular boxes with content, padding, border, and margin areas.'),
(50, 'CSS can only be used to style HTML elements, not create animations.', 'true_false', 1.00, 7, 'False. CSS includes powerful animation and transition capabilities for creating dynamic effects without JavaScript.'),
(50, 'Which unit is relative to the font-size of the root element?', 'multiple_choice', 1.00, 8, 'The rem unit is relative to the root element''s font-size, making it consistent across the entire document.'),
(50, 'What is the purpose of media queries?', 'multiple_choice', 1.00, 9, 'Media queries allow CSS rules to be applied conditionally based on device characteristics like screen size, orientation, or resolution.'),
(50, 'The z-index property only works on positioned elements.', 'true_false', 1.00, 10, 'True. z-index controls stacking context and only affects elements with position value other than static (the default).');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(491, 'Cascading Style Sheets', TRUE, 1),
(491, 'Computer Style Sheets', FALSE, 2),
(491, 'Creative Style System', FALSE, 3),
(491, 'Colorful Style Sheets', FALSE, 4),
(492, 'text-color', FALSE, 1),
(492, 'color', TRUE, 2),
(492, 'font-color', FALSE, 3),
(492, 'foreground', FALSE, 4),
(493, 'Determines which styles apply when conflicts exist', TRUE, 1),
(493, 'Creatates waterfall effects', FALSE, 2),
(493, 'Organizes styles alphabetically', FALSE, 3),
(493, 'Makes styles flow down the page', FALSE, 4),
(494, 'True', TRUE, 1),
(494, 'False', FALSE, 2),
(495, 'p', TRUE, 1),
(495, '.p', FALSE, 2),
(495, '#p', FALSE, 3),
(495, 'all.p', FALSE, 4),
(496, 'Content, padding, border, margin', TRUE, 1),
(496, 'Width, height, depth', FALSE, 2),
(496, 'Color, size, shape', FALSE, 3),
(496, 'Font, spacing, alignment', FALSE, 4),
(497, 'True', FALSE, 1),
(497, 'False', TRUE, 2),
(498, 'rem', TRUE, 1),
(498, 'em', FALSE, 2),
(498, 'px', FALSE, 3),
(498, '%', FALSE, 4),
(499, 'Apply styles based on device conditions', TRUE, 1),
(499, 'Query media files', FALSE, 2),
(499, 'Create media players', FALSE, 3),
(499, 'Style audio and video elements', FALSE, 4),
(500, 'True', TRUE, 1),
(500, 'False', FALSE, 2);

-- Quiz 51: Week 3 - CSS Layout (quiz_id = 51)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(51, 'Which CSS property is used for flexible box layout?', 'multiple_choice', 1.00, 1, 'The display: flex property enables Flexbox, a one-dimensional layout method for arranging items in rows or columns.'),
(51, 'What is the purpose of CSS Grid?', 'multiple_choice', 1.00, 2, 'CSS Grid provides a two-dimensional layout system for designing complex web layouts with rows and columns.'),
(51, 'Which value centers an element horizontally using Flexbox?', 'multiple_choice', 1.00, 3, 'justify-content: center aligns flex items along the main axis, which is horizontal by default.'),
(51, 'Floats are the modern recommended method for page layout.', 'true_false', 1.00, 4, 'False. Flexbox and CSS Grid are now preferred over floats for creating layouts, as they are more powerful and predictable.'),
(51, 'What does the "position: absolute" property do?', 'multiple_choice', 1.00, 5, 'Absolute positioning removes an element from normal flow and positions it relative to its nearest positioned ancestor.'),
(51, 'Which CSS Grid property defines the columns?', 'multiple_choice', 1.00, 6, 'grid-template-columns defines the number and sizes of columns in a CSS Grid container.'),
(51, 'Flexbox can only create one-dimensional layouts.', 'true_false', 1.00, 7, 'True. Flexbox is designed for one-dimensional layouts (either rows OR columns), while Grid handles two dimensions.'),
(51, 'What is the CSS "float" property primarily used for today?', 'multiple_choice', 1.00, 8, 'While floats were once used for layouts, they are now mainly used for wrapping text around images or other elements.'),
(51, 'Which property controls the space between grid items?', 'multiple_choice', 1.00, 9, 'gap (or grid-gap) creates space between grid items without affecting the space around the grid container.'),
(51, 'z-index works on elements with position: static.', 'true_false', 1.00, 10, 'False. z-index only works on positioned elements (relative, absolute, fixed, or sticky).');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(501, 'display: flex', TRUE, 1),
(501, 'layout: flex', FALSE, 2),
(501, 'flex: true', FALSE, 3),
(501, 'display: box', FALSE, 4),
(502, 'Two-dimensional layout system', TRUE, 1),
(502, 'One-dimensional layout system', FALSE, 2),
(502, 'Image gallery creation', FALSE, 3),
(502, 'Text formatting only', FALSE, 4),
(503, 'justify-content: center', TRUE, 1),
(503, 'align-items: center', FALSE, 2),
(503, 'flex-center: true', FALSE, 3),
(503, 'center: flex', FALSE, 4),
(504, 'True', FALSE, 1),
(504, 'False', TRUE, 2),
(505, 'Positions relative to nearest positioned ancestor', TRUE, 1),
(505, 'Positions relative to viewport', FALSE, 2),
(505, 'Positions relative to normal flow', FALSE, 3),
(505, 'Positions relative to parent element always', FALSE, 4),
(506, 'grid-template-columns', TRUE, 1),
(506, 'grid-columns', FALSE, 2),
(506, 'grid-layout-columns', FALSE, 3),
(506, 'columns: grid', FALSE, 4),
(507, 'True', TRUE, 1),
(507, 'False', FALSE, 2),
(508, 'Wrapping text around elements', TRUE, 1),
(508, 'Creating page layouts', FALSE, 2),
(508, 'Positioning navigation menus', FALSE, 3),
(508, 'Aligning form elements', FALSE, 4),
(509, 'gap', TRUE, 1),
(509, 'margin', FALSE, 2),
(509, 'spacing', FALSE, 3),
(509, 'grid-space', FALSE, 4),
(510, 'True', FALSE, 1),
(510, 'False', TRUE, 2);

-- Quiz 52: Week 4 - JavaScript Basics (quiz_id = 52)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(52, 'Which keyword is used to declare variables in modern JavaScript?', 'multiple_choice', 1.00, 1, 'let and const are modern ways to declare variables, with const for constants and let for reassignable variables.'),
(52, 'What will typeof null return in JavaScript?', 'multiple_choice', 1.00, 2, 'This is a known JavaScript quirk - typeof null returns "object" due to historical reasons in the language implementation.'),
(52, 'What is the difference between == and === in JavaScript?', 'multiple_choice', 1.00, 3, '== performs type coercion before comparison, while === checks both value and type without coercion.'),
(52, 'JavaScript is a strongly typed language.', 'true_false', 1.00, 4, 'False. JavaScript is dynamically typed and weakly typed, meaning variables can hold values of any type.'),
(52, 'Which method adds an element to the end of an array?', 'multiple_choice', 1.00, 5, 'push() adds one or more elements to the end of an array and returns the new length of the array.'),
(52, 'What is a callback function?', 'multiple_choice', 1.00, 6, 'A callback function is a function passed as an argument to another function to be executed later.'),
(52, 'All JavaScript code must be placed in the <head> section of HTML.', 'true_false', 1.00, 7, 'False. JavaScript can be placed in <head>, <body>, or external files, though placement affects loading behavior.'),
(52, 'What does the "this" keyword refer to in a method?', 'multiple_choice', 1.00, 8, 'In a method, "this" refers to the object that the method is called on, providing access to its properties.'),
(52, 'Which loop is best for iterating over array elements?', 'multiple_choice', 1.00, 9, 'for...of loop is designed for iterating over iterable objects like arrays, strings, and provides the most readable syntax.'),
(52, 'JavaScript can only run in web browsers.', 'true_false', 1.00, 10, 'False. JavaScript can run in browsers, servers (Node.js), mobile apps, and various other environments.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(511, 'let and const', TRUE, 1),
(511, 'var only', FALSE, 2),
(511, 'variable', FALSE, 3),
(511, 'def', FALSE, 4),
(512, '"object"', TRUE, 1),
(512, '"null"', FALSE, 2),
(512, '"undefined"', FALSE, 3),
(512, '"number"', FALSE, 4),
(513, '== allows type coercion, === does not', TRUE, 1),
(513, '=== is older syntax', FALSE, 2),
(513, 'No difference', FALSE, 3),
(513, '== is for strings only', FALSE, 4),
(514, 'True', FALSE, 1),
(514, 'False', TRUE, 2),
(515, 'push()', TRUE, 1),
(515, 'append()', FALSE, 2),
(515, 'addToEnd()', FALSE, 3),
(515, 'insert()', FALSE, 4),
(516, 'Function passed as argument', TRUE, 1),
(516, 'Function that calls itself', FALSE, 2),
(516, 'Function that returns another function', FALSE, 3),
(516, 'Function with no parameters', FALSE, 4),
(517, 'True', FALSE, 1),
(517, 'False', TRUE, 2),
(518, 'The object the method belongs to', TRUE, 1),
(518, 'The global window object', FALSE, 2),
(518, 'The parent function', FALSE, 3),
(518, 'The DOM element', FALSE, 4),
(519, 'for...of', TRUE, 1),
(519, 'for...in', FALSE, 2),
(519, 'while', FALSE, 3),
(519, 'do...while', FALSE, 4),
(520, 'True', FALSE, 1),
(520, 'False', TRUE, 2);

-- Quiz 53: Week 5 - DOM Manipulation (quiz_id = 53)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(53, 'What does DOM stand for?', 'multiple_choice', 1.00, 1, 'DOM stands for Document Object Model, which represents the structure of an HTML document as a tree of objects.'),
(53, 'Which method selects an element by its ID?', 'multiple_choice', 1.00, 2, 'getElementById() returns the element with the specified ID, or null if no matching element is found.'),
(53, 'What is the difference between textContent and innerHTML?', 'multiple_choice', 1.00, 3, 'textContent gets/sets text only, while innerHTML gets/sets HTML content, which can include tags and elements.'),
(53, 'The DOM is only available in web browsers.', 'true_false', 1.00, 4, 'True. The DOM is a browser API for manipulating HTML and XML documents, not available in server-side JavaScript.'),
(53, 'Which method creates a new HTML element?', 'multiple_choice', 1.00, 5, 'document.createElement() creates a new HTML element specified by the tag name parameter.'),
(53, 'What is event delegation?', 'multiple_choice', 1.00, 6, 'Event delegation uses a single event listener on a parent element to handle events for multiple child elements.'),
(53, 'querySelector can only select elements by tag name.', 'true_false', 1.00, 7, 'False. querySelector can use any CSS selector including classes, IDs, attributes, and complex combinations.'),
(53, 'Which method adds a class to an element?', 'multiple_choice', 1.00, 8, 'classList.add() adds one or more class names to an element''s class list.'),
(53, 'What is the purpose of event.preventDefault()?', 'multiple_choice', 1.00, 9, 'preventDefault() stops the browser''s default action for an event, like preventing form submission or link navigation.'),
(53, 'All DOM manipulations are synchronous operations.', 'true_false', 1.00, 10, 'False. While most DOM methods are synchronous, some operations like loading images or making requests are asynchronous.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(521, 'Document Object Model', TRUE, 1),
(521, 'Data Object Management', FALSE, 2),
(521, 'Digital Output Method', FALSE, 3),
(521, 'Document Order Method', FALSE, 4),
(522, 'getElementById()', TRUE, 1),
(522, 'querySelector()', FALSE, 2),
(522, 'getElementsByClassName()', FALSE, 3),
(522, 'findElement()', FALSE, 4),
(523, 'textContent is text only, innerHTML parses HTML', TRUE, 1),
(523, 'No difference', FALSE, 2),
(523, 'innerHTML is faster', FALSE, 3),
(523, 'textContent can include HTML', FALSE, 4),
(524, 'True', TRUE, 1),
(524, 'False', FALSE, 2),
(525, 'document.createElement()', TRUE, 1),
(525, 'document.newElement()', FALSE, 2),
(525, 'element.create()', FALSE, 3),
(525, 'HTML.createElement()', FALSE, 4),
(526, 'Using parent element to handle child events', TRUE, 1),
(526, 'Assigning multiple events to one element', FALSE, 2),
(526, 'Creating custom events', FALSE, 3),
(526, 'Delegating events to another script', FALSE, 4),
(527, 'True', FALSE, 1),
(527, 'False', TRUE, 2),
(528, 'classList.add()', TRUE, 1),
(528, 'addClass()', FALSE, 2),
(528, 'className.add()', FALSE, 3),
(528, 'setClass()', FALSE, 4),
(529, 'Prevent default browser behavior', TRUE, 1),
(529, 'Stop event propagation', FALSE, 2),
(529, 'Remove event listener', FALSE, 3),
(529, 'Create custom event', FALSE, 4),
(530, 'True', FALSE, 1),
(530, 'False', TRUE, 2);

-- Quiz 54: Week 6 - Forms and Validation (quiz_id = 54)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(54, 'Which HTML input type is used for passwords?', 'multiple_choice', 1.00, 1, 'input type="password" masks entered characters for privacy while still capturing the actual input value.'),
(54, 'What is the purpose of the "required" attribute?', 'multiple_choice', 1.00, 2, 'The required attribute specifies that an input field must be filled out before submitting the form.'),
(54, 'Which event is triggered when a form is submitted?', 'multiple_choice', 1.00, 3, 'The submit event fires when a form is submitted, either by clicking a submit button or pressing Enter.'),
(54, 'Client-side validation alone is sufficient for security.', 'true_false', 1.00, 4, 'False. Client-side validation improves user experience but server-side validation is essential for security.'),
(54, 'What does the "pattern" attribute do?', 'multiple_choice', 1.00, 5, 'The pattern attribute specifies a regular expression that the input''s value must match to be considered valid.'),
(54, 'Which method prevents a form from being submitted?', 'multiple_choice', 1.00, 6, 'event.preventDefault() in the submit event handler stops the form from being submitted to the server.'),
(54, 'All form inputs must have a name attribute to be submitted.', 'true_false', 1.00, 7, 'True. Form inputs without name attributes are not included in the form data when submitted.'),
(54, 'What is the purpose of the "label" element?', 'multiple_choice', 1.00, 8, 'The label element provides a text description for form inputs and improves accessibility when properly associated.'),
(54, 'Which input type is best for email validation?', 'multiple_choice', 1.00, 9, 'input type="email" provides built-in browser validation for email format and may trigger special keyboard layouts on mobile.'),
(54, 'JavaScript can only validate forms after submission.', 'true_false', 1.00, 10, 'False. JavaScript can validate forms in real-time using events like input, change, or blur for immediate feedback.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(531, 'password', TRUE, 1),
(531, 'text', FALSE, 2),
(531, 'secret', FALSE, 3),
(531, 'hidden', FALSE, 4),
(532, 'Makes field mandatory', TRUE, 1),
(532, 'Sets default value', FALSE, 2),
(532, 'Hides the field', FALSE, 3),
(532, 'Validates email format', FALSE, 4),
(533, 'submit', TRUE, 1),
(533, 'click', FALSE, 2),
(533, 'change', FALSE, 3),
(533, 'input', FALSE, 4),
(534, 'True', FALSE, 1),
(534, 'False', TRUE, 2),
(535, 'Defines regex pattern for validation', TRUE, 1),
(535, 'Sets input design pattern', FALSE, 2),
(535, 'Creates background pattern', FALSE, 3),
(535, 'Defines keyboard input pattern', FALSE, 4),
(536, 'event.preventDefault()', TRUE, 1),
(536, 'form.stopSubmit()', FALSE, 2),
(536, 'event.stopPropagation()', FALSE, 3),
(536, 'form.cancel()', FALSE, 4),
(537, 'True', TRUE, 1),
(537, 'False', FALSE, 2),
(538, 'Associate text with form control', TRUE, 1),
(538, 'Create form titles', FALSE, 2),
(538, 'Style form elements', FALSE, 3),
(538, 'Group related inputs', FALSE, 4),
(539, 'email', TRUE, 1),
(539, 'text', FALSE, 2),
(539, 'string', FALSE, 3),
(539, 'mail', FALSE, 4),
(540, 'True', FALSE, 1),
(540, 'False', TRUE, 2);

-- Quiz 55: Week 7 - APIs and Fetch (quiz_id = 55)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(55, 'What does API stand for?', 'multiple_choice', 1.00, 1, 'API stands for Application Programming Interface, which defines how different software components should interact.'),
(55, 'Which HTTP method is typically used to retrieve data?', 'multiple_choice', 1.00, 2, 'GET requests are used to retrieve data from a server and should not modify any data on the server.'),
(55, 'What is JSON?', 'multiple_choice', 1.00, 3, 'JSON (JavaScript Object Notation) is a lightweight data format that is easy for humans to read and write and easy for machines to parse.'),
(55, 'All APIs require authentication to use.', 'true_false', 1.00, 4, 'False. Some APIs are public and don''t require authentication, while others require API keys or other authentication methods.'),
(55, 'What does the fetch() function return?', 'multiple_choice', 1.00, 5, 'fetch() returns a Promise that resolves to the Response object representing the response to the request.'),
(55, 'What is CORS?', 'multiple_choice', 1.00, 6, 'CORS (Cross-Origin Resource Sharing) is a security mechanism that allows restricted resources to be requested from another domain.'),
(55, 'REST APIs can only return JSON data.', 'true_false', 1.00, 7, 'False. REST APIs can return various data formats including JSON, XML, HTML, or plain text depending on the request.'),
(55, 'Which method converts a JavaScript object to JSON string?', 'multiple_choice', 1.00, 8, 'JSON.stringify() converts a JavaScript object or value to a JSON string, useful for sending data to APIs.'),
(55, 'What is the purpose of HTTP status codes?', 'multiple_choice', 1.00, 9, 'HTTP status codes indicate whether a request was successful, and if not, what type of error occurred.'),
(55, 'The fetch() function is available in all JavaScript environments.', 'true_false', 1.00, 10, 'False. fetch() is available in modern browsers but not in Node.js by default (requires additional packages).');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(541, 'Application Programming Interface', TRUE, 1),
(541, 'Automated Programming Interface', FALSE, 2),
(541, 'Application Process Integration', FALSE, 3),
(541, 'Advanced Programming Instruction', FALSE, 4),
(542, 'GET', TRUE, 1),
(542, 'POST', FALSE, 2),
(542, 'PUT', FALSE, 3),
(542, 'DELETE', FALSE, 4),
(543, 'JavaScript Object Notation', TRUE, 1),
(543, 'JavaScript Output Network', FALSE, 2),
(543, 'Java Standard Object Notation', FALSE, 3),
(543, 'JSON Object Notation', FALSE, 4),
(544, 'True', FALSE, 1),
(544, 'False', TRUE, 2),
(545, 'A Promise', TRUE, 1),
(545, 'The response data directly', FALSE, 2),
(545, 'A callback function', FALSE, 3),
(545, 'An event emitter', FALSE, 4),
(546, 'Cross-Origin Resource Sharing', TRUE, 1),
(546, 'Cross-Origin Request Security', FALSE, 2),
(546, 'Client Origin Resource Sharing', FALSE, 3),
(546, 'Cross-Origin Response System', FALSE, 4),
(547, 'True', FALSE, 1),
(547, 'False', TRUE, 2),
(548, 'JSON.stringify()', TRUE, 1),
(548, 'JSON.parse()', FALSE, 2),
(548, 'object.toJSON()', FALSE, 3),
(548, 'stringify()', FALSE, 4),
(549, 'Indicate request success or failure', TRUE, 1),
(549, 'Measure response time', FALSE, 2),
(549, 'Identify the server type', FALSE, 3),
(549, 'Encode response data', FALSE, 4),
(550, 'True', FALSE, 1),
(550, 'False', TRUE, 2);

-- Quiz 56: Week 8 - Responsive Design (quiz_id = 56)
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(56, 'What is responsive web design?', 'multiple_choice', 1.00, 1, 'Responsive design ensures websites adapt to different screen sizes and devices using flexible layouts and media queries.'),
(56, 'Which meta tag is crucial for responsive design on mobile?', 'multiple_choice', 1.00, 2, 'The viewport meta tag controls layout on mobile browsers by setting the width and initial scale.'),
(56, 'What are CSS media queries used for?', 'multiple_choice', 1.00, 3, 'Media queries apply CSS rules conditionally based on device characteristics like screen width, height, or orientation.'),
(56, 'Responsive design only concerns screen size, not device capabilities.', 'true_false', 1.00, 4, 'False. Responsive design considers various factors including screen size, resolution, input methods, and device capabilities.'),
(56, 'Which CSS unit is most flexible for responsive layouts?', 'multiple_choice', 1.00, 5, 'Percentage units are relative to the parent element, making them flexible and responsive to container size changes.'),
(56, 'What is a mobile-first approach?', 'multiple_choice', 1.00, 6, 'Mobile-first design starts with styling for small screens then uses media queries to add styles for larger screens.'),
(56, 'All images should be the same size in responsive design.', 'true_false', 1.00, 7, 'False. Images in responsive design should be flexible using max-width: 100% or srcset for different resolutions.'),
(56, 'Which property makes images scale proportionally?', 'multiple_choice', 1.00, 8, 'max-width: 100% allows images to scale down if needed but not larger than their original size, maintaining aspect ratio.'),
(56, 'What is the purpose of CSS breakpoints?', 'multiple_choice', 1.00, 9, 'Breakpoints are specific screen widths where the layout changes to adapt to different device sizes in responsive design.'),
(56, 'Responsive design eliminates the need for separate mobile websites.', 'true_false', 1.00, 10, 'True. A properly implemented responsive design can serve all devices from a single codebase, eliminating the need for separate mobile sites.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(551, 'Design that adapts to different screen sizes', TRUE, 1),
(551, 'Design that responds to user clicks', FALSE, 2),
(551, 'Design with moving elements', FALSE, 3),
(551, 'Design that uses JavaScript', FALSE, 4),
(552, 'viewport', TRUE, 1),
(552, 'responsive', FALSE, 2),
(552, 'mobile', FALSE, 3),
(552, 'scale', FALSE, 4),
(553, 'Apply styles based on device conditions', TRUE, 1),
(553, 'Query media files', FALSE, 2),
(553, 'Create responsive images', FALSE, 3),
(553, 'Measure screen size', FALSE, 4),
(554, 'True', FALSE, 1),
(554, 'False', TRUE, 2),
(555, 'Percentage %', TRUE, 1),
(555, 'Pixels px', FALSE, 2),
(555, 'Points pt', FALSE, 3),
(555, 'Inches in', FALSE, 4),
(556, 'Start with mobile styles, enhance for larger screens', TRUE, 1),
(556, 'Design for mobile only', FALSE, 2),
(556, 'Make everything small', FALSE, 3),
(556, 'Use mobile-specific features', FALSE, 4),
(557, 'True', FALSE, 1),
(557, 'False', TRUE, 2),
(558, 'max-width: 100%', TRUE, 1),
(558, 'width: 100%', FALSE, 2),
(558, 'scale: responsive', FALSE, 3),
(558, 'flexible: true', FALSE, 4),
(559, 'Screen widths where layout changes', TRUE, 1),
(559, 'Points where code breaks', FALSE, 2),
(559, 'CSS debugging points', FALSE, 3),
(559, 'Browser compatibility points', FALSE, 4),
(560, 'True', TRUE, 1),
(560, 'False', FALSE, 2);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(57, 'What is the primary purpose of data analysis?', 'multiple_choice', 1.00, 1, 'Data analysis transforms raw data into meaningful insights for decision-making.'),
(57, 'Which of the following is a quantitative data type?', 'multiple_choice', 1.00, 2, 'Numerical measurements like age are quantitative, while categories are qualitative.'),
(57, 'Data analysis can only be performed using advanced statistical software.', 'true_false', 1.00, 3, 'False. Data analysis can be done with various tools including spreadsheets and even manual methods.'),
(57, 'What does the term "data-driven decision making" mean?', 'multiple_choice', 1.00, 4, 'Data-driven decisions are based on analyzed data rather than intuition alone.'),
(57, 'Which step typically comes first in the data analysis process?', 'multiple_choice', 1.00, 5, 'Defining the question guides what data to collect and how to analyze it.'),
(57, 'All data collected is equally useful for analysis.', 'true_false', 1.00, 6, 'False. Data quality and relevance matter significantly for meaningful analysis.'),
(57, 'What is the difference between data and information?', 'multiple_choice', 1.00, 7, 'Data becomes information when it is processed and given context.'),
(57, 'Which term describes the tendency to see patterns in random data?', 'multiple_choice', 1.00, 8, 'Apophenia is seeing meaningful patterns in random or meaningless data.'),
(57, 'What is metadata?', 'multiple_choice', 1.00, 9, 'Metadata provides information about other data, such as creation date or source.'),
(57, 'Correlation always implies causation in data analysis.', 'true_false', 1.00, 10, 'False. Correlation shows relationship but does not prove one variable causes another.');

-- Answer options for Quiz 57
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(561, 'To collect as much data as possible', FALSE, 1),
(561, 'To transform raw data into meaningful insights', TRUE, 2),
(561, 'To create complex mathematical formulas', FALSE, 3),
(561, 'To store information in databases', FALSE, 4),
(562, 'Age in years', TRUE, 1),
(562, 'Favorite color', FALSE, 2),
(562, 'Country of birth', FALSE, 3),
(562, 'Job title', FALSE, 4),
(563, 'True', FALSE, 1),
(563, 'False', TRUE, 2),
(564, 'Making decisions based on personal experience only', FALSE, 1),
(564, 'Using analyzed data to inform decisions', TRUE, 2),
(564, 'Collecting data without analyzing it', FALSE, 3),
(564, 'Relying solely on intuition', FALSE, 4),
(565, 'Defining the question or problem', TRUE, 1),
(565, 'Creating visualizations', FALSE, 2),
(565, 'Writing the final report', FALSE, 3),
(565, 'Sharing results with stakeholders', FALSE, 4),
(566, 'True', FALSE, 1),
(566, 'False', TRUE, 2),
(567, 'Data is processed information while information is raw', FALSE, 1),
(567, 'Data is raw facts while information is processed data with context', TRUE, 2),
(567, 'They are exactly the same thing', FALSE, 3),
(567, 'Information is always numerical while data can be text', FALSE, 4),
(568, 'Confirmation bias', FALSE, 1),
(568, 'Apophenia', TRUE, 2),
(568, 'Sampling error', FALSE, 3),
(568, 'Selection bias', FALSE, 4),
(569, 'The largest dataset in an analysis', FALSE, 1),
(569, 'Data about data', TRUE, 2),
(569, 'Incorrect or corrupted data', FALSE, 3),
(569, 'The final analysis results', FALSE, 4),
(570, 'True', FALSE, 1),
(570, 'False', TRUE, 2);

-- Quiz 58 (Week 2): Working with Data
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(58, 'What is a dataset?', 'multiple_choice', 1.00, 1, 'A dataset is a collection of related data organized for analysis.'),
(58, 'Which format is commonly used for storing tabular data?', 'multiple_choice', 1.00, 2, 'CSV (Comma-Separated Values) is widely used for tabular data storage.'),
(58, 'A database can only store numerical data.', 'true_false', 1.00, 3, 'False. Databases can store various data types including text, numbers, dates, and images.'),
(58, 'What does CSV stand for?', 'multiple_choice', 1.00, 4, 'CSV stands for Comma-Separated Values, a simple file format for data.'),
(58, 'Which of these is an example of structured data?', 'multiple_choice', 1.00, 5, 'Spreadsheets with defined rows and columns represent structured data.'),
(58, 'APIs can be used to retrieve data from web services.', 'true_false', 1.00, 6, 'True. APIs (Application Programming Interfaces) enable data retrieval from various online sources.'),
(58, 'What is the primary advantage of using a relational database?', 'multiple_choice', 1.00, 7, 'Relational databases efficiently organize and link related information across tables.'),
(58, 'Which data type would be most appropriate for storing True/False values?', 'multiple_choice', 1.00, 8, 'Boolean data type is specifically designed for binary True/False values.'),
(58, 'What is data normalization?', 'multiple_choice', 1.00, 9, 'Normalization organizes data to reduce redundancy and improve integrity.'),
(58, 'JSON is a data format commonly used for web applications.', 'true_false', 1.00, 10, 'True. JSON (JavaScript Object Notation) is widely used for data exchange in web applications.');

-- Answer options for Quiz 58
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(571, 'A single data point', FALSE, 1),
(571, 'A collection of related data organized together', TRUE, 2),
(571, 'A type of database software', FALSE, 3),
(571, 'A data visualization tool', FALSE, 4),
(572, 'PDF', FALSE, 1),
(572, 'CSV', TRUE, 2),
(572, 'MP3', FALSE, 3),
(572, 'JPEG', FALSE, 4),
(573, 'True', FALSE, 1),
(573, 'False', TRUE, 2),
(574, 'Computer System Values', FALSE, 1),
(574, 'Comma-Separated Values', TRUE, 2),
(574, 'Central Storage Vault', FALSE, 3),
(574, 'Coded Statistical Variables', FALSE, 4),
(575, 'Social media posts', FALSE, 1),
(575, 'Spreadsheet with rows and columns', TRUE, 2),
(575, 'Video files', FALSE, 3),
(575, 'Audio recordings', FALSE, 4),
(576, 'True', TRUE, 1),
(576, 'False', FALSE, 2),
(577, 'It makes data look more professional', FALSE, 1),
(577, 'It efficiently organizes related information across tables', TRUE, 2),
(577, 'It automatically analyzes data', FALSE, 3),
(577, 'It converts data to images', FALSE, 4),
(578, 'Integer', FALSE, 1),
(578, 'Boolean', TRUE, 2),
(578, 'String', FALSE, 3),
(578, 'Float', FALSE, 4),
(579, 'Converting all data to normal distribution', FALSE, 1),
(579, 'Organizing data to reduce redundancy', TRUE, 2),
(579, 'Making all values equal', FALSE, 3),
(579, 'Removing all outliers', FALSE, 4),
(580, 'True', TRUE, 1),
(580, 'False', FALSE, 2);

-- Quiz 59 (Week 3): Data Cleaning
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(59, 'What is data cleaning?', 'multiple_choice', 1.00, 1, 'Data cleaning involves identifying and correcting errors and inconsistencies in data.'),
(59, 'Which of these is an example of a data quality issue?', 'multiple_choice', 1.00, 2, 'Missing values represent incomplete data that needs to be addressed during cleaning.'),
(59, 'Data cleaning is unnecessary if the data source is reliable.', 'true_false', 1.00, 3, 'False. Even reliable sources can have errors, inconsistencies, or missing values.'),
(59, 'What are outliers in a dataset?', 'multiple_choice', 1.00, 4, 'Outliers are data points that significantly differ from other observations.'),
(59, 'Which method handles missing data by removing incomplete records?', 'multiple_choice', 1.00, 5, 'Deletion removes records with missing values, though this may lose valuable information.'),
(59, 'Duplicate records should always be kept in a dataset.', 'true_false', 1.00, 6, 'False. Duplicate records can skew analysis and should typically be removed or investigated.'),
(59, 'What is data imputation?', 'multiple_choice', 1.00, 7, 'Imputation fills in missing values using various statistical methods.'),
(59, 'Which type of error occurs when data is entered incorrectly?', 'multiple_choice', 1.00, 8, 'Human error during data entry is a common source of inconsistencies.'),
(59, 'What is the purpose of data validation?', 'multiple_choice', 1.00, 9, 'Data validation ensures data meets specified criteria and standards.'),
(59, 'Standardizing formats is an important part of data cleaning.', 'true_false', 1.00, 10, 'True. Consistent formatting (dates, units, etc.) is essential for accurate analysis.');

-- Answer options for Quiz 59
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(581, 'Deleting all data', FALSE, 1),
(581, 'Identifying and correcting errors in data', TRUE, 2),
(581, 'Making data look prettier', FALSE, 3),
(581, 'Converting data to different formats', FALSE, 4),
(582, 'Data stored in multiple files', FALSE, 1),
(582, 'Missing values in records', TRUE, 2),
(582, 'Large dataset size', FALSE, 3),
(582, 'Data from multiple sources', FALSE, 4),
(583, 'True', FALSE, 1),
(583, 'False', TRUE, 2),
(584, 'Data points that are incorrect', FALSE, 1),
(584, 'Values that significantly differ from other observations', TRUE, 2),
(584, 'Missing data points', FALSE, 3),
(584, 'Average values in the dataset', FALSE, 4),
(585, 'Imputation', FALSE, 1),
(585, 'Deletion', TRUE, 2),
(585, 'Normalization', FALSE, 3),
(585, 'Standardization', FALSE, 4),
(586, 'True', FALSE, 1),
(586, 'False', TRUE, 2),
(587, 'Removing all missing data', FALSE, 1),
(587, 'Filling in missing values with estimates', TRUE, 2),
(587, 'Creating duplicate records', FALSE, 3),
(587, 'Deleting outliers', FALSE, 4),
(588, 'Systematic error', FALSE, 1),
(588, 'Human entry error', TRUE, 2),
(588, 'Sampling error', FALSE, 3),
(588, 'Measurement error', FALSE, 4),
(589, 'To make data files smaller', FALSE, 1),
(589, 'To ensure data meets quality standards', TRUE, 2),
(589, 'To create backups automatically', FALSE, 3),
(589, 'To encrypt sensitive information', FALSE, 4),
(590, 'True', TRUE, 1),
(590, 'False', FALSE, 2);

-- Quiz 60 (Week 4): Descriptive Statistics
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(60, 'What is the mean of a dataset?', 'multiple_choice', 1.00, 1, 'The mean is the average value, calculated by summing all values and dividing by the count.'),
(60, 'Which measure of central tendency is most affected by outliers?', 'multiple_choice', 1.00, 2, 'The mean is highly sensitive to extreme values, unlike median or mode.'),
(60, 'The median is the middle value when data is ordered.', 'true_false', 1.00, 3, 'True. The median divides an ordered dataset into two equal halves.'),
(60, 'What does standard deviation measure?', 'multiple_choice', 1.00, 4, 'Standard deviation quantifies how spread out values are from the mean.'),
(60, 'Which measure represents the most frequently occurring value?', 'multiple_choice', 1.00, 5, 'The mode is the value that appears most often in a dataset.'),
(60, 'The range is calculated by subtracting the minimum from the maximum value.', 'true_false', 1.00, 6, 'True. Range = maximum value - minimum value, showing the spread of data.'),
(60, 'What does a small standard deviation indicate?', 'multiple_choice', 1.00, 7, 'A small standard deviation means values are clustered closely around the mean.'),
(60, 'Which percentile represents the median?', 'multiple_choice', 1.00, 8, 'The 50th percentile is the median, with half the values above and half below.'),
(60, 'What is variance?', 'multiple_choice', 1.00, 9, 'Variance measures dispersion by averaging the squared differences from the mean.'),
(60, 'Descriptive statistics can prove causation between variables.', 'true_false', 1.00, 10, 'False. Descriptive statistics summarize data but cannot establish causal relationships.');

-- Answer options for Quiz 60
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(591, 'The middle value in a dataset', FALSE, 1),
(591, 'The average of all values', TRUE, 2),
(591, 'The most common value', FALSE, 3),
(591, 'The difference between max and min', FALSE, 4),
(592, 'Mode', FALSE, 1),
(592, 'Mean', TRUE, 2),
(592, 'Median', FALSE, 3),
(592, 'Range', FALSE, 4),
(593, 'True', TRUE, 1),
(593, 'False', FALSE, 2),
(594, 'The average value of the dataset', FALSE, 1),
(594, 'The spread or dispersion of values around the mean', TRUE, 2),
(594, 'The most frequent value', FALSE, 3),
(594, 'The total number of data points', FALSE, 4),
(595, 'Mean', FALSE, 1),
(595, 'Mode', TRUE, 2),
(595, 'Median', FALSE, 3),
(595, 'Standard deviation', FALSE, 4),
(596, 'True', TRUE, 1),
(596, 'False', FALSE, 2),
(597, 'Values are spread far from the mean', FALSE, 1),
(597, 'Values are clustered close to the mean', TRUE, 2),
(597, 'The dataset has many outliers', FALSE, 3),
(597, 'The mean equals the median', FALSE, 4),
(598, '25th percentile', FALSE, 1),
(598, '50th percentile', TRUE, 2),
(598, '75th percentile', FALSE, 3),
(598, '100th percentile', FALSE, 4),
(599, 'The middle value in ordered data', FALSE, 1),
(599, 'The squared standard deviation', TRUE, 2),
(599, 'The sum of all values', FALSE, 3),
(599, 'The difference between quartiles', FALSE, 4),
(600, 'True', FALSE, 1),
(600, 'False', TRUE, 2);

-- Quiz 61 (Week 5): Data Visualization
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(61, 'What is the primary purpose of data visualization?', 'multiple_choice', 1.00, 1, 'Visualizations make complex data easier to understand and communicate insights.'),
(61, 'Which chart type is best for showing trends over time?', 'multiple_choice', 1.00, 2, 'Line charts effectively display how values change across continuous time periods.'),
(61, 'Pie charts are ideal for comparing many categories.', 'true_false', 1.00, 3, 'False. Pie charts work best with few categories (typically 5 or less); bar charts are better for many categories.'),
(61, 'What type of chart uses rectangular bars to compare values?', 'multiple_choice', 1.00, 4, 'Bar charts use horizontal or vertical bars to compare discrete categories.'),
(61, 'Which visualization shows the distribution of a single variable?', 'multiple_choice', 1.00, 5, 'Histograms display frequency distributions by grouping data into bins.'),
(61, 'A scatter plot can show relationships between two variables.', 'true_false', 1.00, 6, 'True. Scatter plots reveal correlations and patterns between two continuous variables.'),
(61, 'What is the purpose of a legend in a chart?', 'multiple_choice', 1.00, 7, 'Legends explain what different colors, symbols, or patterns represent.'),
(61, 'Which chart type is best for showing parts of a whole?', 'multiple_choice', 1.00, 8, 'Pie charts effectively show how components make up a total.'),
(61, 'What does a box plot display?', 'multiple_choice', 1.00, 9, 'Box plots show quartiles, median, and outliers, summarizing distribution.'),
(61, 'Using 3D effects always improves chart readability.', 'true_false', 1.00, 10, 'False. 3D effects often distort perception and make charts harder to read accurately.');

-- Answer options for Quiz 61
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(601, 'To make reports look more colorful', FALSE, 1),
(601, 'To communicate data insights clearly and effectively', TRUE, 2),
(601, 'To hide data complexity', FALSE, 3),
(601, 'To replace statistical analysis', FALSE, 4),
(602, 'Pie chart', FALSE, 1),
(602, 'Line chart', TRUE, 2),
(602, 'Bar chart', FALSE, 3),
(602, 'Scatter plot', FALSE, 4),
(603, 'True', FALSE, 1),
(603, 'False', TRUE, 2),
(604, 'Line chart', FALSE, 1),
(604, 'Bar chart', TRUE, 2),
(604, 'Pie chart', FALSE, 3),
(604, 'Scatter plot', FALSE, 4),
(605, 'Scatter plot', FALSE, 1),
(605, 'Histogram', TRUE, 2),
(605, 'Pie chart', FALSE, 3),
(605, 'Line chart', FALSE, 4),
(606, 'True', TRUE, 1),
(606, 'False', FALSE, 2),
(607, 'To add decorative elements', FALSE, 1),
(607, 'To explain what symbols or colors represent', TRUE, 2),
(607, 'To show the data source', FALSE, 3),
(607, 'To display statistical calculations', FALSE, 4),
(608, 'Line chart', FALSE, 1),
(608, 'Pie chart', TRUE, 2),
(608, 'Scatter plot', FALSE, 3),
(608, 'Histogram', FALSE, 4),
(609, 'Only the mean and median', FALSE, 1),
(609, 'Quartiles, median, and outliers', TRUE, 2),
(609, 'Trends over time', FALSE, 3),
(609, 'Correlation between variables', FALSE, 4),
(610, 'True', FALSE, 1),
(610, 'False', TRUE, 2);

-- Quiz 62 (Week 6): Correlation and Relationships
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(62, 'What does correlation measure?', 'multiple_choice', 1.00, 1, 'Correlation quantifies the strength and direction of relationships between variables.'),
(62, 'What is the range of a correlation coefficient?', 'multiple_choice', 1.00, 2, 'Correlation coefficients range from -1 (perfect negative) to +1 (perfect positive).'),
(62, 'A correlation of 0 means no linear relationship exists.', 'true_false', 1.00, 3, 'True. Zero correlation indicates no linear association between variables.'),
(62, 'What does a positive correlation indicate?', 'multiple_choice', 1.00, 4, 'Positive correlation means variables tend to increase or decrease together.'),
(62, 'Which value represents the strongest correlation?', 'multiple_choice', 1.00, 5, 'The closer to -1 or +1, the stronger the correlation; -0.95 is very strong.'),
(62, 'Correlation proves that one variable causes another.', 'true_false', 1.00, 6, 'False. Correlation does not imply causation; other factors may be involved.'),
(62, 'What is a spurious correlation?', 'multiple_choice', 1.00, 7, 'Spurious correlations are coincidental relationships without genuine connection.'),
(62, 'In a negative correlation, as one variable increases, the other:', 'multiple_choice', 1.00, 8, 'Negative correlation means variables move in opposite directions.'),
(62, 'What statistical test commonly measures linear correlation?', 'multiple_choice', 1.00, 9, 'Pearson correlation coefficient is the standard measure of linear relationships.'),
(62, 'A strong correlation always indicates an important relationship.', 'true_false', 1.00, 10, 'False. Strong correlations can be spurious or not meaningful in practice.');

-- Answer options for Quiz 62
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(611, 'The average of two variables', FALSE, 1),
(611, 'The relationship strength between two variables', TRUE, 2),
(611, 'The difference between variables', FALSE, 3),
(611, 'The sum of all data points', FALSE, 4),
(612, '0 to 1', FALSE, 1),
(612, '-1 to +1', TRUE, 2),
(612, '-100 to +100', FALSE, 3),
(612, '0 to 100', FALSE, 4),
(613, 'True', TRUE, 1),
(613, 'False', FALSE, 2),
(614, 'One variable causes the other', FALSE, 1),
(614, 'Variables tend to move in the same direction', TRUE, 2),
(614, 'Variables move in opposite directions', FALSE, 3),
(614, 'Variables are unrelated', FALSE, 4),
(615, '0.15', FALSE, 1),
(615, '-0.95', TRUE, 2),
(615, '0.45', FALSE, 3),
(615, '0', FALSE, 4),
(616, 'True', FALSE, 1),
(616, 'False', TRUE, 2),
(617, 'A very strong correlation', FALSE, 1),
(617, 'A misleading correlation without real connection', TRUE, 2),
(617, 'A correlation that changes over time', FALSE, 3),
(617, 'A negative correlation', FALSE, 4),
(618, 'Increases', FALSE, 1),
(618, 'Decreases', TRUE, 2),
(618, 'Stays the same', FALSE, 3),
(618, 'Becomes zero', FALSE, 4),
(619, 'T-test', FALSE, 1),
(619, 'Pearson correlation', TRUE, 2),
(619, 'ANOVA', FALSE, 3),
(619, 'Chi-square test', FALSE, 4),
(620, 'True', FALSE, 1),
(620, 'False', TRUE, 2);

-- Quiz 63 (Week 7): Basic Predictions
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(63, 'What is predictive analysis?', 'multiple_choice', 1.00, 1, 'Predictive analysis uses historical data to forecast future outcomes.'),
(63, 'Which term describes the variable being predicted?', 'multiple_choice', 1.00, 2, 'The dependent variable is what we are trying to predict or explain.'),
(63, 'Linear regression can only work with two variables.', 'true_false', 1.00, 3, 'False. Multiple linear regression can use many predictor variables.'),
(63, 'What is a regression line?', 'multiple_choice', 1.00, 4, 'A regression line is the line of best fit showing the relationship between variables.'),
(63, 'Which metric measures how well a model fits the data?', 'multiple_choice', 1.00, 5, 'R-squared indicates the proportion of variance explained by the model.'),
(63, 'All predictions made from data analysis are 100% accurate.', 'true_false', 1.00, 6, 'False. Predictions are probabilistic and contain uncertainty.'),
(63, 'What is overfitting in predictive modeling?', 'multiple_choice', 1.00, 7, 'Overfitting occurs when a model is too complex and captures noise as patterns.'),
(63, 'What does extrapolation mean?', 'multiple_choice', 1.00, 8, 'Extrapolation makes predictions beyond the range of observed data.'),
(63, 'What is a residual in regression analysis?', 'multiple_choice', 1.00, 9, 'Residuals are the differences between actual and predicted values.'),
(63, 'Training data and testing data should be the same.', 'true_false', 1.00, 10, 'False. Models should be trained on one dataset and tested on separate data.');

-- Answer options for Quiz 63
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(621, 'Analyzing only current data', FALSE, 1),
(621, 'Using historical data to forecast future outcomes', TRUE, 2),
(621, 'Describing past events', FALSE, 3),
(621, 'Cleaning messy data', FALSE, 4),
(622, 'Independent variable', FALSE, 1),
(622, 'Dependent variable', TRUE, 2),
(622, 'Control variable', FALSE, 3),
(622, 'Random variable', FALSE, 4),
(623, 'True', FALSE, 1),
(623, 'False', TRUE, 2),
(624, 'A line drawn through data points randomly', FALSE, 1),
(624, 'The line of best fit showing the relationship', TRUE, 2),
(624, 'A horizontal line at the mean', FALSE, 3),
(624, 'A line connecting maximum values', FALSE, 4),
(625, 'Mean absolute error', FALSE, 1),
(625, 'R-squared', TRUE, 2),
(625, 'Standard deviation', FALSE, 3),
(625, 'Correlation coefficient', FALSE, 4),
(626, 'True', FALSE, 1),
(626, 'False', TRUE, 2),
(627, 'Using too little data', FALSE, 1),
(627, 'Model is too complex and captures noise', TRUE, 2),
(627, 'Model is too simple', FALSE, 3),
(627, 'Having too many variables', FALSE, 4),
(628, 'Removing outliers from data', FALSE, 1),
(628, 'Making predictions beyond the observed data range', TRUE, 2),
(628, 'Calculating the average', FALSE, 3),
(628, 'Standardizing variables', FALSE, 4),
(629, 'The predicted values', FALSE, 1),
(629, 'The difference between actual and predicted values', TRUE, 2),
(629, 'The independent variables', FALSE, 3),
(629, 'The correlation coefficient', FALSE, 4),
(630, 'True', FALSE, 1),
(630, 'False', TRUE, 2);

-- Quiz 64 (Week 8): Presenting Insights
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(64, 'What is the primary goal of presenting data insights?', 'multiple_choice', 1.00, 1, 'The goal is to communicate findings clearly so audiences can make informed decisions.'),
(64, 'Which principle suggests starting with key findings?', 'multiple_choice', 1.00, 2, 'The inverted pyramid puts the most important information first.'),
(64, 'Technical jargon should always be used in presentations to sound professional.', 'true_false', 1.00, 3, 'False. Presentations should use clear language appropriate for the audience.'),
(64, 'What is a dashboard in data presentation?', 'multiple_choice', 1.00, 4, 'A dashboard displays key metrics and visualizations in one consolidated view.'),
(64, 'Which element is essential in every data visualization?', 'multiple_choice', 1.00, 5, 'Clear labels help audiences understand what is being displayed.'),
(64, 'Including all available data in a presentation ensures thoroughness.', 'true_false', 1.00, 6, 'False. Presentations should focus on relevant insights, not overwhelming detail.'),
(64, 'What is data storytelling?', 'multiple_choice', 1.00, 7, 'Data storytelling uses narrative structure to make insights compelling and memorable.'),
(64, 'Which format is most effective for executive summaries?', 'multiple_choice', 1.00, 8, 'Executives prefer concise, high-level summaries with key takeaways.'),
(64, 'What should be included in recommendations based on data analysis?', 'multiple_choice', 1.00, 9, 'Recommendations should include specific actions supported by the analysis.'),
(64, 'Visualizations can replace the need for context and explanation.', 'true_false', 1.00, 10, 'False. Visualizations need context, labels, and explanations to be effective.');

-- Answer options for Quiz 64
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(631, 'To show technical expertise', FALSE, 1),
(631, 'To communicate findings clearly for decision-making', TRUE, 2),
(631, 'To use all collected data', FALSE, 3),
(631, 'To create complex visualizations', FALSE, 4),
(632, 'The scientific method', FALSE, 1),
(632, 'The inverted pyramid', TRUE, 2),
(632, 'The circular approach', FALSE, 3),
(632, 'The chronological method', FALSE, 4),
(633, 'True', FALSE, 1),
(633, 'False', TRUE, 2),
(634, 'A type of chart', FALSE, 1),
(634, 'A consolidated view of key metrics and visualizations', TRUE, 2),
(634, 'A data cleaning tool', FALSE, 3),
(634, 'A presentation template', FALSE, 4),
(635, 'Bright colors', FALSE, 1),
(635, 'Clear labels and titles', TRUE, 2),
(635, '3D effects', FALSE, 3),
(635, 'Multiple fonts', FALSE, 4),
(636, 'True', FALSE, 1),
(636, 'False', TRUE, 2),
(637, 'Using only numbers', FALSE, 1),
(637, 'Presenting data as a compelling narrative', TRUE, 2),
(637, 'Avoiding visualizations', FALSE, 3),
(637, 'Showing all raw data', FALSE, 4),
(638, 'Detailed technical reports', FALSE, 1),
(638, 'Concise summaries with key takeaways', TRUE, 2),
(638, 'Complete raw datasets', FALSE, 3),
(638, 'Long narrative explanations', FALSE, 4),
(639, 'General suggestions without specifics', FALSE, 1),
(639, 'Specific actions supported by analysis', TRUE, 2),
(639, 'Personal opinions only', FALSE, 3),
(639, 'Predictions without evidence', FALSE, 4),
(640, 'True', FALSE, 1),
(640, 'False', TRUE, 2);

-- COURSE 9: Nutrition and Wellness
-- Quiz 65 (Week 1): Nutrition Basics
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(65, 'Which macronutrient is the body''s primary energy source?', 'multiple_choice', 1.00, 1, 'Carbohydrates are the main source of energy for the body.'),
(65, 'How many essential amino acids must be obtained from diet?', 'multiple_choice', 1.00, 2, 'There are 9 essential amino acids that the body cannot produce.'),
(65, 'Vitamins provide energy to the body.', 'true_false', 1.00, 3, 'False. Vitamins are essential nutrients but do not provide calories or energy.'),
(65, 'What are the three main macronutrients?', 'multiple_choice', 1.00, 4, 'Carbohydrates, proteins, and fats are the three macronutrients.'),
(65, 'Which type of fat is considered heart-healthy?', 'multiple_choice', 1.00, 5, 'Unsaturated fats support cardiovascular health and are found in plant oils and fish.'),
(65, 'All calories are nutritionally equal regardless of their source.', 'true_false', 1.00, 6, 'False. Nutrient density matters; 100 calories of vegetables provide more nutrition than 100 calories of candy.'),
(65, 'What is the primary function of dietary fiber?', 'multiple_choice', 1.00, 7, 'Fiber aids digestion and promotes healthy bowel movements.'),
(65, 'Which nutrient is essential for building and repairing tissues?', 'multiple_choice', 1.00, 8, 'Protein is crucial for tissue growth, repair, and maintenance.'),
(65, 'What does RDA stand for in nutrition?', 'multiple_choice', 1.00, 9, 'RDA (Recommended Dietary Allowance) guides adequate nutrient intake.'),
(65, 'Micronutrients are needed in larger quantities than macronutrients.', 'true_false', 1.00, 10, 'False. Micronutrients (vitamins and minerals) are needed in small amounts compared to macronutrients.');

-- Answer options for Quiz 65
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(641, 'Proteins', FALSE, 1),
(641, 'Carbohydrates', TRUE, 2),
(641, 'Fats', FALSE, 3),
(641, 'Vitamins', FALSE, 4),
(642, '5', FALSE, 1),
(642, '9', TRUE, 2),
(642, '12', FALSE, 3),
(642, '20', FALSE, 4),
(643, 'True', FALSE, 1),
(643, 'False', TRUE, 2),
(644, 'Vitamins, minerals, and water', FALSE, 1),
(644, 'Carbohydrates, proteins, and fats', TRUE, 2),
(644, 'Fiber, sugar, and starch', FALSE, 3),
(644, 'Calcium, iron, and zinc', FALSE, 4),
(645, 'Saturated fat', FALSE, 1),
(645, 'Unsaturated fat', TRUE, 2),
(645, 'Trans fat', FALSE, 3),
(645, 'Hydrogenated fat', FALSE, 4),
(646, 'True', FALSE, 1),
(646, 'False', TRUE, 2),
(647, 'Providing energy', FALSE, 1),
(647, 'Supporting digestive health', TRUE, 2),
(647, 'Building muscle', FALSE, 3),
(647, 'Storing vitamins', FALSE, 4),
(648, 'Carbohydrates', FALSE, 1),
(648, 'Protein', TRUE, 2),
(648, 'Fiber', FALSE, 3),
(648, 'Water', FALSE, 4),
(649, 'Regular Diet Assessment', FALSE, 1),
(649, 'Recommended Dietary Allowance', TRUE, 2),
(649, 'Required Daily Activity', FALSE, 3),
(649, 'Reduced Diet Application', FALSE, 4),
(650, 'True', FALSE, 1),
(650, 'False', TRUE, 2);

-- Quiz 66 (Week 2): Reading Food Labels
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(66, 'What does the serving size on a food label represent?', 'multiple_choice', 1.00, 1, 'Serving size indicates the standardized amount for nutritional information.'),
(66, 'Where can you find the total calorie content per serving?', 'multiple_choice', 1.00, 2, 'Calories are prominently displayed at the top of the Nutrition Facts label.'),
(66, 'The % Daily Value is based on a 2,000 calorie diet.', 'true_false', 1.00, 3, 'True. Daily Value percentages use 2,000 calories as the reference standard.'),
(66, 'What does a 5% Daily Value indicate?', 'multiple_choice', 1.00, 4, '5% or less DV is considered low for a nutrient.'),
(66, 'Which nutrient should you limit in your diet?', 'multiple_choice', 1.00, 5, 'Saturated fat should be limited as it can raise cholesterol levels.'),
(66, 'Ingredients on food labels are listed in alphabetical order.', 'true_false', 1.00, 6, 'False. Ingredients are listed by weight from most to least.'),
(66, 'What does "trans fat" do to cholesterol levels?', 'multiple_choice', 1.00, 7, 'Trans fats raise bad cholesterol and lower good cholesterol.'),
(66, 'Which statement about "natural" on food labels is accurate?', 'multiple_choice', 1.00, 8, '"Natural" has minimal regulation and doesn''t guarantee nutritional quality.'),
(66, 'What information is NOT required on a Nutrition Facts label?', 'multiple_choice', 1.00, 9, 'Expiration dates are regulated separately from Nutrition Facts labels.'),
(66, 'A food labeled "low sodium" must have 140mg or less per serving.', 'true_false', 1.00, 10, 'True. Low sodium is defined as 140mg or less per serving.');

-- Answer options for Quiz 66
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(651, 'The recommended amount to eat', FALSE, 1),
(651, 'A standardized amount for nutritional information', TRUE, 2),
(651, 'The entire package contents', FALSE, 3),
(651, 'The minimum you should consume', FALSE, 4),
(652, 'Bottom of the label', FALSE, 1),
(652, 'Top of the Nutrition Facts label', TRUE, 2),
(652, 'Ingredient list', FALSE, 3),
(652, 'Back of the package', FALSE, 4),
(653, 'True', TRUE, 1),
(653, 'False', FALSE, 2),
(654, 'High in that nutrient', FALSE, 1),
(654, 'Low in that nutrient', TRUE, 2),
(654, 'Moderate in that nutrient', FALSE, 3),
(654, 'Excessive in that nutrient', FALSE, 4),
(655, 'Protein', FALSE, 1),
(655, 'Saturated fat', TRUE, 2),
(655, 'Fiber', FALSE, 3),
(655, 'Vitamin D', FALSE, 4),
(656, 'True', FALSE, 1),
(656, 'False', TRUE, 2),
(657, 'Lowers both good and bad cholesterol', FALSE, 1),
(657, 'Raises bad cholesterol and lowers good cholesterol', TRUE, 2),
(657, 'Has no effect on cholesterol', FALSE, 3),
(657, 'Only raises good cholesterol', FALSE, 4),
(658, 'It means organic and pesticide-free', FALSE, 1),
(658, 'It has minimal regulation and meaning', TRUE, 2),
(658, 'It guarantees no artificial ingredients', FALSE, 3),
(658, 'It must be certified by the FDA', FALSE, 4),
(659, 'Total carbohydrates', FALSE, 1),
(659, 'Expiration date', TRUE, 2),
(659, 'Serving size', FALSE, 3),
(659, 'Total fat', FALSE, 4),
(660, 'True', TRUE, 1),
(660, 'False', FALSE, 2);

-- Quiz 67 (Week 3): Meal Planning
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(67, 'What is the main benefit of meal planning?', 'multiple_choice', 1.00, 1, 'Meal planning saves time, money, and helps maintain nutritional goals.'),
(67, 'What does the "plate method" recommend for vegetables?', 'multiple_choice', 1.00, 2, 'Half your plate should be filled with vegetables and fruits.'),
(67, 'Meal prep must be done for an entire week at once.', 'true_false', 1.00, 3, 'False. Meal prep can be done in whatever timeframe works for your schedule.'),
(67, 'What is batch cooking?', 'multiple_choice', 1.00, 4, 'Batch cooking prepares large quantities to use throughout the week.'),
(67, 'Which factor is most important when planning balanced meals?', 'multiple_choice', 1.00, 5, 'Variety ensures you get a range of nutrients from different food groups.'),
(67, 'Frozen vegetables are always less nutritious than fresh vegetables.', 'true_false', 1.00, 6, 'False. Frozen vegetables are often frozen at peak ripeness and retain nutrients well.'),
(67, 'What is the recommended approach to grocery shopping for meal planning?', 'multiple_choice', 1.00, 7, 'Shopping with a list based on your meal plan prevents impulse purchases.'),
(67, 'How can you make meal planning more sustainable?', 'multiple_choice', 1.00, 8, 'Planning to use leftovers reduces waste and saves time.'),
(67, 'What is portion control?', 'multiple_choice', 1.00, 9, 'Portion control means eating appropriate serving sizes for your needs.'),
(67, 'All meals need to be home-cooked to be healthy.', 'true_false', 1.00, 10, 'False. Healthy choices can be made when dining out or buying prepared foods.');

-- Answer options for Quiz 67
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(661, 'Making food look more attractive', FALSE, 1),
(661, 'Saving time, money, and maintaining nutrition goals', TRUE, 2),
(661, 'Eating the same foods daily', FALSE, 3),
(661, 'Reducing cooking skills needed', FALSE, 4),
(662, 'One-quarter of the plate', FALSE, 1),
(662, 'Half of the plate', TRUE, 2),
(662, 'One-third of the plate', FALSE, 3),
(662, 'The entire plate', FALSE, 4),
(663, 'True', FALSE, 1),
(663, 'False', TRUE, 2),
(664, 'Cooking at high temperatures', FALSE, 1),
(664, 'Preparing large quantities for multiple meals', TRUE, 2),
(664, 'Using a slow cooker', FALSE, 3),
(664, 'Cooking without recipes', FALSE, 4),
(665, 'Eating only organic foods', FALSE, 1),
(665, 'Including variety from different food groups', TRUE, 2),
(665, 'Minimizing calories', FALSE, 3),
(665, 'Avoiding all processed foods', FALSE, 4),
(666, 'True', FALSE, 1),
(666, 'False', TRUE, 2),
(667, 'Shopping without a plan for spontaneity', FALSE, 1),
(667, 'Using a list based on your meal plan', TRUE, 2),
(667, 'Buying everything on sale', FALSE, 3),
(667, 'Shopping daily for fresh ingredients', FALSE, 4),
(668, 'Buying expensive ingredients', FALSE, 1),
(668, 'Planning to use leftovers', TRUE, 2),
(668, 'Only eating raw foods', FALSE, 3),
(668, 'Avoiding all animal products', FALSE, 4),
(669, 'Eating only small amounts', FALSE, 1),
(669, 'Managing appropriate serving sizes for your needs', TRUE, 2),
(669, 'Weighing every food item', FALSE, 3),
(669, 'Skipping meals', FALSE, 4),
(670, 'True', FALSE, 1),
(670, 'False', TRUE, 2);

-- Quiz 68 (Week 4): Weight Management
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(68, 'What is a calorie?', 'multiple_choice', 1.00, 1, 'A calorie is a unit of energy from food used by the body.'),
(68, 'How many calories are in one pound of body fat?', 'multiple_choice', 1.00, 2, 'Approximately 3,500 calories equals one pound of body fat.'),
(68, 'Eating late at night always causes weight gain.', 'true_false', 1.00, 3, 'False. Total calorie intake matters more than timing, though eating patterns can affect some people.'),
(68, 'What does BMR stand for?', 'multiple_choice', 1.00, 4, 'Basal Metabolic Rate is the energy needed for basic body functions at rest.'),
(68, 'Which approach is most effective for sustainable weight loss?', 'multiple_choice', 1.00, 5, 'Small, gradual changes are more sustainable than drastic restrictions.'),
(68, 'All carbohydrates should be avoided for weight loss.', 'true_false', 1.00, 6, 'False. Complex carbohydrates are important; focus on quality and portion sizes.'),
(68, 'What is a healthy rate of weight loss per week?', 'multiple_choice', 1.00, 7, '1-2 pounds per week is considered safe and sustainable.'),
(68, 'Which factor affects metabolism the most?', 'multiple_choice', 1.00, 8, 'Muscle mass significantly impacts metabolic rate as muscle burns more calories.'),
(68, 'What is the "set point" theory?', 'multiple_choice', 1.00, 9, 'The set point theory suggests the body naturally regulates weight within a range.'),
(68, 'Skipping meals is an effective weight loss strategy.', 'true_false', 1.00, 10, 'False. Skipping meals can slow metabolism and lead to overeating later.');

-- Answer options for Quiz 68
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(671, 'A type of nutrient', FALSE, 1),
(671, 'A unit of energy from food', TRUE, 2),
(671, 'A measure of food weight', FALSE, 3),
(671, 'A vitamin measurement', FALSE, 4),
(672, '2,000', FALSE, 1),
(672, '3,500', TRUE, 2),
(672, '5,000', FALSE, 3),
(672, '1,000', FALSE, 4),
(673, 'True', FALSE, 1),
(673, 'False', TRUE, 2),
(674, 'Body Mass Ratio', FALSE, 1),
(674, 'Basal Metabolic Rate', TRUE, 2),
(674, 'Basic Muscle Requirement', FALSE, 3),
(674, 'Balanced Meal Routine', FALSE, 4),
(675, 'Extreme calorie restriction', FALSE, 1),
(675, 'Small, gradual changes', TRUE, 2),
(675, 'Eliminating entire food groups', FALSE, 3),
(675, 'Fasting for extended periods', FALSE, 4),
(676, 'True', FALSE, 1),
(676, 'False', TRUE, 2),
(677, '5-7 pounds', FALSE, 1),
(677, '1-2 pounds', TRUE, 2),
(677, '3-4 pounds', FALSE, 3),
(677, '0.5 pounds', FALSE, 4),
(678, 'Age', FALSE, 1),
(678, 'Muscle mass', TRUE, 2),
(678, 'Hair color', FALSE, 3),
(678, 'Height', FALSE, 4),
(679, 'The maximum weight you can lift', FALSE, 1),
(679, 'The body''s natural weight regulation range', TRUE, 2),
(679, 'Your goal weight', FALSE, 3),
(679, 'The weight of your bones', FALSE, 4),
(680, 'True', FALSE, 1),
(680, 'False', TRUE, 2);

-- Quiz 69 (Week 5): Special Diets
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(69, 'What defines a vegetarian diet?', 'multiple_choice', 1.00, 1, 'Vegetarians exclude meat, poultry, and fish from their diet.'),
(69, 'Which diet eliminates gluten?', 'multiple_choice', 1.00, 2, 'A gluten-free diet is essential for people with celiac disease or gluten sensitivity.'),
(69, 'The Mediterranean diet emphasizes plant-based foods and healthy fats.', 'true_false', 1.00, 3, 'True. The Mediterranean diet focuses on vegetables, fruits, whole grains, and olive oil.'),
(69, 'What is a vegan diet?', 'multiple_choice', 1.00, 4, 'Vegans exclude all animal products including meat, dairy, and eggs.'),
(69, 'Which nutrient is often supplemented in vegan diets?', 'multiple_choice', 1.00, 5, 'Vitamin B12 is primarily found in animal products and often needs supplementation.'),
(69, 'The ketogenic diet is high in carbohydrates.', 'true_false', 1.00, 6, 'False. The keto diet is very low in carbs and high in fats.'),
(69, 'What is the DASH diet designed to help manage?', 'multiple_choice', 1.00, 7, 'DASH (Dietary Approaches to Stop Hypertension) helps manage blood pressure.'),
(69, 'Which food is naturally gluten-free?', 'multiple_choice', 1.00, 8, 'Rice is naturally gluten-free, while wheat, barley, and rye contain gluten.'),
(69, 'What does "paleo" diet emphasize?', 'multiple_choice', 1.00, 9, 'The paleo diet focuses on whole foods similar to what hunter-gatherers ate.'),
(69, 'All special diets are healthier than standard balanced diets.', 'true_false', 1.00, 10, 'False. No single diet is universally healthier; it depends on individual needs and implementation.');

-- Answer options for Quiz 69
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(681, 'Excludes only red meat', FALSE, 1),
(681, 'Excludes meat, poultry, and fish', TRUE, 2),
(681, 'Excludes all animal products', FALSE, 3),
(681, 'Includes fish but not meat', FALSE, 4),
(682, 'Paleo diet', FALSE, 1),
(682, 'Gluten-free diet', TRUE, 2),
(682, 'Mediterranean diet', FALSE, 3),
(682, 'DASH diet', FALSE, 4),
(683, 'True', TRUE, 1),
(683, 'False', FALSE, 2),
(684, 'Excludes only meat', FALSE, 1),
(684, 'Excludes all animal products', TRUE, 2),
(684, 'Includes fish', FALSE, 3),
(684, 'Includes dairy products', FALSE, 4),
(685, 'Iron', FALSE, 1),
(685, 'Vitamin B12', TRUE, 2),
(685, 'Vitamin C', FALSE, 3),
(685, 'Fiber', FALSE, 4),
(686, 'True', FALSE, 1),
(686, 'False', TRUE, 2),
(687, 'Diabetes', FALSE, 1),
(687, 'High blood pressure', TRUE, 2),
(687, 'Cholesterol only', FALSE, 3),
(687, 'Weight loss exclusively', FALSE, 4),
(688, 'Whole wheat bread', FALSE, 1),
(688, 'Rice', TRUE, 2),
(688, 'Barley', FALSE, 3),
(688, 'Regular pasta', FALSE, 4),
(689, 'Processed convenience foods', FALSE, 1),
(689, 'Whole, unprocessed foods', TRUE, 2),
(689, 'Only organic foods', FALSE, 3),
(689, 'High-carbohydrate foods', FALSE, 4),
(690, 'True', FALSE, 1),
(690, 'False', TRUE, 2);

-- Quiz 70 (Week 6): Hydration
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(70, 'What percentage of the human body is water?', 'multiple_choice', 1.00, 1, 'Approximately 60% of adult body weight is water.'),
(70, 'What is the general daily water intake recommendation?', 'multiple_choice', 1.00, 2, 'The "8x8 rule" suggests eight 8-ounce glasses, though needs vary.'),
(70, 'All fluids count toward daily hydration needs.', 'true_false', 1.00, 3, 'True. Water from beverages, food, and other liquids all contribute to hydration.'),
(70, 'Which is an early sign of dehydration?', 'multiple_choice', 1.00, 4, 'Thirst and dark urine are early indicators of dehydration.'),
(70, 'What affects individual hydration needs?', 'multiple_choice', 1.00, 5, 'Activity level, climate, and health status all affect hydration needs.'),
(70, 'Caffeinated beverages cause severe dehydration.', 'true_false', 1.00, 6, 'False. While caffeine has mild diuretic effects, caffeinated beverages still contribute to hydration.'),
(70, 'What color should urine be when properly hydrated?', 'multiple_choice', 1.00, 7, 'Pale yellow indicates good hydration status.'),
(70, 'Which foods have high water content?', 'multiple_choice', 1.00, 8, 'Watermelon and cucumber are over 90% water.'),
(70, 'What is the main function of water in the body?', 'multiple_choice', 1.00, 9, 'Water regulates temperature, transports nutrients, and removes waste.'),
(70, 'You should only drink water when you feel thirsty.', 'true_false', 1.00, 10, 'False. By the time you feel thirsty, you may already be mildly dehydrated.');

-- Answer options for Quiz 70
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(691, '30%', FALSE, 1),
(691, '60%', TRUE, 2),
(691, '80%', FALSE, 3),
(691, '45%', FALSE, 4),
(692, '4 glasses', FALSE, 1),
(692, '8 glasses (8 oz each)', TRUE, 2),
(692, '12 glasses', FALSE, 3),
(692, '2 glasses', FALSE, 4),
(693, 'True', TRUE, 1),
(693, 'False', FALSE, 2),
(694, 'Increased energy', FALSE, 1),
(694, 'Thirst and dark urine', TRUE, 2),
(694, 'Improved focus', FALSE, 3),
(694, 'Better appetite', FALSE, 4),
(695, 'Only temperature', FALSE, 1),
(695, 'Activity level, climate, and health status', TRUE, 2),
(695, 'Age only', FALSE, 3),
(695, 'Gender only', FALSE, 4),
(696, 'True', FALSE, 1),
(696, 'False', TRUE, 2),
(697, 'Dark amber', FALSE, 1),
(697, 'Pale yellow', TRUE, 2),
(697, 'Clear/colorless', FALSE, 3),
(697, 'Bright yellow', FALSE, 4),
(698, 'Nuts and seeds', FALSE, 1),
(698, 'Watermelon and cucumber', TRUE, 2),
(698, 'Bread and crackers', FALSE, 3),
(698, 'Meat and cheese', FALSE, 4),
(699, 'Providing energy', FALSE, 1),
(699, 'Regulating temperature and transporting nutrients', TRUE, 2),
(699, 'Building muscle', FALSE, 3),
(699, 'Storing vitamins', FALSE, 4),
(700, 'True', FALSE, 1),
(700, 'False', TRUE, 2);

-- Quiz 71 (Week 7): Food Safety
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(71, 'What is the danger zone temperature range for food?', 'multiple_choice', 1.00, 1, 'Bacteria multiply rapidly between 40°F and 140°F (4°C-60°C).'),
(71, 'What does the "two-hour rule" state?', 'multiple_choice', 1.00, 2, 'Perishable food should not be left at room temperature for more than 2 hours.'),
(71, 'Washing raw chicken before cooking reduces bacteria.', 'true_false', 1.00, 3, 'False. Washing chicken can spread bacteria; cooking to proper temperature kills bacteria.'),
(71, 'What is cross-contamination?', 'multiple_choice', 1.00, 4, 'Cross-contamination is the transfer of harmful bacteria between foods or surfaces.'),
(71, 'What is the safe internal temperature for cooking chicken?', 'multiple_choice', 1.00, 5, 'Chicken should reach 165°F (74°C) to be safely cooked.'),
(71, 'Freezing food kills all bacteria.', 'true_false', 1.00, 6, 'False. Freezing stops bacteria growth but doesn''t kill bacteria; they become active again when thawed.'),
(71, 'Which practice prevents cross-contamination?', 'multiple_choice', 1.00, 7, 'Using separate cutting boards for raw meat and produce prevents bacteria transfer.'),
(71, 'What should you do if canned food is bulging or dented?', 'multiple_choice', 1.00, 8, 'Bulging or severely dented cans may contain dangerous bacteria and should be discarded.'),
(71, 'What does "use by" date indicate?', 'multiple_choice', 1.00, 9, '"Use by" suggests peak quality but isn''t always a safety deadline for most foods.'),
(71, 'It is safe to thaw frozen meat on the kitchen counter.', 'true_false', 1.00, 10, 'False. Counter thawing allows bacteria growth; use refrigerator, cold water, or microwave.');

-- Answer options for Quiz 71
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(701, '20°F to 100°F', FALSE, 1),
(701, '40°F to 140°F', TRUE, 2),
(701, '32°F to 120°F', FALSE, 3),
(701, '50°F to 150°F', FALSE, 4),
(702, 'Food can sit out indefinitely', FALSE, 1),
(702, 'Perishable food shouldn''t be left out more than 2 hours', TRUE, 2),
(702, 'Food must be refrigerated within 2 minutes', FALSE, 3),
(702, 'Cooked food lasts 2 days in the fridge', FALSE, 4),
(703, 'True', FALSE, 1),
(703, 'False', TRUE, 2),
(704, 'Mixing different foods together', FALSE, 1),
(704, 'Transfer of harmful bacteria between foods', TRUE, 2),
(704, 'Using contaminated water', FALSE, 3),
(704, 'Eating expired food', FALSE, 4),
(705, '145°F', FALSE, 1),
(705, '165°F', TRUE, 2),
(705, '155°F', FALSE, 3),
(705, '175°F', FALSE, 4),
(706, 'True', FALSE, 1),
(706, 'False', TRUE, 2),
(707, 'Washing hands once before cooking', FALSE, 1),
(707, 'Using separate cutting boards for raw meat and produce', TRUE, 2),
(707, 'Storing all foods together', FALSE, 3),
(707, 'Using the same knife for everything', FALSE, 4),
(708, 'It is perfectly safe to use', FALSE, 1),
(708, 'Discard it as it may contain harmful bacteria', TRUE, 2),
(708, 'Open it immediately', FALSE, 3),
(708, 'Freeze it for later use', FALSE, 4),
(709, 'The exact date food becomes unsafe', FALSE, 1),
(709, 'The date for peak quality', TRUE, 2),
(709, 'When the food was manufactured', FALSE, 3),
(709, 'The required disposal date', FALSE, 4),
(710, 'True', FALSE, 1),
(710, 'False', TRUE, 2);

-- Quiz 72 (Week 8): Sustainable Eating
INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(72, 'What is sustainable eating?', 'multiple_choice', 1.00, 1, 'Sustainable eating considers environmental, social, and health impacts of food choices.'),
(72, 'Which food production has the highest carbon footprint?', 'multiple_choice', 1.00, 2, 'Beef production generates significantly more greenhouse gases than plant-based foods.'),
(72, 'Eating locally grown food always has a smaller carbon footprint.', 'true_false', 1.00, 3, 'False. Transportation is one factor, but production methods and seasonality also matter.'),
(72, 'What does "farm to table" mean?', 'multiple_choice', 1.00, 4, 'Farm to table emphasizes direct sourcing from local producers.'),
(72, 'Which practice reduces food waste?', 'multiple_choice', 1.00, 5, 'Meal planning helps use food efficiently and reduces waste.'),
(72, 'Organic farming never uses any pesticides.', 'true_false', 1.00, 6, 'False. Organic farming uses approved natural pesticides but avoids synthetic ones.'),
(72, 'What is regenerative agriculture?', 'multiple_choice', 1.00, 7, 'Regenerative agriculture focuses on restoring soil health and ecosystems.'),
(72, 'Which protein source is generally most sustainable?', 'multiple_choice', 1.00, 8, 'Plant-based proteins typically have lower environmental impact than meat.'),
(72, 'What percentage of food produced globally is wasted?', 'multiple_choice', 1.00, 9, 'Approximately one-third of food produced worldwide goes to waste.'),
(72, 'Composting food scraps contributes to sustainability.', 'true_false', 1.00, 10, 'True. Composting reduces landfill waste and creates nutrient-rich soil.');

-- Answer options for Quiz 72
INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
(711, 'Only eating organic foods', FALSE, 1),
(711, 'Considering environmental, social, and health impacts', TRUE, 2),
(711, 'Eating only locally grown foods', FALSE, 3),
(711, 'Following a vegetarian diet', FALSE, 4),
(712, 'Chicken', FALSE, 1),
(712, 'Beef', TRUE, 2),
(712, 'Fish', FALSE, 3),
(712, 'Beans', FALSE, 4),
(713, 'True', FALSE, 1),
(713, 'False', TRUE, 2),
(714, 'Eating at restaurants', FALSE, 1),
(714, 'Direct sourcing from local producers', TRUE, 2),
(714, 'Growing your own food only', FALSE, 3),
(714, 'Buying imported specialty foods', FALSE, 4),
(715, 'Buying in bulk regardless of need', FALSE, 1),
(715, 'Meal planning and using leftovers', TRUE, 2),
(715, 'Shopping daily', FALSE, 3),
(715, 'Throwing away expired food', FALSE, 4),
(716, 'True', FALSE, 1),
(716, 'False', TRUE, 2),
(717, 'Farming that generates electricity', FALSE, 1),
(717, 'Farming that restores soil health and ecosystems', TRUE, 2),
(717, 'Using only synthetic fertilizers', FALSE, 3),
(717, 'Large-scale monoculture', FALSE, 4),
(718, 'Beef', FALSE, 1),
(718, 'Legumes and beans', TRUE, 2),
(718, 'Pork', FALSE, 3),
(718, 'Lamb', FALSE, 4),
(719, '10%', FALSE, 1),
(719, 'About one-third', TRUE, 2),
(719, '50%', FALSE, 3),
(719, '5%', FALSE, 4),
(720, 'True', TRUE, 1),
(720, 'False', FALSE, 2);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(73, 'What is the definition of physical fitness?', 'multiple_choice', 1.00, 1, 'Physical fitness is the ability to carry out daily tasks with vigor and alertness, without undue fatigue.'),
(73, 'Which component of fitness relates to the range of motion around joints?', 'multiple_choice', 1.00, 2, 'Flexibility refers to the range of motion available at a joint or group of joints.'),
(73, 'Cardiorespiratory endurance is the same as muscular strength.', 'true_false', 1.00, 3, 'False. Cardiorespiratory endurance involves heart and lung efficiency, while muscular strength is about force production.'),
(73, 'What does FITT stand for in exercise programming?', 'multiple_choice', 1.00, 4, 'FITT stands for Frequency, Intensity, Time, and Type - the key components of an exercise program.'),
(73, 'Which principle states that the body adapts to the demands placed on it?', 'multiple_choice', 1.00, 5, 'The Principle of Specificity states that the body adapts specifically to the type of demands placed on it.'),
(73, 'Resting heart rate typically decreases as cardiorespiratory fitness improves.', 'true_false', 1.00, 6, 'True. A lower resting heart rate indicates more efficient heart function from improved fitness.'),
(73, 'What is the recommended minimum weekly exercise for adults according to health guidelines?', 'multiple_choice', 1.00, 7, 'Adults should get at least 150 minutes of moderate-intensity or 75 minutes of vigorous-intensity exercise weekly.'),
(73, 'Which health-related component of fitness is most associated with preventing osteoporosis?', 'multiple_choice', 1.00, 8, 'Muscular strength, particularly through weight-bearing exercises, helps maintain bone density.'),
(73, 'Body composition refers only to body weight.', 'true_false', 1.00, 9, 'False. Body composition refers to the proportion of fat versus fat-free mass in the body.'),
(73, 'What is the purpose of a cool-down after exercise?', 'multiple_choice', 1.00, 10, 'Cool-down helps gradually lower heart rate, prevent blood pooling, and enhance recovery.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 721
(721, 'The ability to lift heavy weights', FALSE, 1),
(721, 'The ability to carry out daily tasks with vigor and alertness', TRUE, 2),
(721, 'Having large muscles', FALSE, 3),
(721, 'Being able to run long distances', FALSE, 4),
-- Question 722
(722, 'Muscular strength', FALSE, 1),
(722, 'Flexibility', TRUE, 2),
(722, 'Cardiorespiratory endurance', FALSE, 3),
(722, 'Body composition', FALSE, 4),
-- Question 723
(723, 'True', FALSE, 1),
(723, 'False', TRUE, 2),
-- Question 724
(724, 'Fast, Intense, Tough, Training', FALSE, 1),
(724, 'Frequency, Intensity, Time, Type', TRUE, 2),
(724, 'Flexibility, Intensity, Timing, Technique', FALSE, 3),
(724, 'Frequency, Interval, Time, Target', FALSE, 4),
-- Question 725
(725, 'Principle of Overload', FALSE, 1),
(725, 'Principle of Specificity', TRUE, 2),
(725, 'Principle of Progression', FALSE, 3),
(725, 'Principle of Reversibility', FALSE, 4),
-- Question 726
(726, 'True', TRUE, 1),
(726, 'False', FALSE, 2),
-- Question 727
(727, '60 minutes per week', FALSE, 1),
(727, '90 minutes per week', FALSE, 2),
(727, '150 minutes per week', TRUE, 3),
(727, '300 minutes per week', FALSE, 4),
-- Question 728
(728, 'Flexibility', FALSE, 1),
(728, 'Cardiorespiratory endurance', FALSE, 2),
(728, 'Muscular strength', TRUE, 3),
(728, 'Body composition', FALSE, 4),
-- Question 729
(729, 'True', FALSE, 1),
(729, 'False', TRUE, 2),
-- Question 730
(730, 'To build more muscle', FALSE, 1),
(730, 'To gradually lower heart rate and enhance recovery', TRUE, 2),
(730, 'To increase exercise intensity', FALSE, 3),
(730, 'To replace stretching', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(74, 'What is the primary benefit of cardiovascular exercise?', 'multiple_choice', 1.00, 1, 'Cardiovascular exercise primarily improves heart and lung function and efficiency.'),
(74, 'Which activity is NOT considered cardiovascular exercise?', 'multiple_choice', 1.00, 2, 'Weight lifting is primarily strength training, not cardiovascular exercise.'),
(74, 'The talk test can help determine if you''re exercising at an appropriate intensity.', 'true_false', 1.00, 3, 'True. Being able to talk but not sing during exercise indicates moderate intensity.'),
(74, 'What is VO2 max?', 'multiple_choice', 1.00, 4, 'VO2 max is the maximum amount of oxygen your body can use during intense exercise.'),
(74, 'How often should adults engage in cardiovascular exercise per week?', 'multiple_choice', 1.00, 5, 'Adults should aim for at least 150 minutes of moderate or 75 minutes of vigorous cardio weekly.'),
(74, 'High-intensity interval training (HIIT) involves alternating between high and low intensity periods.', 'true_false', 1.00, 6, 'True. HIIT alternates short bursts of intense exercise with recovery periods.'),
(74, 'Which heart rate zone is best for improving cardiovascular endurance?', 'multiple_choice', 1.00, 7, '70-85% of maximum heart rate is the target zone for improving cardiovascular endurance.'),
(74, 'What is the recommended duration for a single cardiovascular exercise session?', 'multiple_choice', 1.00, 8, 'Most guidelines recommend 30-60 minutes per session for cardiovascular benefits.'),
(74, 'Swimming is a low-impact cardiovascular exercise.', 'true_false', 1.00, 9, 'True. Swimming is low-impact because water supports body weight, reducing joint stress.'),
(74, 'Which factor is most important for improving cardiovascular fitness?', 'multiple_choice', 1.00, 10, 'Consistency in training is the most important factor for long-term cardiovascular improvement.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 731
(731, 'Building large muscles', FALSE, 1),
(731, 'Improving heart and lung function', TRUE, 2),
(731, 'Increasing flexibility', FALSE, 3),
(731, 'Reducing appetite', FALSE, 4),
-- Question 732
(732, 'Running', FALSE, 1),
(732, 'Cycling', FALSE, 2),
(732, 'Swimming', FALSE, 3),
(732, 'Weight lifting', TRUE, 4),
-- Question 733
(733, 'True', TRUE, 1),
(733, 'False', FALSE, 2),
-- Question 734
(734, 'Maximum vertical jump height', FALSE, 1),
(734, 'Maximum heart rate', FALSE, 2),
(734, 'Maximum oxygen consumption during exercise', TRUE, 3),
(734, 'Maximum running speed', FALSE, 4),
-- Question 735
(735, 'Once per week', FALSE, 1),
(735, '3-5 times per week', TRUE, 2),
(735, 'Every day', FALSE, 3),
(735, 'Twice per month', FALSE, 4),
-- Question 736
(736, 'True', TRUE, 1),
(736, 'False', FALSE, 2),
-- Question 737
(737, '50-60% of maximum heart rate', FALSE, 1),
(737, '70-85% of maximum heart rate', TRUE, 2),
(737, '90-100% of maximum heart rate', FALSE, 3),
(737, '40-50% of maximum heart rate', FALSE, 4),
-- Question 738
(738, '10-15 minutes', FALSE, 1),
(738, '30-60 minutes', TRUE, 2),
(738, '2-3 hours', FALSE, 3),
(738, '5-10 minutes', FALSE, 4),
-- Question 739
(739, 'True', TRUE, 1),
(739, 'False', FALSE, 2),
-- Question 740
(740, 'Expensive equipment', FALSE, 1),
(740, 'Consistency in training', TRUE, 2),
(740, 'Working out only on weekends', FALSE, 3),
(740, 'Exercising at the same time every day', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(75, 'What is the principle of progressive overload?', 'multiple_choice', 1.00, 1, 'Progressive overload involves gradually increasing demands on the musculoskeletal system to continue making gains.'),
(75, 'Which type of muscle contraction occurs when the muscle lengthens under tension?', 'multiple_choice', 1.00, 2, 'Eccentric contractions occur when the muscle lengthens while under tension.'),
(75, 'Strength training can help improve bone density.', 'true_false', 1.00, 3, 'True. Weight-bearing exercise stimulates bone formation and can help prevent osteoporosis.'),
(75, 'What is the recommended rest period between sets for strength building?', 'multiple_choice', 1.00, 4, '60-90 seconds rest between sets is typically recommended for hypertrophy and strength building.'),
(75, 'Which exercise primarily targets the chest muscles?', 'multiple_choice', 1.00, 5, 'The bench press is a compound exercise that primarily works the pectoral muscles.'),
(75, 'More repetitions with lighter weights build the same type of strength as heavier weights with fewer reps.', 'true_false', 1.00, 6, 'False. Different rep ranges produce different adaptations - heavier weights build maximal strength, while lighter weights build muscular endurance.'),
(75, 'What is the recommended frequency for training each muscle group?', 'multiple_choice', 1.00, 7, 'Training each muscle group 2-3 times per week allows for optimal recovery and growth.'),
(75, 'Which of these is a compound exercise?', 'multiple_choice', 1.00, 8, 'Squats are compound exercises that work multiple muscle groups simultaneously.'),
(75, 'Proper form is more important than the amount of weight lifted.', 'true_false', 1.00, 9, 'True. Proper form ensures target muscles are worked effectively and reduces injury risk.'),
(75, 'What does DOMS stand for?', 'multiple_choice', 1.00, 10, 'DOMS stands for Delayed Onset Muscle Soreness, which typically occurs 24-72 hours after exercise.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 741
(741, 'Lifting the same weight every session', FALSE, 1),
(741, 'Gradually increasing exercise demands', TRUE, 2),
(741, 'Only working out when sore', FALSE, 3),
(741, 'Training every day without rest', FALSE, 4),
-- Question 742
(742, 'Concentric', FALSE, 1),
(742, 'Eccentric', TRUE, 2),
(742, 'Isometric', FALSE, 3),
(742, 'Isotonic', FALSE, 4),
-- Question 743
(743, 'True', TRUE, 1),
(743, 'False', FALSE, 2),
-- Question 744
(744, '10-20 seconds', FALSE, 1),
(744, '60-90 seconds', TRUE, 2),
(744, '5-10 minutes', FALSE, 3),
(744, 'No rest needed', FALSE, 4),
-- Question 745
(745, 'Squat', FALSE, 1),
(745, 'Bench press', TRUE, 2),
(745, 'Bicep curl', FALSE, 3),
(745, 'Calf raise', FALSE, 4),
-- Question 746
(746, 'True', FALSE, 1),
(746, 'False', TRUE, 2),
-- Question 747
(747, 'Once per month', FALSE, 1),
(747, 'Once per week', FALSE, 2),
(747, '2-3 times per week', TRUE, 3),
(747, 'Every day', FALSE, 4),
-- Question 748
(748, 'Bicep curl', FALSE, 1),
(748, 'Tricep extension', FALSE, 2),
(748, 'Squat', TRUE, 3),
(748, 'Calf raise', FALSE, 4),
-- Question 749
(749, 'True', TRUE, 1),
(749, 'False', FALSE, 2),
-- Question 750
(750, 'Delayed Onset Muscle Soreness', TRUE, 1),
(750, 'Direct Overload Muscle Strain', FALSE, 2),
(750, 'Daily Optimal Muscle Stimulation', FALSE, 3),
(750, 'Duration Of Muscle Stress', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(76, 'What is the difference between flexibility and mobility?', 'multiple_choice', 1.00, 1, 'Flexibility is passive range of motion, while mobility is active range of motion with control.'),
(76, 'Which type of stretching is most appropriate before a workout?', 'multiple_choice', 1.00, 2, 'Dynamic stretching is ideal before workouts as it prepares muscles for movement.'),
(76, 'Static stretching should be held for at least 60 seconds to be effective.', 'true_false', 1.00, 3, 'False. Static stretches are typically held for 15-30 seconds for optimal effectiveness.'),
(76, 'What is the primary benefit of improved flexibility?', 'multiple_choice', 1.00, 4, 'Improved flexibility enhances movement efficiency and can reduce injury risk.'),
(76, 'Which factor does NOT affect an individual''s flexibility?', 'multiple_choice', 1.00, 5, 'Blood type does not influence flexibility; age, gender, and activity level all affect it.'),
(76, 'PNF stretching typically involves contracting then stretching the target muscle.', 'true_false', 1.00, 6, 'True. PNF (Proprioceptive Neuromuscular Facilitation) uses contraction and relaxation cycles.'),
(76, 'What is the recommended frequency for flexibility training?', 'multiple_choice', 1.00, 7, 'Flexibility training should be done at least 2-3 times per week for best results.'),
(76, 'Which activity is best for improving overall mobility?', 'multiple_choice', 1.00, 8, 'Yoga combines strength, balance, and flexibility for comprehensive mobility improvement.'),
(76, 'Flexibility naturally decreases with age.', 'true_false', 1.00, 9, 'True. Without maintenance, flexibility typically declines with age due to collagen changes.'),
(76, 'What is the purpose of foam rolling?', 'multiple_choice', 1.00, 10, 'Foam rolling helps release muscle tightness and improve tissue quality through self-myofascial release.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 751
(751, 'They are the same thing', FALSE, 1),
(751, 'Flexibility is passive, mobility is active', TRUE, 2),
(751, 'Mobility is passive, flexibility is active', FALSE, 3),
(751, 'Flexibility only applies to athletes', FALSE, 4),
-- Question 752
(752, 'Static stretching', FALSE, 1),
(752, 'Dynamic stretching', TRUE, 2),
(752, 'Ballistic stretching', FALSE, 3),
(752, 'PNF stretching', FALSE, 4),
-- Question 753
(753, 'True', FALSE, 1),
(753, 'False', TRUE, 2),
-- Question 754
(754, 'Increased muscle size', FALSE, 1),
(754, 'Enhanced movement efficiency and reduced injury risk', TRUE, 2),
(754, 'Higher vertical jump', FALSE, 3),
(754, 'Faster running speed', FALSE, 4),
-- Question 755
(755, 'Age', FALSE, 1),
(755, 'Gender', FALSE, 2),
(755, 'Activity level', FALSE, 3),
(755, 'Blood type', TRUE, 4),
-- Question 756
(756, 'True', TRUE, 1),
(756, 'False', FALSE, 2),
-- Question 757
(757, 'Once per month', FALSE, 1),
(757, 'Only when sore', FALSE, 2),
(757, '2-3 times per week', TRUE, 3),
(757, 'Every hour', FALSE, 4),
-- Question 758
(758, 'Watching TV', FALSE, 1),
(758, 'Yoga', TRUE, 2),
(758, 'Reading', FALSE, 3),
(758, 'Sleeping', FALSE, 4),
-- Question 759
(759, 'True', TRUE, 1),
(759, 'False', FALSE, 2),
-- Question 760
(760, 'Building muscle', FALSE, 1),
(760, 'Releasing muscle tightness and improving tissue quality', TRUE, 2),
(760, 'Increasing heart rate', FALSE, 3),
(760, 'Replacing stretching', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(77, 'What is periodization in exercise programming?', 'multiple_choice', 1.00, 1, 'Periodization involves systematically planning training phases to optimize performance and prevent plateaus.'),
(77, 'Which training principle states that gains are lost when training stops?', 'multiple_choice', 1.00, 2, 'The Principle of Reversibility states that fitness improvements decline when training ceases.'),
(77, 'Cross-training involves using multiple forms of exercise to improve overall fitness.', 'true_false', 1.00, 3, 'True. Cross-training combines different exercise modalities for comprehensive fitness development.'),
(77, 'What is the purpose of a deload week?', 'multiple_choice', 1.00, 4, 'Deload weeks reduce training volume to allow recovery while maintaining fitness adaptations.'),
(77, 'Which variable is NOT part of exercise programming?', 'multiple_choice', 1.00, 5, 'Favorite color is not a programming variable; intensity, volume, and frequency are key variables.'),
(77, 'Overtraining syndrome can take weeks or months to recover from.', 'true_false', 1.00, 6, 'True. Overtraining syndrome requires significant recovery time due to systemic fatigue.'),
(77, 'What is the recommended approach for increasing training intensity?', 'multiple_choice', 1.00, 7, 'The 10% rule helps prevent injury by gradually increasing training demands.'),
(77, 'Which type of periodization involves changing training variables each session?', 'multiple_choice', 1.00, 8, 'Daily undulating periodization varies intensity and volume within each week.'),
(77, 'Active recovery involves complete rest from all physical activity.', 'true_false', 1.00, 9, 'False. Active recovery involves light exercise to promote recovery, not complete rest.'),
(77, 'What is the primary goal of the maintenance phase in periodization?', 'multiple_choice', 1.00, 10, 'Maintenance phases focus on preserving current fitness levels rather than making new gains.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 761
(761, 'Training randomly without a plan', FALSE, 1),
(761, 'Systematically planning training phases', TRUE, 2),
(761, 'Only doing one type of exercise', FALSE, 3),
(761, 'Exercising at the same intensity always', FALSE, 4),
-- Question 762
(762, 'Principle of Specificity', FALSE, 1),
(762, 'Principle of Overload', FALSE, 2),
(762, 'Principle of Reversibility', TRUE, 3),
(762, 'Principle of Progression', FALSE, 4),
-- Question 763
(763, 'True', TRUE, 1),
(763, 'False', FALSE, 2),
-- Question 764
(764, 'To train harder than ever', FALSE, 1),
(764, 'To allow recovery while maintaining adaptations', TRUE, 2),
(764, 'To completely stop exercising', FALSE, 3),
(764, 'To focus only on cardio', FALSE, 4),
-- Question 765
(765, 'Intensity', FALSE, 1),
(765, 'Volume', FALSE, 2),
(765, 'Frequency', FALSE, 3),
(765, 'Favorite color', TRUE, 4),
-- Question 766
(766, 'True', TRUE, 1),
(766, 'False', FALSE, 2),
-- Question 767
(767, 'Increase by 50% each week', FALSE, 1),
(767, 'Follow the 10% rule', TRUE, 2),
(767, 'Double the intensity monthly', FALSE, 3),
(767, 'Change everything at once', FALSE, 4),
-- Question 768
(768, 'Linear periodization', FALSE, 1),
(768, 'Daily undulating periodization', TRUE, 2),
(768, 'Block periodization', FALSE, 3),
(768, 'Reverse periodization', FALSE, 4),
-- Question 769
(769, 'True', FALSE, 1),
(769, 'False', TRUE, 2),
-- Question 770
(770, 'To make rapid gains', FALSE, 1),
(770, 'To lose fitness intentionally', FALSE, 2),
(770, 'To preserve current fitness levels', TRUE, 3),
(770, 'To try new exercises', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(78, 'What is the most common cause of exercise-related injuries?', 'multiple_choice', 1.00, 1, 'Overtraining and doing too much too soon account for most exercise-related injuries.'),
(78, 'Which of these is a proper warm-up component?', 'multiple_choice', 1.00, 2, 'Dynamic stretching prepares muscles for activity and should be part of a warm-up.'),
(78, 'Pain during exercise is always a sign of building strength.', 'true_false', 1.00, 3, 'False. Pain during exercise can indicate injury and should not be ignored.'),
(78, 'What does RICE stand for in acute injury management?', 'multiple_choice', 1.00, 4, 'RICE stands for Rest, Ice, Compression, Elevation for initial injury treatment.'),
(78, 'Which factor increases injury risk during exercise?', 'multiple_choice', 1.00, 5, 'Poor technique significantly increases injury risk by placing stress on wrong structures.'),
(78, 'Proper footwear can help prevent lower extremity injuries.', 'true_false', 1.00, 6, 'True. Appropriate footwear provides support and reduces impact on joints.'),
(78, 'What is the purpose of cross-training in injury prevention?', 'multiple_choice', 1.00, 7, 'Cross-training prevents overuse injuries by varying stress patterns on the body.'),
(78, 'Which type of injury develops gradually over time?', 'multiple_choice', 1.00, 8, 'Stress fractures are overuse injuries that develop gradually from repetitive stress.'),
(78, 'Dehydration can increase the risk of muscle cramps and injuries.', 'true_false', 1.00, 9, 'True. Proper hydration is essential for muscle function and injury prevention.'),
(78, 'What is the recommended approach when returning to exercise after injury?', 'multiple_choice', 1.00, 10, 'Gradual progression allows tissues to adapt safely when returning from injury.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 771
(771, 'Overtraining/doing too much too soon', TRUE, 1),
(771, 'Drinking water', FALSE, 2),
(771, 'Stretching', FALSE, 3),
(771, 'Wearing comfortable clothes', FALSE, 4),
-- Question 772
(772, 'Static stretching only', FALSE, 1),
(772, 'Dynamic stretching and light cardio', TRUE, 2),
(772, 'Heavy lifting', FALSE, 3),
(772, 'Sprinting', FALSE, 4),
-- Question 773
(773, 'True', FALSE, 1),
(773, 'False', TRUE, 2),
-- Question 774
(774, 'Run, Ice, Compress, Exercise', FALSE, 1),
(774, 'Rest, Ice, Compression, Elevation', TRUE, 2),
(774, 'Relax, Inhale, Calm, Exhale', FALSE, 3),
(774, 'Rest, Intensity, Cardio, Energy', FALSE, 4),
-- Question 775
(775, 'Proper warm-up', FALSE, 1),
(775, 'Good nutrition', FALSE, 2),
(775, 'Adequate sleep', FALSE, 3),
(775, 'Poor technique', TRUE, 4),
-- Question 776
(776, 'True', TRUE, 1),
(776, 'False', FALSE, 2),
-- Question 777
(777, 'To make workouts more boring', FALSE, 1),
(777, 'To prevent overuse injuries by varying stress', TRUE, 2),
(777, 'To save money on equipment', FALSE, 3),
(777, 'To impress friends', FALSE, 4),
-- Question 778
(778, 'Acute sprain', FALSE, 1),
(778, 'Broken bone from fall', FALSE, 2),
(778, 'Stress fracture', TRUE, 3),
(778, 'Cut or laceration', FALSE, 4),
-- Question 779
(779, 'True', TRUE, 1),
(779, 'False', FALSE, 2),
-- Question 780
(780, 'Jump back in at previous intensity', FALSE, 1),
(780, 'Gradual progression', TRUE, 2),
(780, 'Avoid exercise permanently', FALSE, 3),
(780, 'Only exercise the injured area', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(79, 'Why is sleep important for exercise recovery?', 'multiple_choice', 1.00, 1, 'Sleep is when the body releases growth hormone and repairs muscle tissue damaged during exercise.'),
(79, 'What is the primary purpose of rest days in a training program?', 'multiple_choice', 1.00, 2, 'Rest days allow muscles to repair and adapt to training stimuli, leading to strength gains.'),
(79, 'Active recovery is more effective than complete rest for reducing muscle soreness.', 'true_false', 1.00, 3, 'True. Light activity increases blood flow, which helps remove waste products and reduce soreness.'),
(79, 'Which nutrient is most important for muscle recovery immediately after exercise?', 'multiple_choice', 1.00, 4, 'Protein provides amino acids needed for muscle repair and synthesis after exercise.'),
(79, 'What is the recommended amount of sleep for athletes?', 'multiple_choice', 1.00, 5, 'Athletes typically need 7-9 hours of quality sleep for optimal recovery and performance.'),
(79, 'Foam rolling can help improve recovery by increasing blood flow to muscles.', 'true_false', 1.00, 6, 'True. Foam rolling enhances circulation and may reduce muscle stiffness.'),
(79, 'Which sign might indicate you need more recovery time?', 'multiple_choice', 1.00, 7, 'Persistent fatigue, decreased performance, and elevated resting heart rate indicate overtraining.'),
(79, 'What is the purpose of contrast water therapy?', 'multiple_choice', 1.00, 8, 'Alternating hot and cold water causes blood vessels to dilate and constrict, enhancing circulation.'),
(79, 'Mental recovery is as important as physical recovery for athletes.', 'true_false', 1.00, 9, 'True. Mental fatigue can impair physical performance and motivation.'),
(79, 'Which practice supports both physical and mental recovery?', 'multiple_choice', 1.00, 10, 'Mindfulness and meditation can reduce stress and enhance both mental and physical recovery.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 781
(781, 'It helps you dream about exercise', FALSE, 1),
(781, 'Growth hormone release and muscle repair occur during sleep', TRUE, 2),
(781, 'It makes time pass faster', FALSE, 3),
(781, 'It prevents hunger', FALSE, 4),
-- Question 782
(782, 'To lose fitness', FALSE, 1),
(782, 'To allow muscle repair and adaptation', TRUE, 2),
(782, 'To save time', FALSE, 3),
(782, 'To make workouts harder', FALSE, 4),
-- Question 783
(783, 'True', TRUE, 1),
(783, 'False', FALSE, 2),
-- Question 784
(784, 'Fat', FALSE, 1),
(784, 'Protein', TRUE, 2),
(784, 'Carbohydrates', FALSE, 3),
(784, 'Vitamins', FALSE, 4),
-- Question 785
(785, '4-5 hours', FALSE, 1),
(785, '7-9 hours', TRUE, 2),
(785, '10-12 hours', FALSE, 3),
(785, '2-3 hours', FALSE, 4),
-- Question 786
(786, 'True', TRUE, 1),
(786, 'False', FALSE, 2),
-- Question 787
(787, 'Improved performance', FALSE, 1),
(787, 'Feeling energetic', FALSE, 2),
(787, 'Persistent fatigue and decreased performance', TRUE, 3),
(787, 'Good sleep quality', FALSE, 4),
-- Question 788
(788, 'To save water', FALSE, 1),
(788, 'To enhance circulation through vasodilation and constriction', TRUE, 2),
(788, 'To clean the body', FALSE, 3),
(788, 'To practice swimming', FALSE, 4),
-- Question 789
(789, 'True', TRUE, 1),
(789, 'False', FALSE, 2),
-- Question 790
(790, 'Watching TV for hours', FALSE, 1),
(790, 'Mindfulness and meditation', TRUE, 2),
(790, 'Staying up late', FALSE, 3),
(790, 'Skipping meals', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(80, 'What is the key to maintaining fitness throughout life?', 'multiple_choice', 1.00, 1, 'Consistency and adapting to life changes are essential for lifelong fitness.'),
(80, 'How should exercise programming change as people age?', 'multiple_choice', 1.00, 2, 'As people age, focus should shift to maintaining mobility, balance, and functional strength.'),
(80, 'It''s never too late to start an exercise program and see benefits.', 'true_false', 1.00, 3, 'True. People of all ages can benefit from starting exercise, with appropriate modifications.'),
(80, 'Which type of exercise becomes increasingly important for older adults?', 'multiple_choice', 1.00, 4, 'Balance exercises help prevent falls, which are a major concern for older adults.'),
(80, 'What is "exercise snacking"?', 'multiple_choice', 1.00, 5, 'Exercise snacking involves short bursts of activity throughout the day for cumulative benefits.'),
(80, 'Social support can improve exercise adherence across all age groups.', 'true_false', 1.00, 6, 'True. Social connections and support significantly increase long-term exercise consistency.'),
(80, 'Which factor is most important for sustaining long-term fitness habits?', 'multiple_choice', 1.00, 7, 'Finding enjoyable activities makes exercise sustainable as a lifelong habit.'),
(80, 'How does regular exercise benefit cognitive function in older adults?', 'multiple_choice', 1.00, 8, 'Exercise improves blood flow to the brain and may help maintain cognitive function with aging.'),
(80, 'Strength training is only beneficial for young people.', 'true_false', 1.00, 9, 'False. Strength training provides important benefits for muscle and bone health at all ages.'),
(80, 'What is the most sustainable approach to nutrition for lifelong fitness?', 'multiple_choice', 1.00, 10, 'Balanced, flexible eating patterns are more sustainable than restrictive diets for lifelong health.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 791
(791, 'Doing the same routine forever', FALSE, 1),
(791, 'Consistency and adapting to life changes', TRUE, 2),
(791, 'Only exercising when motivated', FALSE, 3),
(791, 'Focusing only on appearance', FALSE, 4),
-- Question 792
(792, 'It shouldn''t change', FALSE, 1),
(792, 'Increase intensity dramatically', FALSE, 2),
(792, 'Focus more on mobility, balance, and functional strength', TRUE, 3),
(792, 'Stop exercising completely', FALSE, 4),
-- Question 793
(793, 'True', TRUE, 1),
(793, 'False', FALSE, 2),
-- Question 794
(794, 'Heavy weightlifting', FALSE, 1),
(794, 'High-impact jumping', FALSE, 2),
(794, 'Balance exercises', TRUE, 3),
(794, 'Extreme sports', FALSE, 4),
-- Question 795
(795, 'Eating while exercising', FALSE, 1),
(795, 'Short bursts of activity throughout the day', TRUE, 2),
(795, 'Only exercising after meals', FALSE, 3),
(795, 'Replacing meals with exercise', FALSE, 4),
-- Question 796
(796, 'True', TRUE, 1),
(796, 'False', FALSE, 2),
-- Question 797
(797, 'Finding enjoyable activities', TRUE, 1),
(797, 'Exercising alone', FALSE, 2),
(797, 'Setting unrealistic goals', FALSE, 3),
(797, 'Following extreme diets', FALSE, 4),
-- Question 798
(798, 'It has no effect on cognition', FALSE, 1),
(798, 'It improves blood flow to the brain and may maintain cognitive function', TRUE, 2),
(798, 'It makes people forgetful', FALSE, 3),
(798, 'It only benefits physical health', FALSE, 4),
-- Question 799
(799, 'True', FALSE, 1),
(799, 'False', TRUE, 2),
-- Question 800
(800, 'Extreme dieting', FALSE, 1),
(800, 'Balanced, flexible eating patterns', TRUE, 2),
(800, 'Skipping meals', FALSE, 3),
(800, 'Eating the same foods daily', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(81, 'What is the primary purpose of the principle of contrast in design?', 'multiple_choice', 1.00, 1, 'Contrast creates visual interest and helps distinguish between different elements in a design.'),
(81, 'Which design principle involves arranging elements to create a sense of equal weight?', 'multiple_choice', 1.00, 2, 'Balance creates visual stability through the distribution of elements in a design.'),
(81, 'White space should always be filled with content in good design.', 'true_false', 1.00, 3, 'False. White space (negative space) is intentional and helps improve readability and focus.'),
(81, 'What does the principle of proximity accomplish in design?', 'multiple_choice', 1.00, 4, 'Proximity groups related elements together to create organization and relationships.'),
(81, 'Which principle creates a sense of movement and guides the viewer''s eye through a design?', 'multiple_choice', 1.00, 5, 'Rhythm creates visual patterns that guide the viewer through the design in a deliberate way.'),
(81, 'Alignment helps create a clean, organized look by connecting elements visually.', 'true_false', 1.00, 6, 'True. Proper alignment creates visual connections and makes designs appear more professional.'),
(81, 'What is the principle of hierarchy in design?', 'multiple_choice', 1.00, 7, 'Hierarchy establishes importance and guides the viewer through content in order of significance.'),
(81, 'Which principle involves repeating visual elements to create consistency?', 'multiple_choice', 1.00, 8, 'Repetition strengthens designs by creating consistency and visual unity through repeated elements.'),
(81, 'The Gestalt principle of closure suggests that people tend to perceive complete figures even when parts are missing.', 'true_false', 1.00, 9, 'True. Closure is a Gestalt principle where viewers mentally complete incomplete shapes or forms.'),
(81, 'What is the purpose of the "rule of thirds" in composition?', 'multiple_choice', 1.00, 10, 'The rule of thirds creates balanced and interesting compositions by dividing the space into thirds.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 801
(801, 'To make everything the same', FALSE, 1),
(801, 'To create visual interest and distinguish elements', TRUE, 2),
(801, 'To reduce color usage', FALSE, 3),
(801, 'To make text smaller', FALSE, 4),
-- Question 802
(802, 'Contrast', FALSE, 1),
(802, 'Balance', TRUE, 2),
(802, 'Repetition', FALSE, 3),
(802, 'Proximity', FALSE, 4),
-- Question 803
(803, 'True', FALSE, 1),
(803, 'False', TRUE, 2),
-- Question 804
(804, 'Makes elements farther apart', FALSE, 1),
(804, 'Groups related elements together', TRUE, 2),
(804, 'Creates random arrangements', FALSE, 3),
(804, 'Eliminates all space between elements', FALSE, 4),
-- Question 805
(805, 'Balance', FALSE, 1),
(805, 'Rhythm', TRUE, 2),
(805, 'Alignment', FALSE, 3),
(805, 'Proximity', FALSE, 4),
-- Question 806
(806, 'True', TRUE, 1),
(806, 'False', FALSE, 2),
-- Question 807
(807, 'Making everything the same size', FALSE, 1),
(807, 'Establishing importance and guiding viewing order', TRUE, 2),
(807, 'Using only one font', FALSE, 3),
(807, 'Placing elements randomly', FALSE, 4),
-- Question 808
(808, 'Contrast', FALSE, 1),
(808, 'Repetition', TRUE, 2),
(808, 'Balance', FALSE, 3),
(808, 'Proximity', FALSE, 4),
-- Question 809
(809, 'True', TRUE, 1),
(809, 'False', FALSE, 2),
-- Question 810
(810, 'To divide designs into equal parts', FALSE, 1),
(810, 'To create balanced and interesting compositions', TRUE, 2),
(810, 'To use only three colors', FALSE, 3),
(810, 'To limit designs to three elements', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(82, 'What are the three primary colors in traditional color theory?', 'multiple_choice', 1.00, 1, 'Red, yellow, and blue are the primary colors that can''t be created by mixing other colors.'),
(82, 'Which color scheme uses colors that are opposite each other on the color wheel?', 'multiple_choice', 1.00, 2, 'Complementary colors create high contrast and visual tension when used together.'),
(82, 'Warm colors typically include blues, greens, and purples.', 'true_false', 1.00, 3, 'False. Warm colors are reds, oranges, and yellows; cool colors are blues, greens, and purples.'),
(82, 'What is hue in color terminology?', 'multiple_choice', 1.00, 4, 'Hue refers to the pure color itself, without tint, shade, or tone modifications.'),
(82, 'Which color model is used for digital screens and devices?', 'multiple_choice', 1.00, 5, 'RGB is an additive color model used for screens, where red, green, and blue light combine.'),
(82, 'Monochromatic color schemes use variations of a single hue.', 'true_false', 1.00, 6, 'True. Monochromatic schemes use different tints, tones, and shades of one color.'),
(82, 'What does saturation refer to in color theory?', 'multiple_choice', 1.00, 7, 'Saturation describes the intensity or purity of a color, from dull to fully vivid.'),
(82, 'Which color combination creates an analogous color scheme?', 'multiple_choice', 1.00, 8, 'Analogous colors are next to each other on the color wheel and create harmonious combinations.'),
(82, 'CMYK color model is used for printing and is a subtractive color system.', 'true_false', 1.00, 9, 'True. CMYK (cyan, magenta, yellow, black) is subtractive and used for printed materials.'),
(82, 'What is the psychological effect typically associated with the color blue?', 'multiple_choice', 1.00, 10, 'Blue is often associated with calmness, trust, and professionalism in color psychology.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 811
(811, 'Red, yellow, blue', TRUE, 1),
(811, 'Red, green, blue', FALSE, 2),
(811, 'Cyan, magenta, yellow', FALSE, 3),
(811, 'Orange, green, purple', FALSE, 4),
-- Question 812
(812, 'Analogous', FALSE, 1),
(812, 'Complementary', TRUE, 2),
(812, 'Monochromatic', FALSE, 3),
(812, 'Triadic', FALSE, 4),
-- Question 813
(813, 'True', FALSE, 1),
(813, 'False', TRUE, 2),
-- Question 814
(814, 'The brightness of a color', FALSE, 1),
(814, 'The pure color itself', TRUE, 2),
(814, 'How dark a color is', FALSE, 3),
(814, 'The transparency of a color', FALSE, 4),
-- Question 815
(815, 'CMYK', FALSE, 1),
(815, 'RGB', TRUE, 2),
(815, 'RYB', FALSE, 3),
(815, 'HSV', FALSE, 4),
-- Question 816
(816, 'True', TRUE, 1),
(816, 'False', FALSE, 2),
-- Question 817
(817, 'The darkness of a color', FALSE, 1),
(817, 'The intensity or purity of a color', TRUE, 2),
(817, 'The warmth of a color', FALSE, 3),
(817, 'The transparency of a color', FALSE, 4),
-- Question 818
(818, 'Red and green', FALSE, 1),
(818, 'Blue, green, and purple', TRUE, 2),
(818, 'Red, yellow, and blue', FALSE, 3),
(818, 'Orange and blue', FALSE, 4),
-- Question 819
(819, 'True', TRUE, 1),
(819, 'False', FALSE, 2),
-- Question 820
(820, 'Energy and excitement', FALSE, 1),
(820, 'Calmness and trust', TRUE, 2),
(820, 'Danger and warning', FALSE, 3),
(820, 'Nature and growth', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(83, 'What is the difference between a typeface and a font?', 'multiple_choice', 1.00, 1, 'A typeface is the design family, while a font is the specific implementation with size and style.'),
(83, 'Which typography term refers to the horizontal space between specific character pairs?', 'multiple_choice', 1.00, 2, 'Kerning adjusts space between specific character pairs to improve visual appearance.'),
(83, 'Serif fonts are generally considered more readable for long printed text than sans-serif fonts.', 'true_false', 1.00, 3, 'True. Serifs help guide the eye along lines of text, making them often preferred for long reading.'),
(83, 'What is x-height in typography?', 'multiple_choice', 1.00, 4, 'X-height is the height of lowercase letters excluding ascenders and descenders.'),
(83, 'Which typographic element refers to the vertical space between lines of text?', 'multiple_choice', 1.00, 5, 'Leading (line spacing) affects readability by controlling the vertical space between text lines.'),
(83, 'Display fonts are designed for use at large sizes in headings rather than body text.', 'true_false', 1.00, 6, 'True. Display fonts have distinctive designs that work best at larger sizes for attention.'),
(83, 'What is the purpose of tracking in typography?', 'multiple_choice', 1.00, 7, 'Tracking adjusts overall letter spacing uniformly across a block of text.'),
(83, 'Which font classification typically has small strokes attached to the ends of larger strokes?', 'multiple_choice', 1.00, 8, 'Serif fonts have small strokes (serifs) at the ends of character strokes.'),
(83, 'A typographic hierarchy helps establish importance and organization in text content.', 'true_false', 1.00, 9, 'True. Hierarchy uses size, weight, and spacing to show content relationships and importance.'),
(83, 'What is the recommended maximum number of typefaces for most design projects?', 'multiple_choice', 1.00, 10, 'Using 2-3 typefaces typically provides enough variety while maintaining visual harmony.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 821
(821, 'They are the same thing', FALSE, 1),
(821, 'Typeface is the design family, font is the specific implementation', TRUE, 2),
(821, 'Font is the design family, typeface is the specific implementation', FALSE, 3),
(821, 'Typeface refers to size, font refers to style', FALSE, 4),
-- Question 822
(822, 'Tracking', FALSE, 1),
(822, 'Kerning', TRUE, 2),
(822, 'Leading', FALSE, 3),
(822, 'Spacing', FALSE, 4),
-- Question 823
(823, 'True', TRUE, 1),
(823, 'False', FALSE, 2),
-- Question 824
(824, 'The total height of capital letters', FALSE, 1),
(824, 'The height of lowercase letters excluding ascenders and descenders', TRUE, 2),
(824, 'The space between lines of text', FALSE, 3),
(824, 'The measurement of serif size', FALSE, 4),
-- Question 825
(825, 'Kerning', FALSE, 1),
(825, 'Tracking', FALSE, 2),
(825, 'Leading', TRUE, 3),
(825, 'Spacing', FALSE, 4),
-- Question 826
(826, 'True', TRUE, 1),
(826, 'False', FALSE, 2),
-- Question 827
(827, 'Adjusting space between specific character pairs', FALSE, 1),
(827, 'Adjusting overall letter spacing uniformly', TRUE, 2),
(827, 'Changing font sizes', FALSE, 3),
(827, 'Modifying line height', FALSE, 4),
-- Question 828
(828, 'Sans-serif', FALSE, 1),
(828, 'Serif', TRUE, 2),
(828, 'Script', FALSE, 3),
(828, 'Monospace', FALSE, 4),
-- Question 829
(829, 'True', TRUE, 1),
(829, 'False', FALSE, 2),
-- Question 830
(830, '1-2', FALSE, 1),
(830, '2-3', TRUE, 2),
(830, '5-6', FALSE, 3),
(830, 'As many as possible', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(84, 'What is the primary goal of visual composition in design?', 'multiple_choice', 1.00, 1, 'Composition arranges elements to create a clear visual path and hierarchy for the viewer.'),
(84, 'Which composition technique involves dividing the design area into a 3x3 grid?', 'multiple_choice', 1.00, 2, 'The rule of thirds uses a 3x3 grid to position important elements at intersection points.'),
(84, 'The golden ratio is approximately 1:1.618 and appears frequently in nature and art.', 'true_false', 1.00, 3, 'True. The golden ratio is a mathematical proportion found in nature and considered aesthetically pleasing.'),
(84, 'What is the purpose of creating a focal point in composition?', 'multiple_choice', 1.00, 4, 'A focal point draws immediate attention and establishes where the viewer should look first.'),
(84, 'Which composition principle involves arranging elements to create a sense of movement?', 'multiple_choice', 1.00, 5, 'Flow guides the viewer''s eye through the design in a specific sequence or pattern.'),
(84, 'Symmetrical balance always creates boring and predictable compositions.', 'true_false', 1.00, 6, 'False. Symmetrical balance can create elegant, formal, and stable compositions when used effectively.'),
(84, 'What does negative space refer to in composition?', 'multiple_choice', 1.00, 7, 'Negative space is the empty area around and between design elements, which is intentionally designed.'),
(84, 'Which composition technique uses odd numbers of elements for visual interest?', 'multiple_choice', 1.00, 8, 'The rule of odds suggests that odd numbers of elements are more visually appealing and memorable.'),
(84, 'Visual weight refers to how heavy a design element actually weighs in physical terms.', 'true_false', 1.00, 9, 'False. Visual weight is perceptual - how much an element attracts the eye based on size, color, etc.'),
(84, 'What is the purpose of establishing a clear visual hierarchy in composition?', 'multiple_choice', 1.00, 10, 'Visual hierarchy organizes elements by importance to guide the viewer through content logically.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 831
(831, 'To use as many elements as possible', FALSE, 1),
(831, 'To create a clear visual path and hierarchy', TRUE, 2),
(831, 'To make designs look complicated', FALSE, 3),
(831, 'To use only symmetrical arrangements', FALSE, 4),
-- Question 832
(832, 'Golden ratio', FALSE, 1),
(832, 'Rule of thirds', TRUE, 2),
(832, 'Fibonacci sequence', FALSE, 3),
(832, 'Symmetrical balance', FALSE, 4),
-- Question 833
(833, 'True', TRUE, 1),
(833, 'False', FALSE, 2),
-- Question 834
(834, 'To hide important information', FALSE, 1),
(834, 'To draw immediate attention and establish viewing start point', TRUE, 2),
(834, 'To make designs look busy', FALSE, 3),
(834, 'To reduce the number of elements', FALSE, 4),
-- Question 835
(835, 'Balance', FALSE, 1),
(835, 'Flow', TRUE, 2),
(835, 'Contrast', FALSE, 3),
(835, 'Proximity', FALSE, 4),
-- Question 836
(836, 'True', FALSE, 1),
(836, 'False', TRUE, 2),
-- Question 837
(837, 'Dark colored elements', FALSE, 1),
(837, 'The empty area around and between elements', TRUE, 2),
(837, 'Text that is hard to read', FALSE, 3),
(837, 'Background images', FALSE, 4),
-- Question 838
(838, 'Rule of thirds', FALSE, 1),
(838, 'Rule of odds', TRUE, 2),
(838, 'Golden ratio', FALSE, 3),
(838, 'Symmetrical balance', FALSE, 4),
-- Question 839
(839, 'True', FALSE, 1),
(839, 'False', TRUE, 2),
-- Question 840
(840, 'To make everything the same size', FALSE, 1),
(840, 'To organize elements by importance and guide viewing', TRUE, 2),
(840, 'To use only one color', FALSE, 3),
(840, 'To eliminate all empty space', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(85, 'Which software is primarily used for vector-based graphic design?', 'multiple_choice', 1.00, 1, 'Adobe Illustrator is the industry standard for vector graphics, which scale without quality loss.'),
(85, 'What is the primary advantage of using layers in design software?', 'multiple_choice', 1.00, 2, 'Layers allow non-destructive editing by keeping elements separate and independently editable.'),
(85, 'RGB color mode is preferred for print design, while CMYK is for digital screens.', 'true_false', 1.00, 3, 'False. RGB is for screens (additive color), CMYK is for print (subtractive color).'),
(85, 'What does the term "non-destructive editing" refer to?', 'multiple_choice', 1.00, 4, 'Non-destructive editing preserves original data, allowing changes to be reversed or modified later.'),
(85, 'Which file format supports transparency and is commonly used for web graphics?', 'multiple_choice', 1.00, 5, 'PNG format supports transparency and lossless compression, ideal for web graphics.'),
(85, 'Keyboard shortcuts can significantly improve workflow efficiency in design software.', 'true_false', 1.00, 6, 'True. Learning shortcuts reduces mouse dependence and speeds up common tasks dramatically.'),
(85, 'What is the purpose of artboards in design software like Adobe Illustrator or Figma?', 'multiple_choice', 1.00, 7, 'Artboards allow multiple designs or variations to be created within the same document.'),
(85, 'Which tool is used to create precise selections based on color and tone similarities?', 'multiple_choice', 1.00, 8, 'The Magic Wand tool selects areas based on color similarity with adjustable tolerance.'),
(85, 'Vector graphics are resolution-independent and can be scaled without quality loss.', 'true_false', 1.00, 9, 'True. Vector graphics use mathematical equations, not pixels, so they scale infinitely.'),
(85, 'What is the primary use of Adobe InDesign?', 'multiple_choice', 1.00, 10, 'InDesign is specialized for multi-page layout design like books, magazines, and brochures.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 841
(841, 'Adobe Photoshop', FALSE, 1),
(841, 'Adobe Illustrator', TRUE, 2),
(841, 'Adobe InDesign', FALSE, 3),
(841, 'Figma', FALSE, 4),
-- Question 842
(842, 'To make files larger', FALSE, 1),
(842, 'To allow non-destructive editing of separate elements', TRUE, 2),
(842, 'To reduce image quality', FALSE, 3),
(842, 'To automatically apply filters', FALSE, 4),
-- Question 843
(843, 'True', FALSE, 1),
(843, 'False', TRUE, 2),
-- Question 844
(844, 'Editing that cannot be undone', FALSE, 1),
(844, 'Editing that preserves original data for future modifications', TRUE, 2),
(844, 'Editing that destroys the original image', FALSE, 3),
(844, 'Automatic editing by software', FALSE, 4),
-- Question 845
(845, 'JPG', FALSE, 1),
(845, 'PNG', TRUE, 2),
(845, 'BMP', FALSE, 3),
(845, 'TIFF', FALSE, 4),
-- Question 846
(846, 'True', TRUE, 1),
(846, 'False', FALSE, 2),
-- Question 847
(847, 'To draw freehand sketches', FALSE, 1),
(847, 'To create multiple designs within the same document', TRUE, 2),
(847, 'To mix colors digitally', FALSE, 3),
(847, 'To organize layers automatically', FALSE, 4),
-- Question 848
(848, 'Brush tool', FALSE, 1),
(848, 'Magic Wand tool', TRUE, 2),
(848, 'Eraser tool', FALSE, 3),
(848, 'Type tool', FALSE, 4),
-- Question 849
(849, 'True', TRUE, 1),
(849, 'False', FALSE, 2),
-- Question 850
(850, 'Photo editing', FALSE, 1),
(850, 'Vector illustration', FALSE, 2),
(850, 'Multi-page layout design', TRUE, 3),
(850, 'Video editing', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(86, 'What is the primary purpose of a logo?', 'multiple_choice', 1.00, 1, 'A logo serves as the visual identifier and symbol that represents a brand or organization.'),
(86, 'Which logo type consists of text only, typically using customized typography?', 'multiple_choice', 1.00, 2, 'Wordmarks are text-based logos that use stylized typography to represent the brand name.'),
(86, 'A good logo should work effectively in both color and black and white.', 'true_false', 1.00, 3, 'True. Logo versatility requires it to be recognizable in any color context, including single-color.'),
(86, 'What does "simplicity" refer to in logo design principles?', 'multiple_choice', 1.00, 4, 'Simple logos are memorable, scalable, and recognizable at any size or application.'),
(86, 'Which file format is typically used for logos to ensure scalability?', 'multiple_choice', 1.00, 5, 'AI (Adobe Illustrator) files are vector-based, allowing infinite scalability without quality loss.'),
(86, 'Logos should always include the company''s full name and slogan.', 'true_false', 1.00, 6, 'False. Effective logos are often simplified and may not include full names or additional text.'),
(86, 'What is a brand mark or pictorial mark in logo design?', 'multiple_choice', 1.00, 7, 'A brand mark uses a symbolic image or icon to represent the brand without text.'),
(86, 'Which consideration is most important for logo design?', 'multiple_choice', 1.00, 8, 'Understanding the target audience ensures the logo resonates with the intended market.'),
(86, 'A combination mark integrates both text and symbolic elements in one logo.', 'true_false', 1.00, 9, 'True. Combination marks include both a symbol and the company name together.'),
(86, 'What is the purpose of creating a logo style guide?', 'multiple_choice', 1.00, 10, 'Style guides ensure consistent logo usage across all applications and maintain brand integrity.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 851
(851, 'To look pretty on business cards', FALSE, 1),
(851, 'To serve as a visual identifier for a brand', TRUE, 2),
(851, 'To display all company information', FALSE, 3),
(851, 'To replace marketing materials', FALSE, 4),
-- Question 852
(852, 'Brand mark', FALSE, 1),
(852, 'Wordmark', TRUE, 2),
(852, 'Emblem', FALSE, 3),
(852, 'Abstract mark', FALSE, 4),
-- Question 853
(853, 'True', TRUE, 1),
(853, 'False', FALSE, 2),
-- Question 854
(854, 'Using as many elements as possible', FALSE, 1),
(854, 'Creating memorable, scalable, and recognizable designs', TRUE, 2),
(854, 'Making designs complex and detailed', FALSE, 3),
(854, 'Using only black and white', FALSE, 4),
-- Question 855
(855, 'JPG', FALSE, 1),
(855, 'PNG', FALSE, 2),
(855, 'AI', TRUE, 3),
(855, 'BMP', FALSE, 4),
-- Question 856
(856, 'True', FALSE, 1),
(856, 'False', TRUE, 2),
-- Question 857
(857, 'A logo made of text only', FALSE, 1),
(857, 'A symbolic image representing the brand', TRUE, 2),
(857, 'A logo inside a shape', FALSE, 3),
(857, 'A handwritten signature', FALSE, 4),
-- Question 858
(858, 'Using trendy colors', FALSE, 1),
(858, 'Understanding the target audience', TRUE, 2),
(858, 'Making it look like competitor logos', FALSE, 3),
(858, 'Using as many colors as possible', FALSE, 4),
-- Question 859
(859, 'True', TRUE, 1),
(859, 'False', FALSE, 2),
-- Question 860
(860, 'To make the logo more expensive', FALSE, 1),
(860, 'To ensure consistent usage across applications', TRUE, 2),
(860, 'To limit where the logo can be used', FALSE, 3),
(860, 'To make the design process longer', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(87, 'What is the optimal aspect ratio for Instagram feed posts?', 'multiple_choice', 1.00, 1, 'Instagram feed posts work best at 1:1 (square) or 4:5 aspect ratios for optimal mobile viewing.'),
(87, 'Which design consideration is most important for social media graphics?', 'multiple_choice', 1.00, 2, 'Mobile optimization is crucial since most social media browsing occurs on mobile devices.'),
(87, 'Social media graphics should always include as much text as possible to convey the message.', 'true_false', 1.00, 3, 'False. Social media graphics should be visually focused with minimal, impactful text.'),
(87, 'What is the purpose of creating templates for social media graphics?', 'multiple_choice', 1.00, 4, 'Templates maintain brand consistency and streamline the creation process for regular posting.'),
(87, 'Which color strategy works best for social media graphics?', 'multiple_choice', 1.00, 5, 'High contrast improves readability and visual impact, especially on small mobile screens.'),
(87, 'Different social media platforms have different optimal image dimensions and requirements.', 'true_false', 1.00, 6, 'True. Each platform has specific dimension recommendations for best display results.'),
(87, 'What is the recommended approach for text in social media graphics?', 'multiple_choice', 1.00, 7, 'Large, legible fonts ensure readability on small screens without requiring zooming.'),
(87, 'Which file format is typically best for social media graphics with simple designs?', 'multiple_choice', 1.00, 8, 'PNG supports transparency and lossless compression, ideal for graphics with text and logos.'),
(87, 'Social media algorithms may reduce reach for posts with text-overlay on images.', 'true_false', 1.00, 9, 'True. Some platforms historically discouraged text-heavy images in organic reach.'),
(87, 'What is the benefit of using consistent branding across social media graphics?', 'multiple_choice', 1.00, 10, 'Consistent branding builds recognition and trust, making content instantly identifiable.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 861
(861, '16:9', FALSE, 1),
(861, '1:1 or 4:5', TRUE, 2),
(861, '2:3', FALSE, 3),
(861, '9:16', FALSE, 4),
-- Question 862
(862, 'Desktop viewing', FALSE, 1),
(862, 'Mobile optimization', TRUE, 2),
(862, 'Print quality', FALSE, 3),
(862, 'Animation complexity', FALSE, 4),
-- Question 863
(863, 'True', FALSE, 1),
(863, 'False', TRUE, 2),
-- Question 864
(864, 'To make designs more complicated', FALSE, 1),
(864, 'To maintain consistency and streamline creation', TRUE, 2),
(864, 'To limit creativity', FALSE, 3),
(864, 'To use the same image everywhere', FALSE, 4),
-- Question 865
(865, 'Low contrast for subtlety', FALSE, 1),
(865, 'High contrast for readability and impact', TRUE, 2),
(865, 'Monochromatic schemes only', FALSE, 3),
(865, 'As many colors as possible', FALSE, 4),
-- Question 866
(866, 'True', TRUE, 1),
(866, 'False', FALSE, 2),
-- Question 867
(867, 'Small, elegant fonts', FALSE, 1),
(867, 'Large, legible fonts', TRUE, 2),
(867, 'Handwritten fonts only', FALSE, 3),
(867, 'Decorative fonts exclusively', FALSE, 4),
-- Question 868
(868, 'JPG', FALSE, 1),
(868, 'PNG', TRUE, 2),
(868, 'BMP', FALSE, 3),
(868, 'TIFF', FALSE, 4),
-- Question 869
(869, 'True', TRUE, 1),
(869, 'False', FALSE, 2),
-- Question 870
(870, 'Makes designs boring', FALSE, 1),
(870, 'Builds recognition and trust', TRUE, 2),
(870, 'Increases file size', FALSE, 3),
(870, 'Limits audience reach', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(88, 'What is the primary purpose of a design portfolio?', 'multiple_choice', 1.00, 1, 'A portfolio demonstrates skills, style, and problem-solving abilities to potential clients or employers.'),
(88, 'Which approach is most effective for selecting work for a portfolio?', 'multiple_choice', 1.00, 2, 'Quality over quantity - showcase your best work that demonstrates range and specific skills.'),
(88, 'A design portfolio should include every project you''ve ever completed.', 'true_false', 1.00, 3, 'False. Curate selectively to show only your strongest, most relevant work.'),
(88, 'What information should accompany each portfolio project?', 'multiple_choice', 1.00, 4, 'Project descriptions should explain the problem, your process, solution, and your specific role.'),
(88, 'Which portfolio format is most commonly expected by employers today?', 'multiple_choice', 1.00, 5, 'Online portfolios are standard as they''re easily accessible and can be updated regularly.'),
(88, 'Including case studies in your portfolio can demonstrate your problem-solving process.', 'true_false', 1.00, 6, 'True. Case studies show how you approach and solve design problems from start to finish.'),
(88, 'What is the benefit of creating a personal brand for your portfolio?', 'multiple_choice', 1.00, 7, 'A strong personal brand makes you memorable and helps you stand out in a competitive field.'),
(88, 'Which practice improves portfolio presentation?', 'multiple_choice', 1.00, 8, 'Consistent, professional presentation with clear navigation enhances user experience.'),
(88, 'Your portfolio should be updated regularly with new work and improvements.', 'true_false', 1.00, 9, 'True. Regular updates keep your portfolio current and reflect your growing skills.'),
(88, 'What is the purpose of including contact information and social media links in your portfolio?', 'multiple_choice', 1.00, 10, 'Clear contact information makes it easy for potential clients or employers to reach you.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 871
(871, 'To store all your design files', FALSE, 1),
(871, 'To demonstrate skills and problem-solving abilities', TRUE, 2),
(871, 'To impress friends and family', FALSE, 3),
(871, 'To replace a resume', FALSE, 4),
-- Question 872
(872, 'Include everything you''ve ever done', FALSE, 1),
(872, 'Show quality work that demonstrates range and skills', TRUE, 2),
(872, 'Only include paid work', FALSE, 3),
(872, 'Focus only on one specific style', FALSE, 4),
-- Question 873
(873, 'True', FALSE, 1),
(873, 'False', TRUE, 2),
-- Question 874
(874, 'Only the final images', FALSE, 1),
(874, 'The problem, process, solution, and your role', TRUE, 2),
(874, 'Client confidential information', FALSE, 3),
(874, 'Your hourly rates', FALSE, 4),
-- Question 875
(875, 'Printed book only', FALSE, 1),
(875, 'PDF documents', FALSE, 2),
(875, 'Online portfolio website', TRUE, 3),
(875, 'Social media posts only', FALSE, 4),
-- Question 876
(876, 'True', TRUE, 1),
(876, 'False', FALSE, 2),
-- Question 877
(877, 'Makes you look expensive', FALSE, 1),
(877, 'Makes you memorable and helps you stand out', TRUE, 2),
(877, 'Limits the types of jobs you can get', FALSE, 3),
(877, 'Forces you to work for free', FALSE, 4),
-- Question 878
(878, 'Inconsistent styling throughout', FALSE, 1),
(878, 'Consistent, professional presentation with clear navigation', TRUE, 2),
(878, 'Complex navigation to show technical skills', FALSE, 3),
(878, 'Autoplaying music and videos', FALSE, 4),
-- Question 879
(879, 'True', TRUE, 1),
(879, 'False', FALSE, 2),
-- Question 880
(880, 'To increase website traffic', FALSE, 1),
(880, 'To make it easy for potential clients to reach you', TRUE, 2),
(880, 'To show how popular you are', FALSE, 3),
(880, 'To meet portfolio requirements', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(89, 'What are the three fundamental camera settings that control exposure?', 'multiple_choice', 1.00, 1, 'Aperture, shutter speed, and ISO work together to control how much light reaches the camera sensor.'),
(89, 'Which camera mode gives the photographer full control over all settings?', 'multiple_choice', 1.00, 2, 'Manual mode (M) allows complete control over aperture, shutter speed, and ISO settings.'),
(89, 'A higher megapixel count always means better image quality.', 'true_false', 1.00, 3, 'False. Megapixels affect image size, but sensor quality, lens quality, and technique determine overall image quality.'),
(89, 'What is the purpose of the camera''s ISO setting?', 'multiple_choice', 1.00, 4, 'ISO controls the camera sensor''s sensitivity to light, with higher ISO allowing shooting in darker conditions.'),
(89, 'Which type of camera typically offers the most control and highest image quality?', 'multiple_choice', 1.00, 5, 'DSLR and mirrorless cameras offer interchangeable lenses and full manual control for professional results.'),
(89, 'The viewfinder and LCD screen always show exactly the same image preview.', 'true_false', 1.00, 6, 'False. Optical viewfinders show the actual scene, while LCD screens show the digital sensor''s interpretation.'),
(89, 'What does "focal length" refer to in photography?', 'multiple_choice', 1.00, 7, 'Focal length determines the angle of view and magnification, measured in millimeters (mm).'),
(89, 'Which file format preserves the most image data for editing?', 'multiple_choice', 1.00, 8, 'RAW format contains uncompressed, unprocessed data from the sensor, allowing maximum editing flexibility.'),
(89, 'Auto focus is always more accurate than manual focus.', 'true_false', 1.00, 9, 'False. Manual focus can be more precise in low light, macro photography, or with challenging subjects.'),
(89, 'What is the primary advantage of using a tripod?', 'multiple_choice', 1.00, 10, 'Tripods eliminate camera shake, allowing sharper images, especially in low light or long exposures.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 881
(881, 'Focus, zoom, flash', FALSE, 1),
(881, 'Aperture, shutter speed, ISO', TRUE, 2),
(881, 'White balance, resolution, format', FALSE, 3),
(881, 'Color, contrast, saturation', FALSE, 4),
-- Question 882
(882, 'Auto mode', FALSE, 1),
(882, 'Program mode', FALSE, 2),
(882, 'Manual mode', TRUE, 3),
(882, 'Scene mode', FALSE, 4),
-- Question 883
(883, 'True', FALSE, 1),
(883, 'False', TRUE, 2),
-- Question 884
(884, 'Controls image resolution', FALSE, 1),
(884, 'Controls sensor sensitivity to light', TRUE, 2),
(884, 'Adjusts color balance', FALSE, 3),
(884, 'Changes lens focal length', FALSE, 4),
-- Question 885
(885, 'Smartphone camera', FALSE, 1),
(885, 'Point-and-shoot camera', FALSE, 2),
(885, 'DSLR or mirrorless camera', TRUE, 3),
(885, 'Disposable camera', FALSE, 4),
-- Question 886
(886, 'True', FALSE, 1),
(886, 'False', TRUE, 2),
-- Question 887
(887, 'The physical length of the lens', FALSE, 1),
(887, 'The distance between lens and sensor', FALSE, 2),
(887, 'The angle of view and magnification', TRUE, 3),
(887, 'The minimum focusing distance', FALSE, 4),
-- Question 888
(888, 'JPEG', FALSE, 1),
(888, 'RAW', TRUE, 2),
(888, 'PNG', FALSE, 3),
(888, 'TIFF', FALSE, 4),
-- Question 889
(889, 'True', FALSE, 1),
(889, 'False', TRUE, 2),
-- Question 890
(890, 'Makes the camera heavier', FALSE, 1),
(890, 'Eliminates camera shake for sharper images', TRUE, 2),
(890, 'Automatically composes shots', FALSE, 3),
(890, 'Changes lenses automatically', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(90, 'What does aperture control in the exposure triangle?', 'multiple_choice', 1.00, 1, 'Aperture controls the size of the lens opening, affecting both exposure and depth of field.'),
(90, 'Which shutter speed would be most appropriate for freezing fast action?', 'multiple_choice', 1.00, 2, 'Fast shutter speeds like 1/1000s freeze motion, while slower speeds create motion blur.'),
(90, 'A wider aperture (lower f-number) results in a shallower depth of field.', 'true_false', 1.00, 3, 'True. Lower f-numbers (e.g., f/2.8) create smaller depth of field, blurring backgrounds.'),
(90, 'What is the primary effect of increasing ISO?', 'multiple_choice', 1.00, 4, 'Higher ISO increases sensor sensitivity but also increases digital noise or grain in images.'),
(90, 'Which combination would create the brightest exposure in the same lighting?', 'multiple_choice', 1.00, 5, 'Wide aperture (f/2.8), slow shutter (1/60s), and high ISO (1600) all contribute to brighter exposure.'),
(90, 'Shutter speed affects both exposure and motion blur in photographs.', 'true_false', 1.00, 6, 'True. Shutter speed controls how long light enters and whether motion is frozen or blurred.'),
(90, 'What is "reciprocity" in exposure terms?', 'multiple_choice', 1.00, 7, 'Reciprocity means equivalent exposures can be achieved with different aperture/shutter/ISO combinations.'),
(90, 'Which setting has the most direct impact on depth of field?', 'multiple_choice', 1.00, 8, 'Aperture is the primary controller of depth of field - wider apertures create shallower depth.'),
(90, 'Using a tripod allows for slower shutter speeds without camera shake.', 'true_false', 1.00, 9, 'True. Tripods stabilize cameras, enabling sharp images with slow shutter speeds in low light.'),
(90, 'What is the "Sunny 16" rule?', 'multiple_choice', 1.00, 10, 'On sunny days, use f/16 with shutter speed closest to ISO (e.g., ISO 100 = 1/125s) for proper exposure.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 891
(891, 'Color temperature', FALSE, 1),
(891, 'Lens opening size and depth of field', TRUE, 2),
(891, 'Sensor sensitivity', FALSE, 3),
(891, 'Focus distance', FALSE, 4),
-- Question 892
(892, '1/30 second', FALSE, 1),
(892, '1/1000 second', TRUE, 2),
(892, '1 second', FALSE, 3),
(892, '30 seconds', FALSE, 4),
-- Question 893
(893, 'True', TRUE, 1),
(893, 'False', FALSE, 2),
-- Question 894
(894, 'Improves image quality', FALSE, 1),
(894, 'Increases sensor sensitivity and noise', TRUE, 2),
(894, 'Makes colors more vibrant', FALSE, 3),
(894, 'Widens the lens angle', FALSE, 4),
-- Question 895
(895, 'f/16, 1/250s, ISO 100', FALSE, 1),
(895, 'f/2.8, 1/60s, ISO 1600', TRUE, 2),
(895, 'f/8, 1/125s, ISO 200', FALSE, 3),
(895, 'f/11, 1/500s, ISO 400', FALSE, 4),
-- Question 896
(896, 'True', TRUE, 1),
(896, 'False', FALSE, 2),
-- Question 897
(897, 'The relationship between lens and subject', FALSE, 1),
(897, 'Equivalent exposures with different settings', TRUE, 2),
(897, 'Camera shake reduction', FALSE, 3),
(897, 'Automatic exposure compensation', FALSE, 4),
-- Question 898
(898, 'Shutter speed', FALSE, 1),
(898, 'ISO', FALSE, 2),
(898, 'Aperture', TRUE, 3),
(898, 'Focal length', FALSE, 4),
-- Question 899
(899, 'True', TRUE, 1),
(899, 'False', FALSE, 2),
-- Question 900
(900, 'Always use ISO 16 in sunlight', FALSE, 1),
(900, 'f/16 with shutter speed closest to ISO for sunny days', TRUE, 2),
(900, 'Shoot only at 16mm in sunlight', FALSE, 3),
(900, 'Use 16-point autofocus outdoors', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(91, 'What is the Rule of Thirds in photography composition?', 'multiple_choice', 1.00, 1, 'The Rule of Thirds divides the frame into thirds and suggests placing key elements along these lines.'),
(91, 'Which composition technique uses natural lines to guide the viewer''s eye?', 'multiple_choice', 1.00, 2, 'Leading lines use roads, fences, or other linear elements to direct attention through the image.'),
(91, 'Breaking composition rules always results in poor photographs.', 'true_false', 1.00, 3, 'False. Understanding rules allows intentional breaking for creative effect when appropriate.'),
(91, 'What does "framing" refer to in photographic composition?', 'multiple_choice', 1.00, 4, 'Framing uses foreground elements like arches or windows to surround and emphasize the main subject.'),
(91, 'Which composition principle involves creating a sense of visual balance?', 'multiple_choice', 1.00, 5, 'Symmetry creates formal balance, while asymmetry can create dynamic, interesting compositions.'),
(91, 'Negative space refers to crowded, busy areas of a photograph.', 'true_false', 1.00, 6, 'False. Negative space is the empty area around the subject that helps emphasize it.'),
(91, 'What is the purpose of using patterns in composition?', 'multiple_choice', 1.00, 7, 'Patterns create visual rhythm and interest, and breaking patterns can create strong focal points.'),
(91, 'Which technique helps create depth in a two-dimensional photograph?', 'multiple_choice', 1.00, 8, 'Foreground, middle ground, and background elements create a sense of depth and dimension.'),
(91, 'Filling the frame means getting physically closer to your subject.', 'true_false', 1.00, 9, 'True. Filling the frame eliminates distractions and emphasizes details and emotions.'),
(91, 'What does "viewpoint" refer to in composition?', 'multiple_choice', 1.00, 10, 'Viewpoint is the physical position from which you photograph, affecting perspective and impact.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 901
(901, 'Using three lenses', FALSE, 1),
(901, 'Dividing frame into thirds for element placement', TRUE, 2),
(901, 'Taking three shots of each subject', FALSE, 3),
(901, 'Using three-point lighting', FALSE, 4),
-- Question 902
(902, 'Rule of Thirds', FALSE, 1),
(902, 'Leading lines', TRUE, 2),
(902, 'Framing', FALSE, 3),
(902, 'Patterns', FALSE, 4),
-- Question 903
(903, 'True', FALSE, 1),
(903, 'False', TRUE, 2),
-- Question 904
(904, 'Putting pictures in physical frames', FALSE, 1),
(904, 'Using foreground elements to surround the subject', TRUE, 2),
(904, 'Composing only rectangular images', FALSE, 3),
(904, 'Using wooden frames as props', FALSE, 4),
-- Question 905
(905, 'Leading lines', FALSE, 1),
(905, 'Symmetry and balance', TRUE, 2),
(905, 'Filling the frame', FALSE, 3),
(905, 'Viewpoint', FALSE, 4),
-- Question 906
(906, 'True', FALSE, 1),
(906, 'False', TRUE, 2),
-- Question 907
(907, 'To make images look busy', FALSE, 1),
(907, 'Create visual rhythm and interest', TRUE, 2),
(907, 'Hide technical flaws', FALSE, 3),
(907, 'Reduce file size', FALSE, 4),
-- Question 908
(908, 'Using wide-angle lenses only', FALSE, 1),
(908, 'Layering foreground, middle ground, background', TRUE, 2),
(908, 'Shooting from eye level only', FALSE, 3),
(908, 'Using black and white', FALSE, 4),
-- Question 909
(909, 'True', TRUE, 1),
(909, 'False', FALSE, 2),
-- Question 910
(910, 'The camera brand', FALSE, 1),
(910, 'The photographer''s opinion', FALSE, 2),
(910, 'The physical position from which you photograph', TRUE, 3),
(910, 'The subject''s expression', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(92, 'What is the "golden hour" in photography?', 'multiple_choice', 1.00, 1, 'The golden hour occurs shortly after sunrise and before sunset, providing soft, warm, directional light.'),
(92, 'Which type of lighting creates strong shadows and high contrast?', 'multiple_choice', 1.00, 2, 'Direct sunlight at midday creates harsh shadows and high contrast, often challenging for photographers.'),
(92, 'Backlighting always ruins a photograph and should be avoided.', 'true_false', 1.00, 3, 'False. Backlighting can create dramatic silhouettes, rim lighting, and atmospheric effects when used creatively.'),
(92, 'What is the purpose of a reflector in photography?', 'multiple_choice', 1.00, 4, 'Reflectors bounce light onto the subject to fill shadows and create more flattering, even lighting.'),
(92, 'Which quality describes soft, diffused lighting?', 'multiple_choice', 1.00, 5, 'Soft light has gradual transitions between light and shadow, created by large or diffused light sources.'),
(92, 'White balance affects the color temperature of your photographs.', 'true_false', 1.00, 6, 'True. White balance adjusts colors to appear natural under different light sources (tungsten, fluorescent, daylight).'),
(92, 'What is "rim lighting" in portrait photography?', 'multiple_choice', 1.00, 7, 'Rim lighting creates a bright outline around the subject, separating them from the background.'),
(92, 'Which time of day typically provides the most challenging lighting conditions?', 'multiple_choice', 1.00, 8, 'Midday sun creates harsh shadows, high contrast, and often unflattering lighting for most subjects.'),
(92, 'Artificial lighting always requires expensive studio equipment.', 'true_false', 1.00, 9, 'False. Simple speedlights, LED panels, or even household lamps can be effective artificial light sources.'),
(92, 'What is the primary advantage of using off-camera flash?', 'multiple_choice', 1.00, 10, 'Off-camera flash allows directional lighting control, creating dimension and avoiding flat on-camera flash look.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 911
(911, 'The most expensive shooting time', FALSE, 1),
(911, 'Hour after sunrise and before sunset with soft, warm light', TRUE, 2),
(911, 'The hour with most golden-colored subjects', FALSE, 3),
(911, 'Studio lighting with gold reflectors', FALSE, 4),
-- Question 912
(912, 'Overcast daylight', FALSE, 1),
(912, 'Direct midday sun', TRUE, 2),
(912, 'Window light', FALSE, 3),
(912, 'Open shade', FALSE, 4),
-- Question 913
(913, 'True', FALSE, 1),
(913, 'False', TRUE, 2),
-- Question 914
(914, 'To make the subject reflect light', FALSE, 1),
(914, 'To bounce light and fill shadows', TRUE, 2),
(914, 'To reflect the photographer''s image', FALSE, 3),
(914, 'To reduce camera weight', FALSE, 4),
-- Question 915
(915, 'Harsh shadows and high contrast', FALSE, 1),
(915, 'Gradual light-to-shadow transitions', TRUE, 2),
(915, 'Direct, unfiltered sunlight', FALSE, 3),
(915, 'Light from behind the subject', FALSE, 4),
-- Question 916
(916, 'True', TRUE, 1),
(916, 'False', FALSE, 2),
-- Question 917
(917, 'Lighting only the subject''s face', FALSE, 1),
(917, 'A bright outline around the subject', TRUE, 2),
(917, 'Lighting from below the subject', FALSE, 3),
(917, 'Even lighting across the entire scene', FALSE, 4),
-- Question 918
(918, 'Golden hour', FALSE, 1),
(918, 'Blue hour', FALSE, 2),
(918, 'Midday', TRUE, 3),
(918, 'Twilight', FALSE, 4),
-- Question 919
(919, 'True', FALSE, 1),
(919, 'False', TRUE, 2),
-- Question 920
(920, 'It''s cheaper', FALSE, 1),
(920, 'Allows directional lighting control', TRUE, 2),
(920, 'Makes the camera lighter', FALSE, 3),
(920, 'Automatically improves exposure', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(93, 'What is the most important element in portrait photography?', 'multiple_choice', 1.00, 1, 'Capturing genuine expression and connection with the subject is more important than technical perfection.'),
(93, 'Which lens focal length is generally most flattering for portraits?', 'multiple_choice', 1.00, 2, '85mm to 135mm lenses provide natural perspective without distortion and comfortable working distance.'),
(93, 'Environmental portraits always include the subject''s full body and surroundings.', 'true_false', 1.00, 3, 'True. Environmental portraits place subjects in their natural surroundings to tell a story about them.'),
(93, 'What is the purpose of catchlights in portrait eyes?', 'multiple_choice', 1.00, 4, 'Catchlights add life and sparkle to eyes, making portraits appear more engaging and vibrant.'),
(93, 'Which lighting pattern creates a small triangular highlight on the shadowed cheek?', 'multiple_choice', 1.00, 5, 'Rembrandt lighting creates dramatic, artistic portraits with a characteristic triangle of light on the cheek.'),
(93, 'The rule of thirds doesn''t apply to portrait composition.', 'true_false', 1.00, 6, 'False. The rule of thirds works well in portraits, often placing eyes along the upper third line.'),
(93, 'What is the primary goal of establishing rapport with your portrait subject?', 'multiple_choice', 1.00, 7, 'Building trust and comfort helps subjects relax, resulting in more natural, authentic expressions.'),
(93, 'Which aperture range typically creates pleasing background blur in portraits?', 'multiple_choice', 1.00, 8, 'Wide apertures (f/1.8 to f/4) create shallow depth of field, separating subject from background.'),
(93, 'Group portraits require deeper depth of field than individual portraits.', 'true_false', 1.00, 9, 'True. Smaller apertures (higher f-numbers) ensure all people in a group remain in focus.'),
(93, 'What is the advantage of shooting portraits in RAW format?', 'multiple_choice', 1.00, 10, 'RAW files preserve maximum data for flexible editing of exposure, white balance, and recovery of details.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 921
(921, 'Perfect lighting', FALSE, 1),
(921, 'Expensive equipment', FALSE, 2),
(921, 'Genuine expression and connection', TRUE, 3),
(921, 'Studio background', FALSE, 4),
-- Question 922
(922, '24mm', FALSE, 1),
(922, '50mm', FALSE, 2),
(922, '85mm to 135mm', TRUE, 3),
(922, '200mm', FALSE, 4),
-- Question 923
(923, 'True', TRUE, 1),
(923, 'False', FALSE, 2),
-- Question 924
(924, 'To show the light source', FALSE, 1),
(924, 'Add life and sparkle to eyes', TRUE, 2),
(924, 'Hide eye color', FALSE, 3),
(924, 'Reduce red-eye effect', FALSE, 4),
-- Question 925
(925, 'Butterfly lighting', FALSE, 1),
(925, 'Rembrandt lighting', TRUE, 2),
(925, 'Flat lighting', FALSE, 3),
(925, 'Split lighting', FALSE, 4),
-- Question 926
(926, 'True', FALSE, 1),
(926, 'False', TRUE, 2),
-- Question 927
(927, 'To charge more money', FALSE, 1),
(927, 'To get natural, authentic expressions', TRUE, 2),
(927, 'To avoid getting model releases', FALSE, 3),
(927, 'To impress other photographers', FALSE, 4),
-- Question 928
(928, 'f/16 to f/22', FALSE, 1),
(928, 'f/1.8 to f/4', TRUE, 2),
(928, 'f/8 to f/11', FALSE, 3),
(928, 'f/32 to f/45', FALSE, 4),
-- Question 929
(929, 'True', TRUE, 1),
(929, 'False', FALSE, 2),
-- Question 930
(930, 'Smaller file sizes', FALSE, 1),
(930, 'Maximum data for flexible editing', TRUE, 2),
(930, 'Automatic color correction', FALSE, 3),
(930, 'Built-in retouching', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(94, 'What is the most important consideration for landscape photography?', 'multiple_choice', 1.00, 1, 'Strong composition creates compelling landscapes, often more important than perfect technical execution.'),
(94, 'Which aperture is typically ideal for landscape photography?', 'multiple_choice', 1.00, 2, 'f/8 to f/16 provides extensive depth of field while maintaining optimal lens sharpness.'),
(94, 'A polarizing filter can darken blue skies and reduce reflections in landscape photography.', 'true_false', 1.00, 3, 'True. Polarizers enhance skies, reduce glare from water and foliage, and increase color saturation.'),
(94, 'What is the purpose of using a tripod in landscape photography?', 'multiple_choice', 1.00, 4, 'Tripods enable sharp images with small apertures and slow shutter speeds, especially in low light.'),
(94, 'Which time of day is generally best for landscape photography?', 'multiple_choice', 1.00, 5, 'Golden hour provides soft, directional light with warm tones that enhance landscape scenes.'),
(94, 'Foreground elements are unimportant in landscape composition.', 'true_false', 1.00, 6, 'False. Strong foreground elements create depth and lead the viewer into the scene.'),
(94, 'What is the "hyperfocal distance" in landscape photography?', 'multiple_choice', 1.00, 7, 'Hyperfocal distance is the focus distance that maximizes depth of field from foreground to infinity.'),
(94, 'Which lens type is most commonly used for landscape photography?', 'multiple_choice', 1.00, 8, 'Wide-angle lenses (10-35mm) capture expansive scenes and emphasize foreground elements.'),
(94, 'Long exposure techniques can create smooth, misty water effects in landscapes.', 'true_false', 1.00, 9, 'True. Slow shutter speeds (several seconds or more) blur moving water for ethereal effects.'),
(94, 'What is the advantage of shooting landscapes in RAW format?', 'multiple_choice', 1.00, 10, 'RAW preserves highlight and shadow detail for recovery in editing, crucial for high-contrast landscapes.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 931
(931, 'Expensive camera gear', FALSE, 1),
(931, 'Strong composition', TRUE, 2),
(931, 'Always including people', FALSE, 3),
(931, 'Shooting only in color', FALSE, 4),
-- Question 932
(932, 'f/2.8', FALSE, 1),
(932, 'f/8 to f/16', TRUE, 2),
(932, 'f/1.4', FALSE, 3),
(932, 'f/22', FALSE, 4),
-- Question 933
(933, 'True', TRUE, 1),
(933, 'False', FALSE, 2),
-- Question 934
(934, 'To carry more equipment', FALSE, 1),
(934, 'For sharp images with small apertures and slow shutter speeds', TRUE, 2),
(934, 'To look more professional', FALSE, 3),
(934, 'To automatically level the horizon', FALSE, 4),
-- Question 935
(935, 'Midday', FALSE, 1),
(935, 'Golden hour', TRUE, 2),
(935, 'Night', FALSE, 3),
(935, 'Any time with flash', FALSE, 4),
-- Question 936
(936, 'True', FALSE, 1),
(936, 'False', TRUE, 2),
-- Question 937
(937, 'The distance to the closest subject', FALSE, 1),
(937, 'Focus distance that maximizes depth of field', TRUE, 2),
(937, 'The farthest focus point', FALSE, 3),
(937, 'The minimum focusing distance', FALSE, 4),
-- Question 938
(938, 'Telephoto lenses', FALSE, 1),
(938, 'Wide-angle lenses', TRUE, 2),
(938, 'Macro lenses', FALSE, 3),
(938, 'Fisheye lenses', FALSE, 4),
-- Question 939
(939, 'True', TRUE, 1),
(939, 'False', FALSE, 2),
-- Question 940
(940, 'Smaller file sizes for sharing', FALSE, 1),
(940, 'Preserves highlight and shadow detail for recovery', TRUE, 2),
(940, 'Automatic horizon leveling', FALSE, 3),
(940, 'Built-in HDR effects', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(95, 'What is the primary advantage of non-destructive editing?', 'multiple_choice', 1.00, 1, 'Non-destructive editing preserves original image data, allowing changes to be modified or reversed later.'),
(95, 'Which adjustment primarily affects the overall brightness of an image?', 'multiple_choice', 1.00, 2, 'Exposure controls the overall brightness, while contrast affects the difference between lights and darks.'),
(95, 'Cropping can improve composition but reduces image resolution.', 'true_false', 1.00, 3, 'True. Cropping removes pixels, potentially reducing resolution and print quality if cropped heavily.'),
(95, 'What does the "white balance" adjustment control?', 'multiple_choice', 1.00, 4, 'White balance corrects color casts to make whites appear neutral under different light sources.'),
(95, 'Which tool is used to selectively darken areas of a photograph?', 'multiple_choice', 1.00, 5, 'The burn tool darkens specific areas, while dodge lightens - terms from traditional darkroom techniques.'),
(95, 'Sharpening should always be applied as the first step in editing.', 'true_false', 1.00, 6, 'False. Sharpening is typically one of the final steps to avoid amplifying artifacts from other edits.'),
(95, 'What is the purpose of using layers in photo editing software?', 'multiple_choice', 1.00, 7, 'Layers allow separate adjustments that can be modified individually without affecting other image areas.'),
(95, 'Which file format preserves layers and editing flexibility?', 'multiple_choice', 1.00, 8, 'PSD (Photoshop) and other native formats preserve layers, masks, and adjustment layers for future editing.'),
(95, 'Vignetting adds darkness or lightness around the edges of an image.', 'true_false', 1.00, 9, 'True. Vignetting can draw attention to the center of the image and is a creative editing choice.'),
(95, 'What is the recommended approach for saving edited photos for web use?', 'multiple_choice', 1.00, 10, 'JPEG format with appropriate compression balances quality and file size for web viewing and sharing.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 941
(941, 'Faster editing speed', FALSE, 1),
(941, 'Preserves original data for future modifications', TRUE, 2),
(941, 'Automatically improves image quality', FALSE, 3),
(941, 'Reduces file size', FALSE, 4),
-- Question 942
(942, 'Contrast', FALSE, 1),
(942, 'Saturation', FALSE, 2),
(942, 'Exposure', TRUE, 3),
(942, 'Clarity', FALSE, 4),
-- Question 943
(943, 'True', TRUE, 1),
(943, 'False', FALSE, 2),
-- Question 944
(944, 'Overall brightness', FALSE, 1),
(944, 'Color temperature and tint', TRUE, 2),
(944, 'Image sharpness', FALSE, 3),
(944, 'Perspective distortion', FALSE, 4),
-- Question 945
(945, 'Dodge tool', FALSE, 1),
(945, 'Burn tool', TRUE, 2),
(945, 'Clone tool', FALSE, 3),
(945, 'Healing brush', FALSE, 4),
-- Question 946
(946, 'True', FALSE, 1),
(946, 'False', TRUE, 2),
-- Question 947
(947, 'To make files larger', FALSE, 1),
(947, 'For separate, adjustable edits', TRUE, 2),
(947, 'To automatically correct colors', FALSE, 3),
(947, 'To reduce editing options', FALSE, 4),
-- Question 948
(948, 'JPEG', FALSE, 1),
(948, 'PNG', FALSE, 2),
(948, 'PSD', TRUE, 3),
(948, 'GIF', FALSE, 4),
-- Question 949
(949, 'True', TRUE, 1),
(949, 'False', FALSE, 2),
-- Question 950
(950, 'RAW format for maximum quality', FALSE, 1),
(950, 'TIFF for lossless compression', FALSE, 2),
(950, 'JPEG with appropriate compression', TRUE, 3),
(950, 'BMP for true color', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(96, 'What is the primary purpose of a photography portfolio?', 'multiple_choice', 1.00, 1, 'A portfolio showcases your best work and demonstrates your unique style and technical abilities.'),
(96, 'Which approach is most effective for selecting portfolio images?', 'multiple_choice', 1.00, 2, 'Quality over quantity - include only your strongest images that represent your style and skills.'),
(96, 'A photography portfolio should include every good photo you''ve ever taken.', 'true_false', 1.00, 3, 'False. Curate carefully to show only your best work that aligns with your goals and style.'),
(96, 'What information should accompany portfolio images?', 'multiple_choice', 1.00, 4, 'Technical details and context help viewers understand your process and decision-making.'),
(96, 'Which portfolio format is most accessible to potential clients today?', 'multiple_choice', 1.00, 5, 'Online portfolios reach the widest audience and can be easily updated with new work.'),
(96, 'Print portfolios are no longer relevant in the digital age.', 'true_false', 1.00, 6, 'False. Print portfolios still impress clients and demonstrate your printing and presentation skills.'),
(96, 'What is the benefit of specializing in a photography niche?', 'multiple_choice', 1.00, 7, 'Specialization helps you stand out and become known for specific types of photography.'),
(96, 'How often should you update your photography portfolio?', 'multiple_choice', 1.00, 8, 'Regular updates with new work show growth and keep your portfolio current and engaging.'),
(96, 'Social media can serve as an effective photography portfolio platform.', 'true_false', 1.00, 9, 'True. Platforms like Instagram can showcase work, but dedicated portfolio sites offer more control.'),
(96, 'What is the purpose of getting feedback on your portfolio?', 'multiple_choice', 1.00, 10, 'Constructive feedback helps identify strengths, weaknesses, and areas for improvement.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 951
(951, 'To store all your photos', FALSE, 1),
(951, 'Showcase best work and demonstrate style', TRUE, 2),
(951, 'Impress other photographers only', FALSE, 3),
(951, 'Replace social media', FALSE, 4),
-- Question 952
(952, 'Include everything you''ve shot', FALSE, 1),
(952, 'Quality over quantity - only strongest images', TRUE, 2),
(952, 'Only color images', FALSE, 3),
(952, 'Only recent work', FALSE, 4),
-- Question 953
(953, 'True', FALSE, 1),
(953, 'False', TRUE, 2),
-- Question 954
(954, 'Only the camera model', FALSE, 1),
(954, 'Technical details and context', TRUE, 2),
(954, 'Your prices', FALSE, 3),
(954, 'Client names', FALSE, 4),
-- Question 955
(955, 'Printed book only', FALSE, 1),
(955, 'Online portfolio website', TRUE, 2),
(955, 'PDF slideshow', FALSE, 3),
(955, 'Social media only', FALSE, 4),
-- Question 956
(956, 'True', FALSE, 1),
(956, 'False', TRUE, 2),
-- Question 957
(957, 'Limits your opportunities', FALSE, 1),
(957, 'Helps you stand out in a specific area', TRUE, 2),
(957, 'Makes you more expensive', FALSE, 3),
(957, 'Reduces equipment needs', FALSE, 4),
-- Question 958
(958, 'Once every 5 years', FALSE, 1),
(958, 'Only when changing cameras', FALSE, 2),
(958, 'Regularly with new work', TRUE, 3),
(958, 'Never after initial creation', FALSE, 4),
-- Question 959
(959, 'True', TRUE, 1),
(959, 'False', FALSE, 2),
-- Question 960
(960, 'To get compliments', FALSE, 1),
(960, 'Identify strengths and areas for improvement', TRUE, 2),
(960, 'Find technical errors only', FALSE, 3),
(960, 'Compare with other photographers', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(97, 'What is "writer''s voice" in creative writing?', 'multiple_choice', 1.00, 1, 'Voice is the unique combination of style, tone, and personality that makes a writer''s work distinctive.'),
(97, 'Which practice helps develop your unique writing voice?', 'multiple_choice', 1.00, 2, 'Regular writing and reading widely expose you to different styles while developing your own approach.'),
(97, 'Your writing voice should remain exactly the same across all projects and genres.', 'true_false', 1.00, 3, 'False. While maintaining core elements, voice can adapt to different projects, genres, and audiences.'),
(97, 'What is the relationship between voice and authenticity in writing?', 'multiple_choice', 1.00, 4, 'Authentic voice comes from writing truthfully about what you know and care about, creating genuine connection.'),
(97, 'Which element contributes most to a strong narrative voice?', 'multiple_choice', 1.00, 5, 'Consistent perspective and personality in narration creates a compelling, believable voice.'),
(97, 'Imitation of established authors is discouraged when developing your voice.', 'true_false', 1.00, 6, 'False. Studying and imitating writers you admire can help you discover elements for your own voice.'),
(97, 'What does "showing vs. telling" contribute to voice?', 'multiple_choice', 1.00, 7, 'Showing through sensory details and actions creates immersive experiences that reveal voice organically.'),
(97, 'Which factor is least important in developing your writing voice?', 'multiple_choice', 1.00, 8, 'Following strict grammatical rules matters less than developing authentic expression and style.'),
(97, 'Writing in different genres can help you discover aspects of your voice.', 'true_false', 1.00, 9, 'True. Experimenting with different forms reveals what feels most natural and effective for you.'),
(97, 'What is the benefit of reading your writing aloud when developing voice?', 'multiple_choice', 1.00, 10, 'Reading aloud helps you hear the rhythm, flow, and naturalness of your writing voice.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 961
(961, 'How loud you read your work', FALSE, 1),
(961, 'The unique style and personality in your writing', TRUE, 2),
(961, 'The volume of your writing', FALSE, 3),
(961, 'Speaking recordings of your work', FALSE, 4),
-- Question 962
(962, 'Copying one author exactly', FALSE, 1),
(962, 'Regular writing and reading widely', TRUE, 2),
(962, 'Avoiding all other writers', FALSE, 3),
(962, 'Using complex vocabulary only', FALSE, 4),
-- Question 963
(963, 'True', FALSE, 1),
(963, 'False', TRUE, 2),
-- Question 964
(964, 'They are the same thing', FALSE, 1),
(964, 'Authenticity comes from writing truthfully about what matters to you', TRUE, 2),
(964, 'Voice should always be artificial', FALSE, 3),
(964, 'Authenticity means using simple words only', FALSE, 4),
-- Question 965
(965, 'Complex sentence structure', FALSE, 1),
(965, 'Consistent perspective and personality', TRUE, 2),
(965, 'Fancy vocabulary', FALSE, 3),
(965, 'Perfect grammar', FALSE, 4),
-- Question 966
(966, 'True', FALSE, 1),
(966, 'False', TRUE, 2),
-- Question 967
(967, 'Makes writing longer', FALSE, 1),
(967, 'Creates immersive experiences that reveal voice', TRUE, 2),
(967, 'Hides the writer''s personality', FALSE, 3),
(967, 'Only applies to visual writing', FALSE, 4),
-- Question 968
(968, 'Personal experiences and observations', FALSE, 1),
(968, 'Emotional honesty', FALSE, 2),
(968, 'Following strict grammatical rules', TRUE, 3),
(968, 'Reading diverse literature', FALSE, 4),
-- Question 969
(969, 'True', TRUE, 1),
(969, 'False', FALSE, 2),
-- Question 970
(970, 'Makes editing easier', FALSE, 1),
(970, 'Helps hear rhythm, flow, and naturalness', TRUE, 2),
(970, 'Increases word count', FALSE, 3),
(970, 'Eliminates need for editing', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(98, 'What makes a character feel "round" or three-dimensional?', 'multiple_choice', 1.00, 1, 'Round characters have contradictions, complex motivations, and capacity for change, like real people.'),
(98, 'Which technique is most effective for revealing character?', 'multiple_choice', 1.00, 2, 'Character actions and choices reveal true nature more effectively than direct description.'),
(98, 'Characters should always be either entirely good or entirely evil.', 'true_false', 1.00, 3, 'False. Complex characters with both strengths and weaknesses feel more realistic and engaging.'),
(98, 'What is character "backstory"?', 'multiple_choice', 1.00, 4, 'Backstory includes past experiences that shaped the character, influencing current behavior and motivations.'),
(98, 'Which element is crucial for creating character motivation?', 'multiple_choice', 1.00, 5, 'Clear desires and fears drive character decisions and create compelling narrative tension.'),
(98, 'Dialogue should always advance plot or reveal character.', 'true_false', 1.00, 6, 'True. Effective dialogue serves multiple purposes, including characterization and plot movement.'),
(98, 'What is the purpose of character arcs in storytelling?', 'multiple_choice', 1.00, 7, 'Character arcs show growth, change, or deterioration, creating emotional investment for readers.'),
(98, 'Which method helps writers understand their characters better?', 'multiple_choice', 1.00, 8, 'Character interviews explore personality, history, and motivations beyond what appears in the story.'),
(98, 'Secondary characters should be as developed as main characters.', 'true_false', 1.00, 9, 'False. While secondary characters need some development, main characters require deeper exploration.'),
(98, 'What does "show, don''t tell" mean in character development?', 'multiple_choice', 1.00, 10, 'Reveal character through actions, dialogue, and details rather than direct description of traits.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 971
(971, 'Perfect moral behavior', FALSE, 1),
(971, 'Contradictions and capacity for change', TRUE, 2),
(971, 'Consistent predictable actions', FALSE, 3),
(971, 'Always being likable', FALSE, 4),
-- Question 972
(972, 'Physical description only', FALSE, 1),
(972, 'Character actions and choices', TRUE, 2),
(972, 'Telling readers their personality', FALSE, 3),
(972, 'Using complex vocabulary', FALSE, 4),
-- Question 973
(973, 'True', FALSE, 1),
(973, 'False', TRUE, 2),
-- Question 974
(974, 'The story behind the writer', FALSE, 1),
(974, 'Past experiences that shaped the character', TRUE, 2),
(974, 'Future plot developments', FALSE, 3),
(974, 'The main character''s job', FALSE, 4),
-- Question 975
(975, 'Physical appearance', FALSE, 1),
(975, 'Clear desires and fears', TRUE, 2),
(975, 'Number of speaking parts', FALSE, 3),
(975, 'Age and gender', FALSE, 4),
-- Question 976
(976, 'True', TRUE, 1),
(976, 'False', FALSE, 2),
-- Question 977
(977, 'To increase word count', FALSE, 1),
(977, 'Show growth, change, or deterioration', TRUE, 2),
(977, 'Make characters perfect', FALSE, 3),
(977, 'Eliminate flaws', FALSE, 4),
-- Question 978
(978, 'Asking friends about the character', FALSE, 1),
(978, 'Character interviews exploring personality and history', TRUE, 2),
(978, 'Writing faster', FALSE, 3),
(978, 'Using character templates only', FALSE, 4),
-- Question 979
(979, 'True', FALSE, 1),
(979, 'False', TRUE, 2),
-- Question 980
(980, 'Use more dialogue', FALSE, 1),
(980, 'Reveal character through actions and details', TRUE, 2),
(980, 'Avoid describing characters', FALSE, 3),
(980, 'Tell everything about the character', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(99, 'What are the three main parts of traditional plot structure?', 'multiple_choice', 1.00, 1, 'Beginning (exposition), middle (rising action/climax), and end (resolution) form basic narrative structure.'),
(99, 'Which plot point introduces the main conflict?', 'multiple_choice', 1.00, 2, 'The inciting incident is the event that sets the main story in motion and introduces central conflict.'),
(99, 'All stories must follow the exact same plot structure to be effective.', 'true_false', 1.00, 3, 'False. While understanding structure is valuable, writers can adapt or subvert traditional forms creatively.'),
(99, 'What is the "climax" of a story?', 'multiple_choice', 1.00, 4, 'The climax is the turning point where the main conflict reaches its peak intensity and resolution begins.'),
(99, 'Which element creates tension and moves the plot forward?', 'multiple_choice', 1.00, 5, 'Conflict between characters, within characters, or with external forces drives narrative progression.'),
(99, 'Subplots should always resolve before the main plot concludes.', 'true_false', 1.00, 6, 'False. Subplots can resolve at different times, but should generally support and enhance the main narrative.'),
(99, 'What is the purpose of foreshadowing in plot development?', 'multiple_choice', 1.00, 7, 'Foreshadowing hints at future events, creating anticipation and making developments feel earned.'),
(99, 'Which plot structure features a series of related episodes rather than continuous narrative?', 'multiple_choice', 1.00, 8, 'Episodic structure uses connected but somewhat independent episodes, common in travel or picaresque stories.'),
(99, 'The resolution should tie up every single loose end in the story.', 'true_false', 1.00, 9, 'False. Some ambiguity or unanswered questions can create satisfying, thought-provoking endings.'),
(99, 'What is the relationship between plot and character?', 'multiple_choice', 1.00, 10, 'Plot emerges from character choices, while character is revealed through plot events - they''re interdependent.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 981
(981, 'Introduction, climax, epilogue', FALSE, 1),
(981, 'Beginning, middle, end', TRUE, 2),
(981, 'Setting, characters, theme', FALSE, 3),
(981, 'Dialogue, action, description', FALSE, 4),
-- Question 982
(982, 'Exposition', FALSE, 1),
(982, 'Inciting incident', TRUE, 2),
(982, 'Climax', FALSE, 3),
(982, 'Resolution', FALSE, 4),
-- Question 983
(983, 'True', FALSE, 1),
(983, 'False', TRUE, 2),
-- Question 984
(984, 'The most exciting action scene', FALSE, 1),
(984, 'The turning point where conflict peaks', TRUE, 2),
(984, 'The introduction of characters', FALSE, 3),
(984, 'The final sentence', FALSE, 4),
-- Question 985
(985, 'Detailed descriptions', FALSE, 1),
(985, 'Conflict', TRUE, 2),
(985, 'Beautiful language', FALSE, 3),
(985, 'Historical accuracy', FALSE, 4),
-- Question 986
(986, 'True', FALSE, 1),
(986, 'False', TRUE, 2),
-- Question 987
(987, 'To confuse readers', FALSE, 1),
(987, 'Hint at future events and create anticipation', TRUE, 2),
(987, 'Fill space between events', FALSE, 3),
(987, 'Show the author''s planning skills', FALSE, 4),
-- Question 988
(988, 'Linear structure', FALSE, 1),
(988, 'Episodic structure', TRUE, 2),
(988, 'In media res', FALSE, 3),
(988, 'Flashback structure', FALSE, 4),
-- Question 989
(989, 'True', FALSE, 1),
(989, 'False', TRUE, 2),
-- Question 990
(990, 'Plot is more important than character', FALSE, 1),
(990, 'They are completely separate', FALSE, 2),
(990, 'Plot emerges from character choices', TRUE, 3),
(990, 'Character should serve plot only', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(100, 'What is the primary purpose of dialogue in fiction?', 'multiple_choice', 1.00, 1, 'Effective dialogue reveals character, advances plot, and provides information simultaneously.'),
(100, 'Which technique makes dialogue sound more natural?', 'multiple_choice', 1.00, 2, 'Realistic dialogue includes interruptions, contractions, and sentence fragments like actual speech.'),
(100, 'Dialogue should always grammatically perfect and complete sentences.', 'true_false', 1.00, 3, 'False. Natural dialogue often includes fragments, interruptions, and colloquial language.'),
(100, 'What do "dialogue tags" accomplish?', 'multiple_choice', 1.00, 4, 'Dialogue tags identify speakers and can convey tone, action, or emotion related to the speech.'),
(100, 'Which approach helps distinguish character voices in dialogue?', 'multiple_choice', 1.00, 5, 'Distinct vocabulary, rhythm, and speech patterns make characters identifiable without constant tags.'),
(100, 'Subtext in dialogue refers to what characters explicitly state.', 'true_false', 1.00, 6, 'False. Subtext is the underlying meaning beneath the surface words - what characters don''t say directly.'),
(100, 'What is the purpose of using dialect in dialogue?', 'multiple_choice', 1.00, 7, 'Dialect suggests regional or cultural speech patterns, but should be used sparingly to avoid stereotyping.'),
(100, 'Which element is most important for creating tension in dialogue?', 'multiple_choice', 1.00, 8, 'Conflicting goals or hidden agendas between characters create compelling, tense conversations.'),
(100, 'Dialogue should always move the plot forward directly.', 'true_false', 1.00, 9, 'False. Dialogue can also reveal character relationships, establish mood, or provide breathing space.'),
(100, 'What is the benefit of reading dialogue aloud during revision?', 'multiple_choice', 1.00, 10, 'Reading aloud helps identify unnatural phrasing, rhythm issues, and opportunities for improvement.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 991
(991, 'Fill space between action scenes', FALSE, 1),
(991, 'Reveal character and advance plot', TRUE, 2),
(991, 'Show off vocabulary', FALSE, 3),
(991, 'Meet word count requirements', FALSE, 4),
-- Question 992
(992, 'Formal academic language', FALSE, 1),
(992, 'Interruptions and contractions like real speech', TRUE, 2),
(992, 'Always complete sentences', FALSE, 3),
(992, 'Avoiding any pauses', FALSE, 4),
-- Question 993
(993, 'True', FALSE, 1),
(993, 'False', TRUE, 2),
-- Question 994
(994, 'Make dialogue longer', FALSE, 1),
(994, 'Identify speakers and convey tone or action', TRUE, 2),
(994, 'Replace character actions', FALSE, 3),
(994, 'Eliminate the need for description', FALSE, 4),
-- Question 995
(995, 'Having all characters sound the same', FALSE, 1),
(995, 'Distinct vocabulary and speech patterns', TRUE, 2),
(995, 'Using different fonts for each character', FALSE, 3),
(995, 'Always stating who is speaking', FALSE, 4),
-- Question 996
(996, 'True', FALSE, 1),
(996, 'False', TRUE, 2),
-- Question 997
(997, 'Make characters hard to understand', FALSE, 1),
(997, 'Suggest regional or cultural speech patterns', TRUE, 2),
(997, 'Show the author''s linguistic knowledge', FALSE, 3),
(997, 'Eliminate the need for characterization', FALSE, 4),
-- Question 998
(998, 'Polite agreement', FALSE, 1),
(998, 'Conflicting goals or hidden agendas', TRUE, 2),
(998, 'Long speeches', FALSE, 3),
(998, 'Simple vocabulary', FALSE, 4),
-- Question 999
(999, 'True', FALSE, 1),
(999, 'False', TRUE, 2),
-- Question 1000
(1000, 'Increase reading speed', FALSE, 1),
(1000, 'Identify unnatural phrasing and rhythm issues', TRUE, 2),
(1000, 'Make dialogue longer', FALSE, 3),
(1000, 'Eliminate the need for editing', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(101, 'What is the primary function of setting in a story?', 'multiple_choice', 1.00, 1, 'Setting establishes context, influences mood, and can act as an antagonist or character itself.'),
(101, 'Which technique is most effective for integrating setting into narrative?', 'multiple_choice', 1.00, 2, 'Weaving setting details through character perception and interaction creates organic, immersive environments.'),
(101, 'Setting only matters in fantasy and science fiction genres.', 'true_false', 1.00, 3, 'False. Setting influences all genres, from contemporary realism to historical fiction and beyond.'),
(101, 'What is "world-building" in fiction writing?', 'multiple_choice', 1.00, 4, 'World-building creates believable, consistent fictional worlds with their own rules, history, and cultures.'),
(101, 'Which element is crucial for maintaining consistency in world-building?', 'multiple_choice', 1.00, 5, 'Internal logic and established rules must remain consistent throughout the story for reader belief.'),
(101, 'Historical fiction requires complete accuracy to real historical events.', 'true_false', 1.00, 6, 'False. While research is important, historical fiction can take creative liberties for storytelling purposes.'),
(101, 'What is the purpose of sensory details in describing setting?', 'multiple_choice', 1.00, 7, 'Sensory details engage multiple senses, creating immersive experiences and emotional connections to place.'),
(101, 'Which approach helps make fictional settings feel authentic?', 'multiple_choice', 1.00, 8, 'Cultural, social, and economic systems that logically interconnect create believable fictional worlds.'),
(101, 'Settings should always be described in exhaustive detail at first introduction.', 'true_false', 1.00, 9, 'False. Reveal setting gradually through the story to avoid overwhelming readers with information.'),
(101, 'What is the relationship between setting and character?', 'multiple_choice', 1.00, 10, 'Settings shape characters'' worldviews, opportunities, and conflicts, while characters perceive settings subjectively.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1001
(1001, 'Provide pretty descriptions', FALSE, 1),
(1001, 'Establish context and influence mood', TRUE, 2),
(1001, 'Increase word count', FALSE, 3),
(1001, 'Show the author''s travel experience', FALSE, 4),
-- Question 1002
(1002, 'Long descriptive paragraphs at beginning', FALSE, 1),
(1002, 'Weaving details through character perception', TRUE, 2),
(1002, 'Listing all features systematically', FALSE, 3),
(1002, 'Avoiding setting descriptions', FALSE, 4),
-- Question 1003
(1003, 'True', FALSE, 1),
(1003, 'False', TRUE, 2),
-- Question 1004
(1004, 'Building physical models', FALSE, 1),
(1004, 'Creating believable fictional worlds with consistent rules', TRUE, 2),
(1004, 'Describing real places accurately', FALSE, 3),
(1004, 'Writing about construction', FALSE, 4),
-- Question 1005
(1005, 'Beautiful descriptions', FALSE, 1),
(1005, 'Internal logic and established rules', TRUE, 2),
(1005, 'Complex vocabulary', FALSE, 3),
(1005, 'Many different locations', FALSE, 4),
-- Question 1006
(1006, 'True', FALSE, 1),
(1006, 'False', TRUE, 2),
-- Question 1007
(1007, 'Make descriptions longer', FALSE, 1),
(1007, 'Engage multiple senses for immersion', TRUE, 2),
(1007, 'Show off vocabulary', FALSE, 3),
(1007, 'Meet genre requirements', FALSE, 4),
-- Question 1008
(1008, 'Making everything exotic', FALSE, 1),
(1008, 'Interconnected cultural and economic systems', TRUE, 2),
(1008, 'Using unfamiliar names', FALSE, 3),
(1008, 'Avoiding real-world references', FALSE, 4),
-- Question 1009
(1009, 'True', FALSE, 1),
(1009, 'False', TRUE, 2),
-- Question 1010
(1010, 'They are completely separate', FALSE, 1),
(1010, 'Settings shape characters and characters perceive settings', TRUE, 2),
(1010, 'Setting is more important than character', FALSE, 3),
(1010, 'Character is more important than setting', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(102, 'What does "show, don''t tell" mean in creative writing?', 'multiple_choice', 1.00, 1, 'Showing uses sensory details and actions to let readers experience the story, rather than stating facts directly.'),
(102, 'Which example demonstrates "showing" rather than "telling"?', 'multiple_choice', 1.00, 2, 'Showing uses specific, concrete details that allow readers to draw their own conclusions.'),
(102, '"Show, don''t tell" should be applied to every single sentence in a story.', 'true_false', 1.00, 3, 'False. Strategic telling can efficiently convey necessary information, while showing creates key moments.'),
(102, 'What is the primary benefit of showing character emotions?', 'multiple_choice', 1.00, 4, 'Showing emotions through physical reactions and behaviors creates deeper reader connection and immersion.'),
(102, 'Which technique effectively "shows" rather than "tells"?', 'multiple_choice', 1.00, 5, 'Character actions, dialogue, and sensory details show information indirectly and engagingly.'),
(102, 'Internal monologue always counts as "telling" rather than "showing."', 'true_false', 1.00, 6, 'False. Well-written internal monologue can show character perspective and create intimacy with readers.'),
(102, 'When is "telling" more appropriate than "showing"?', 'multiple_choice', 1.00, 7, 'Telling efficiently conveys transitional information, while showing emphasizes important moments.'),
(102, 'What role do sensory details play in "showing"?', 'multiple_choice', 1.00, 8, 'Sensory details engage readers'' experiences and emotions, making descriptions vivid and immediate.'),
(102, 'Dialogue can be an effective tool for "showing" character relationships.', 'true_false', 1.00, 9, 'True. How characters speak to each other reveals their relationships, history, and dynamics.'),
(102, 'What is the balance between showing and telling in effective writing?', 'multiple_choice', 1.00, 10, 'Strategic balance uses showing for key moments and telling for efficient transitions and information.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1011
(1011, 'Using more visual words', FALSE, 1),
(1011, 'Letting readers experience through details rather than statements', TRUE, 2),
(1011, 'Always describing everything', FALSE, 3),
(1011, 'Avoiding all exposition', FALSE, 4),
-- Question 1012
(1012, 'She was angry.', FALSE, 1),
(1012, 'Her hands trembled as she crumpled the paper.', TRUE, 2),
(1012, 'He felt sad about the loss.', FALSE, 3),
(1012, 'The room was messy.', FALSE, 4),
-- Question 1013
(1013, 'True', FALSE, 1),
(1013, 'False', TRUE, 2),
-- Question 1014
(1014, 'Makes writing faster', FALSE, 1),
(1014, 'Creates deeper reader connection and immersion', TRUE, 2),
(1014, 'Reduces word count', FALSE, 3),
(1014, 'Eliminates need for dialogue', FALSE, 4),
-- Question 1015
(1015, 'Stating character traits directly', FALSE, 1),
(1015, 'Using actions, dialogue, and sensory details', TRUE, 2),
(1015, 'Explaining everything to readers', FALSE, 3),
(1015, 'Using abstract descriptions', FALSE, 4),
-- Question 1016
(1016, 'True', FALSE, 1),
(1016, 'False', TRUE, 2),
-- Question 1017
(1017, 'In emotional climaxes', FALSE, 1),
(1017, 'For transitional information and efficient pacing', TRUE, 2),
(1017, 'When introducing main characters', FALSE, 3),
(1017, 'During important action scenes', FALSE, 4),
-- Question 1018
(1018, 'Make descriptions longer', FALSE, 1),
(1018, 'Engage readers'' experiences and emotions', TRUE, 2),
(1018, 'Show the author''s observation skills', FALSE, 3),
(1018, 'Meet genre requirements', FALSE, 4),
-- Question 1019
(1019, 'True', TRUE, 1),
(1019, 'False', FALSE, 2),
-- Question 1020
(1020, 'Show everything, tell nothing', FALSE, 1),
(1020, 'Strategic balance for key moments and transitions', TRUE, 2),
(1020, 'Tell everything, show nothing', FALSE, 3),
(1020, 'Use showing only in dialogue', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(103, 'What is the difference between editing and revision?', 'multiple_choice', 1.00, 1, 'Revision addresses big-picture elements like structure and character, while editing focuses on sentence-level details.'),
(103, 'Which approach is most effective for the first round of revision?', 'multiple_choice', 1.00, 2, 'Start with big-picture issues like plot, structure, and character development before sentence-level edits.'),
(103, 'The first draft should be perfect before moving to revision.', 'true_false', 1.00, 3, 'False. First drafts are for getting ideas down; perfection comes through multiple revision rounds.'),
(103, 'What is the benefit of taking time between writing and revising?', 'multiple_choice', 1.00, 4, 'Distance helps writers see their work more objectively, identifying issues they might otherwise miss.'),
(103, 'Which technique helps identify awkward phrasing during editing?', 'multiple_choice', 1.00, 5, 'Reading aloud reveals rhythm problems, awkward constructions, and unnatural dialogue.'),
(103, 'All feedback from beta readers should be implemented immediately.', 'true_false', 1.00, 6, 'False. Consider feedback carefully and implement changes that align with your vision for the work.'),
(103, 'What is the purpose of a reverse outline during revision?', 'multiple_choice', 1.00, 7, 'A reverse outline helps analyze existing structure and identify plot holes or pacing issues.'),
(103, 'Which element should be addressed last in the editing process?', 'multiple_choice', 1.00, 8, 'Proofreading for spelling and punctuation should be the final step after all content edits are complete.'),
(103, 'Killing your darlings means removing favorite passages that don''t serve the story.', 'true_false', 1.00, 9, 'True. This difficult but necessary practice improves the overall work by removing self-indulgent elements.'),
(103, 'What is the most important mindset for successful revision?', 'multiple_choice', 1.00, 10, 'Viewing revision as an opportunity to strengthen the work, not as criticism of your writing ability.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1021
(1021, 'They are the same thing', FALSE, 1),
(1021, 'Revision is big-picture, editing is sentence-level', TRUE, 2),
(1021, 'Editing is more important than revision', FALSE, 3),
(1021, 'Revision only applies to novels', FALSE, 4),
-- Question 1022
(1022, 'Correcting spelling errors', FALSE, 1),
(1022, 'Addressing big-picture issues first', TRUE, 2),
(1022, 'Changing all adjectives', FALSE, 3),
(1022, 'Asking for feedback immediately', FALSE, 4),
-- Question 1023
(1023, 'True', FALSE, 1),
(1023, 'False', TRUE, 2),
-- Question 1024
(1024, 'Makes writing faster', FALSE, 1),
(1024, 'Provides objective perspective on the work', TRUE, 2),
(1024, 'Eliminates need for editing', FALSE, 3),
(1024, 'Improves typing speed', FALSE, 4),
-- Question 1025
(1025, 'Using grammar checkers only', FALSE, 1),
(1025, 'Reading aloud to hear rhythm and flow', TRUE, 2),
(1025, 'Asking friends to read silently', FALSE, 3),
(1025, 'Using complex vocabulary', FALSE, 4),
-- Question 1026
(1026, 'True', FALSE, 1),
(1026, 'False', TRUE, 2),
-- Question 1027
(1027, 'To start writing from scratch', FALSE, 1),
(1027, 'Analyze existing structure and identify issues', TRUE, 2),
(1027, 'Create a better outline for next time', FALSE, 3),
(1027, 'Eliminate the need for planning', FALSE, 4),
-- Question 1028
(1028, 'Plot structure', FALSE, 1),
(1028, 'Character development', FALSE, 2),
(1028, 'Proofreading for spelling and punctuation', TRUE, 3),
(1028, 'Dialogue improvement', FALSE, 4),
-- Question 1029
(1029, 'True', TRUE, 1),
(1029, 'False', FALSE, 2),
-- Question 1030
(1030, 'Defensiveness about your writing', FALSE, 1),
(1030, 'Viewing revision as opportunity to strengthen work', TRUE, 2),
(1030, 'Resistance to all changes', FALSE, 3),
(1030, 'Believing the first draft is perfect', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(104, 'What is the primary difference between traditional and self-publishing?', 'multiple_choice', 1.00, 1, 'Traditional publishing uses established companies, while self-publishing gives authors full control.'),
(104, 'Which document is essential for querying literary agents?', 'multiple_choice', 1.00, 2, 'A query letter introduces your work to agents and must capture interest quickly and professionally.'),
(104, 'Self-published books cannot achieve commercial success or critical recognition.', 'true_false', 1.00, 3, 'False. Many self-published books have found significant success, though it requires marketing effort.'),
(104, 'What is the role of a literary agent in traditional publishing?', 'multiple_choice', 1.00, 4, 'Agents represent authors, submit work to publishers, negotiate contracts, and manage rights.'),
(104, 'Which factor is most important for successful self-publishing?', 'multiple_choice', 1.00, 5, 'Professional editing, cover design, and marketing are crucial for self-publishing success.'),
(104, 'Traditional publishers handle all marketing and promotion for their authors.', 'true_false', 1.00, 6, 'False. Authors are increasingly expected to participate in marketing, even with traditional publishers.'),
(104, 'What are "vanity presses" or "hybrid publishers"?', 'multiple_choice', 1.00, 7, 'These require authors to pay for publication services and often provide less value than other options.'),
(104, 'Which platform is commonly used for ebook self-publishing?', 'multiple_choice', 1.00, 8, 'Amazon Kindle Direct Publishing is the largest platform for self-publishing ebooks worldwide.'),
(104, 'Literary magazines and journals can be stepping stones to book publication.', 'true_false', 1.00, 9, 'True. Publishing short work builds credentials and can lead to agent and publisher attention.'),
(104, 'What should writers consider when choosing a publishing path?', 'multiple_choice', 1.00, 10, 'Consider creative control, timeline, financial investment, marketing skills, and career goals.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1031
(1031, 'Book quality', FALSE, 1),
(1031, 'Traditional uses companies, self-publishing gives author control', TRUE, 2),
(1031, 'Only famous authors can traditionally publish', FALSE, 3),
(1031, 'Self-publishing is always better', FALSE, 4),
-- Question 1032
(1032, 'The entire manuscript', FALSE, 1),
(1032, 'A query letter', TRUE, 2),
(1032, 'A book cover design', FALSE, 3),
(1032, 'Marketing plan', FALSE, 4),
-- Question 1033
(1033, 'True', FALSE, 1),
(1033, 'False', TRUE, 2),
-- Question 1034
(1034, 'Write the book for the author', FALSE, 1),
(1034, 'Represent authors and submit to publishers', TRUE, 2),
(1034, 'Publish the book themselves', FALSE, 3),
(1034, 'Guarantee publication', FALSE, 4),
-- Question 1035
(1035, 'Low prices', FALSE, 1),
(1035, 'Professional editing, design, and marketing', TRUE, 2),
(1035, 'Writing multiple books quickly', FALSE, 3),
(1035, 'Using free software', FALSE, 4),
-- Question 1036
(1036, 'True', FALSE, 1),
(1036, 'False', TRUE, 2),
-- Question 1037
(1037, 'Publishers who only accept poetry', FALSE, 1),
(1037, 'Publishers authors pay for services', TRUE, 2),
(1037, 'The fastest route to publication', FALSE, 3),
(1037, 'Traditional publishers with different name', FALSE, 4),
-- Question 1038
(1038, 'Facebook', FALSE, 1),
(1038, 'Amazon Kindle Direct Publishing', TRUE, 2),
(1038, 'Google Docs', FALSE, 3),
(1038, 'Microsoft Word', FALSE, 4),
-- Question 1039
(1039, 'True', TRUE, 1),
(1039, 'False', FALSE, 2),
-- Question 1040
(1040, 'Which path is easiest', FALSE, 1),
(1040, 'Creative control, timeline, financial investment, and goals', TRUE, 2),
(1040, 'What friends recommend', FALSE, 3),
(1040, 'The most popular current trend', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(105, 'What is glossophobia?', 'multiple_choice', 1.00, 1, 'Glossophobia is the technical term for fear of public speaking, affecting many people to varying degrees.'),
(105, 'Which technique is most effective for managing public speaking anxiety?', 'multiple_choice', 1.00, 2, 'Thorough preparation and practice build confidence and reduce anxiety more than any quick fix.'),
(105, 'Public speaking fear is rare and only affects inexperienced speakers.', 'true_false', 1.00, 3, 'False. Many experienced speakers, including professionals, experience some level of speaking anxiety.'),
(105, 'What is the purpose of visualization in overcoming speaking fear?', 'multiple_choice', 1.00, 4, 'Visualizing successful performance builds mental pathways and confidence for actual presentation.'),
(105, 'Which physical technique helps reduce anxiety symptoms before speaking?', 'multiple_choice', 1.00, 5, 'Deep breathing activates the parasympathetic nervous system, reducing heart rate and calming the body.'),
(105, 'Audiences typically notice speaker anxiety more than the speaker realizes.', 'true_false', 1.00, 6, 'False. Research shows audiences notice much less anxiety than speakers feel internally.'),
(105, 'What is the benefit of focusing on your message rather than yourself?', 'multiple_choice', 1.00, 7, 'Shifting focus to your message and audience reduces self-consciousness and improves delivery.'),
(105, 'Which mindset shift helps reduce speaking anxiety?', 'multiple_choice', 1.00, 8, 'Viewing speaking as conversation rather than performance reduces pressure and feels more natural.'),
(105, 'Practicing in the actual presentation space can reduce anxiety.', 'true_false', 1.00, 9, 'True. Familiarity with the environment reduces unknowns that contribute to anxiety.'),
(105, 'What is the most important first step in overcoming public speaking fear?', 'multiple_choice', 1.00, 10, 'Acknowledging and accepting anxiety as normal is the foundation for effective management strategies.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1041
(1041, 'Fear of glosses', FALSE, 1),
(1041, 'Fear of public speaking', TRUE, 2),
(1041, 'Love of languages', FALSE, 3),
(1041, 'Speech disorder', FALSE, 4),
-- Question 1042
(1042, 'Avoiding preparation', FALSE, 1),
(1042, 'Thorough preparation and practice', TRUE, 2),
(1042, 'Memorizing perfectly', FALSE, 3),
(1042, 'Using complex vocabulary', FALSE, 4),
-- Question 1043
(1043, 'True', FALSE, 1),
(1043, 'False', TRUE, 2),
-- Question 1044
(1044, 'To avoid actual practice', FALSE, 1),
(1044, 'Build mental pathways for success', TRUE, 2),
(1044, 'Impress the audience', FALSE, 3),
(1044, 'Replace physical rehearsal', FALSE, 4),
-- Question 1045
(1045, 'Drinking caffeine', FALSE, 1),
(1045, 'Deep breathing exercises', TRUE, 2),
(1045, 'Holding your breath', FALSE, 3),
(1045, 'Rapid shallow breathing', FALSE, 4),
-- Question 1046
(1046, 'True', FALSE, 1),
(1046, 'False', TRUE, 2),
-- Question 1047
(1047, 'Makes speeches longer', FALSE, 1),
(1047, 'Reduces self-consciousness and improves delivery', TRUE, 2),
(1047, 'Eliminates need for preparation', FALSE, 3),
(1047, 'Guarantees audience agreement', FALSE, 4),
-- Question 1048
(1048, 'Thinking it''s a life-or-death situation', FALSE, 1),
(1048, 'Viewing it as conversation rather than performance', TRUE, 2),
(1048, 'Focusing on perfection', FALSE, 3),
(1048, 'Memorizing every word', FALSE, 4),
-- Question 1049
(1049, 'True', TRUE, 1),
(1049, 'False', FALSE, 2),
-- Question 1050
(1050, 'Avoiding speaking opportunities', FALSE, 1),
(1050, 'Acknowledging and accepting anxiety as normal', TRUE, 2),
(1050, 'Pretending you''re not nervous', FALSE, 3),
(1050, 'Using medication only', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(106, 'What is the classic structure for organizing speeches?', 'multiple_choice', 1.00, 1, 'Introduction, body, conclusion provides clear organization that audiences can easily follow.'),
(106, 'Which element is most important in a speech introduction?', 'multiple_choice', 1.00, 2, 'A strong opening hook captures attention and makes audiences want to listen to the rest.'),
(106, 'Speeches should always have exactly three main points in the body.', 'true_false', 1.00, 3, 'False. While three points are common, the number should suit your content and time constraints.'),
(106, 'What is the purpose of transitions in speech structure?', 'multiple_choice', 1.00, 4, 'Transitions connect ideas smoothly, helping audiences follow the logical flow between points.'),
(106, 'Which technique effectively organizes main points in the speech body?', 'multiple_choice', 1.00, 5, 'Logical patterns like chronological, problem-solution, or topical organization aid understanding.'),
(106, 'The conclusion should introduce new information not covered in the body.', 'true_false', 1.00, 6, 'False. Conclusions should summarize and reinforce existing points, not introduce new material.'),
(106, 'What is the "primacy-recency effect" in speech structure?', 'multiple_choice', 1.00, 7, 'Audiences remember first and last points best, so place key messages in these positions.'),
(106, 'Which approach helps estimate speech timing during preparation?', 'multiple_choice', 1.00, 8, 'Practicing aloud with a timer provides realistic timing estimates for proper speech pacing.'),
(106, 'Signposts like "first," "second," and "finally" help guide listeners.', 'true_false', 1.00, 9, 'True. Clear signposts help audiences follow your organizational structure.'),
(106, 'What is the most important consideration for speech structure?', 'multiple_choice', 1.00, 10, 'Clear, logical organization that serves both your message and audience understanding is paramount.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1051
(1051, 'Beginning, climax, end', FALSE, 1),
(1051, 'Introduction, body, conclusion', TRUE, 2),
(1051, 'Hook, facts, summary', FALSE, 3),
(1051, 'Thesis, examples, closing', FALSE, 4),
-- Question 1052
(1052, 'Thanking the audience', FALSE, 1),
(1052, 'Strong opening hook', TRUE, 2),
(1052, 'Listing all your credentials', FALSE, 3),
(1052, 'Apologizing for nervousness', FALSE, 4),
-- Question 1053
(1053, 'True', FALSE, 1),
(1053, 'False', TRUE, 2),
-- Question 1054
(1054, 'Make speeches longer', FALSE, 1),
(1054, 'Connect ideas smoothly and maintain flow', TRUE, 2),
(1054, 'Show off vocabulary', FALSE, 3),
(1054, 'Eliminate the need for organization', FALSE, 4),
-- Question 1055
(1055, 'Random order', FALSE, 1),
(1055, 'Logical patterns like chronological or topical', TRUE, 2),
(1055, 'Alphabetical order', FALSE, 3),
(1055, 'Order of personal preference', FALSE, 4),
-- Question 1056
(1056, 'True', FALSE, 1),
(1056, 'False', TRUE, 2),
-- Question 1057
(1057, 'Memory technique for speakers', FALSE, 1),
(1057, 'Audiences remember first and last points best', TRUE, 2),
(1057, 'The need for primary sources', FALSE, 3),
(1057, 'Recent research on speaking', FALSE, 4),
-- Question 1058
(1058, 'Guessing based on word count', FALSE, 1),
(1058, 'Practicing aloud with a timer', TRUE, 2),
(1058, 'Asking friends to read silently', FALSE, 3),
(1058, 'Using speech-to-text software', FALSE, 4),
-- Question 1059
(1059, 'True', TRUE, 1),
(1059, 'False', FALSE, 2),
-- Question 1060
(1060, 'Complexity to impress audience', FALSE, 1),
(1060, 'Clear, logical organization for audience understanding', TRUE, 2),
(1060, 'Following exact templates', FALSE, 3),
(1060, 'Using the latest speaking trends', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(107, 'What is the most important aspect of vocal delivery for audience comprehension?', 'multiple_choice', 1.00, 1, 'Clear articulation ensures audiences understand your words, which is fundamental to effective communication.'),
(107, 'Which vocal element adds interest and emphasis to your speech?', 'multiple_choice', 1.00, 2, 'Vocal variety in pitch, pace, and volume keeps audiences engaged and emphasizes important points.'),
(107, 'Speaking at a consistent, monotone pace is best for professional presentations.', 'true_false', 1.00, 3, 'False. Monotone delivery can bore audiences; vocal variety maintains interest and engagement.'),
(107, 'What is the purpose of strategic pauses in vocal delivery?', 'multiple_choice', 1.00, 4, 'Pauses emphasize key points, allow processing time, and create dramatic effect in speeches.'),
(107, 'Which breathing technique supports strong vocal projection?', 'multiple_choice', 1.00, 5, 'Diaphragmatic breathing provides adequate breath support for clear, sustained vocal projection.'),
(107, 'Vocal fillers like "um" and "uh" should be completely eliminated from speeches.', 'true_false', 1.00, 6, 'False. While excessive fillers distract, occasional natural pauses are preferable to robotic perfection.'),
(107, 'What is the optimal speaking rate for most presentations?', 'multiple_choice', 1.00, 7, '150-160 words per minute allows comprehension while maintaining energy and audience engagement.'),
(107, 'Which practice improves vocal clarity and articulation?', 'multiple_choice', 1.00, 8, 'Articulation exercises strengthen mouth muscles and improve pronunciation of challenging sounds.'),
(107, 'Volume should remain consistent throughout a speech regardless of content.', 'true_false', 1.00, 9, 'False. Strategic volume changes emphasize important points and maintain audience interest.'),
(107, 'What is the relationship between breathing and vocal control?', 'multiple_choice', 1.00, 10, 'Proper breathing provides the foundation for vocal strength, endurance, and emotional expression.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1061
(1061, 'Speaking quickly', FALSE, 1),
(1061, 'Clear articulation', TRUE, 2),
(1061, 'Low pitch', FALSE, 3),
(1061, 'British accent', FALSE, 4),
-- Question 1062
(1062, 'Monotone delivery', FALSE, 1),
(1062, 'Vocal variety in pitch, pace, and volume', TRUE, 2),
(1062, 'Speaking loudly throughout', FALSE, 3),
(1062, 'Using complex vocabulary', FALSE, 4),
-- Question 1063
(1063, 'True', FALSE, 1),
(1063, 'False', TRUE, 2),
-- Question 1064
(1064, 'Fill empty space', FALSE, 1),
(1064, 'Emphasize points and allow processing time', TRUE, 2),
(1064, 'Make speeches longer', FALSE, 3),
(1064, 'Hide forgotten content', FALSE, 4),
-- Question 1065
(1065, 'Shallow chest breathing', FALSE, 1),
(1065, 'Diaphragmatic breathing', TRUE, 2),
(1065, 'Holding breath', FALSE, 3),
(1065, 'Rapid panting', FALSE, 4),
-- Question 1066
(1066, 'True', FALSE, 1),
(1066, 'False', TRUE, 2),
-- Question 1067
(1067, '100 words per minute', FALSE, 1),
(1067, '150-160 words per minute', TRUE, 2),
(1067, '200 words per minute', FALSE, 3),
(1067, 'As fast as possible', FALSE, 4),
-- Question 1068
(1068, 'Whispering practice', FALSE, 1),
(1068, 'Articulation exercises', TRUE, 2),
(1068, 'Avoiding difficult words', FALSE, 3),
(1068, 'Speaking without moving lips', FALSE, 4),
-- Question 1069
(1069, 'True', FALSE, 1),
(1069, 'False', TRUE, 2),
-- Question 1070
(1070, 'No relationship', FALSE, 1),
(1070, 'Breathing provides foundation for vocal control', TRUE, 2),
(1070, 'Breathing should be avoided while speaking', FALSE, 3),
(1070, 'Only professional singers need breathing techniques', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(108, 'What percentage of communication is estimated to come from non-verbal cues?', 'multiple_choice', 1.00, 1, 'Research suggests 55-93% of communication meaning comes from non-verbal cues like body language.'),
(108, 'Which aspect of body language most strongly conveys confidence?', 'multiple_choice', 1.00, 2, 'Upright posture with shoulders back and head up projects confidence and authority to audiences.'),
(108, 'Eye contact should be maintained with one person throughout the entire speech.', 'true_false', 1.00, 3, 'False. Effective eye contact involves scanning the entire audience, making brief connections with individuals.'),
(108, 'What is the purpose of gestures in public speaking?', 'multiple_choice', 1.00, 4, 'Gestures emphasize points, illustrate concepts, and add energy when they appear natural and purposeful.'),
(108, 'Which facial expression is most important for building audience connection?', 'multiple_choice', 1.00, 5, 'Genuine smiles create warmth and approachability, helping build rapport with audiences.'),
(108, 'Movement around the speaking area should be completely avoided during formal presentations.', 'true_false', 1.00, 6, 'False. Purposeful movement can engage audiences and emphasize transitions between points.'),
(108, 'What does "power posing" refer to in public speaking?', 'multiple_choice', 1.00, 7, 'Expansive, open postures can actually increase confidence and reduce stress before speaking.'),
(108, 'Which habit should speakers avoid for positive body language?', 'multiple_choice', 1.00, 8, 'Fidgeting, pacing randomly, or closed postures can undermine credibility and distract audiences.'),
(108, 'Mirroring audience members'' body language can build rapport.', 'true_false', 1.00, 9, 'True. Subtle mirroring of positive audience behaviors can create unconscious connection.'),
(108, 'What is the key to effective body language in public speaking?', 'multiple_choice', 1.00, 10, 'Authenticity and consistency between verbal and non-verbal messages create credible, engaging delivery.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1071
(1071, '7%', FALSE, 1),
(1071, '55-93%', TRUE, 2),
(1071, '25%', FALSE, 3),
(1071, '100%', FALSE, 4),
-- Question 1072
(1072, 'Slouching', FALSE, 1),
(1072, 'Upright posture with shoulders back', TRUE, 2),
(1072, 'Looking at the floor', FALSE, 3),
(1072, 'Hands in pockets', FALSE, 4),
-- Question 1073
(1073, 'True', FALSE, 1),
(1073, 'False', TRUE, 2),
-- Question 1074
(1074, 'Keep hands busy', FALSE, 1),
(1074, 'Emphasize points and illustrate concepts', TRUE, 2),
(1074, 'Show off jewelry', FALSE, 3),
(1074, 'Follow specific rules exactly', FALSE, 4),
-- Question 1075
(1075, 'Frowning to show seriousness', FALSE, 1),
(1075, 'Genuine smiles', TRUE, 2),
(1075, 'Neutral expression', FALSE, 3),
(1075, 'Raised eyebrows', FALSE, 4),
-- Question 1076
(1076, 'True', FALSE, 1),
(1076, 'False', TRUE, 2),
-- Question 1077
(1077, 'Striking dramatic poses', FALSE, 1),
(1077, 'Expansive, open postures that increase confidence', TRUE, 2),
(1077, 'Imitating powerful people', FALSE, 3),
(1077, 'Weightlifting before speaking', FALSE, 4),
-- Question 1078
(1078, 'Natural gestures', FALSE, 1),
(1078, 'Fidgeting and random pacing', TRUE, 2),
(1078, 'Eye contact', FALSE, 3),
(1078, 'Smiling', FALSE, 4),
-- Question 1079
(1079, 'True', TRUE, 1),
(1079, 'False', FALSE, 2),
-- Question 1080
(1080, 'Perfect technique', FALSE, 1),
(1080, 'Authenticity and consistency with verbal message', TRUE, 2),
(1080, 'Copying famous speakers exactly', FALSE, 3),
(1080, 'Minimal movement', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(109, 'What is the primary purpose of visual aids in presentations?', 'multiple_choice', 1.00, 1, 'Visual aids should enhance understanding, not replace the speaker or serve as presentation notes.'),
(109, 'Which design principle is most important for effective slides?', 'multiple_choice', 1.00, 2, 'Simplicity with minimal text and clear visuals prevents cognitive overload and maintains focus.'),
(109, 'More text on slides is better because it provides detailed information for the audience.', 'true_false', 1.00, 3, 'False. Text-heavy slides distract from the speaker and encourage reading instead of listening.'),
(109, 'What is the "rule of seven" for slide design?', 'multiple_choice', 1.00, 4, 'No more than 7 words per line and 7 lines per slide helps maintain readability and simplicity.'),
(109, 'Which color combination provides the best readability for projected slides?', 'multiple_choice', 1.00, 5, 'High contrast combinations like dark background with light text are most readable in projection.'),
(109, 'Speakers should always face their visual aids rather than the audience.', 'true_false', 1.00, 6, 'False. Speakers should maintain audience connection while briefly referencing visual aids.'),
(109, 'What is the optimal font size for presentation slides?', 'multiple_choice', 1.00, 7, '24-point minimum ensures readability from the back of most rooms while encouraging concise content.'),
(109, 'When should visual aids be distributed to the audience?', 'multiple_choice', 1.00, 8, 'Distribute handouts after presenting to maintain attention on your message during the speech.'),
(109, 'Charts and graphs should always include detailed data tables for accuracy.', 'true_false', 1.00, 9, 'False. Simplified, clear visualizations communicate key trends more effectively than dense data.'),
(109, 'What is the most important consideration when using technology in presentations?', 'multiple_choice', 1.00, 10, 'Having a backup plan ensures you can deliver your message even if technology fails.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1081
(1081, 'Replace the speaker', FALSE, 1),
(1081, 'Enhance understanding and retention', TRUE, 2),
(1081, 'Provide speaker notes', FALSE, 3),
(1081, 'Fill time', FALSE, 4),
-- Question 1082
(1082, 'Complexity', FALSE, 1),
(1082, 'Simplicity with minimal text', TRUE, 2),
(1082, 'Using many fonts', FALSE, 3),
(1082, 'Including all details', FALSE, 4),
-- Question 1083
(1083, 'True', FALSE, 1),
(1083, 'False', TRUE, 2),
-- Question 1084
(1084, '7 colors maximum', FALSE, 1),
(1084, '7 words per line, 7 lines per slide', TRUE, 2),
(1084, '7 slides per minute', FALSE, 3),
(1084, '7 minutes per slide', FALSE, 4),
-- Question 1085
(1085, 'Light yellow on white', FALSE, 1),
(1085, 'Dark background with light text', TRUE, 2),
(1085, 'Red on blue', FALSE, 3),
(1085, 'Pastel colors', FALSE, 4),
-- Question 1086
(1086, 'True', FALSE, 1),
(1086, 'False', TRUE, 2),
-- Question 1087
(1087, '12-point', FALSE, 1),
(1087, '24-point minimum', TRUE, 2),
(1087, '8-point', FALSE, 3),
(1087, '48-point', FALSE, 4),
-- Question 1088
(1088, 'Before you begin', FALSE, 1),
(1088, 'After presenting', TRUE, 2),
(1088, 'During introduction', FALSE, 3),
(1088, 'Never', FALSE, 4),
-- Question 1089
(1089, 'True', FALSE, 1),
(1089, 'False', TRUE, 2),
-- Question 1090
(1090, 'Using the latest technology', FALSE, 1),
(1090, 'Having a backup plan', TRUE, 2),
(1090, 'Complex animations', FALSE, 3),
(1090, 'Wireless clickers', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(110, 'What are the three classical appeals in persuasive speaking?', 'multiple_choice', 1.00, 1, 'Ethos (credibility), pathos (emotion), and logos (logic) form the foundation of persuasive appeals.'),
(110, 'Which element establishes speaker credibility in persuasive speeches?', 'multiple_choice', 1.00, 2, 'Demonstrating expertise, trustworthiness, and goodwill toward the audience builds persuasive credibility.'),
(110, 'Persuasive speeches should avoid emotional appeals to maintain objectivity.', 'true_false', 1.00, 3, 'False. Emotional appeals (pathos) are valid and powerful when balanced with logical arguments.'),
(110, 'What is the most effective way to structure arguments in persuasive speaking?', 'multiple_choice', 1.00, 4, 'Problem-solution structure clearly identifies issues and presents compelling solutions.'),
(110, 'Which technique addresses counterarguments effectively?', 'multiple_choice', 1.00, 5, 'Acknowledging and refuting counterarguments strengthens your position and shows thorough understanding.'),
(110, 'Persuasive speakers should never admit any weaknesses in their position.', 'true_false', 1.00, 6, 'False. Acknowledging reasonable concerns can build trust and make your argument more credible.'),
(110, 'What is the role of evidence in persuasive speaking?', 'multiple_choice', 1.00, 7, 'Credible evidence from reputable sources provides foundation for logical appeals and arguments.'),
(110, 'Which approach builds common ground with resistant audiences?', 'multiple_choice', 1.00, 8, 'Finding shared values and goals creates connection before introducing controversial positions.'),
(110, 'Call-to-action statements should be vague to avoid pressuring the audience.', 'true_false', 1.00, 9, 'False. Clear, specific calls to action give audiences concrete steps to implement your message.'),
(110, 'What is the most important factor in persuasive speaking success?', 'multiple_choice', 1.00, 10, 'Understanding audience values, beliefs, and concerns allows tailored, effective persuasion.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1091
(1091, 'Beginning, middle, end', FALSE, 1),
(1091, 'Ethos, pathos, logos', TRUE, 2),
(1091, 'Facts, opinions, stories', FALSE, 3),
(1091, 'Introduction, arguments, conclusion', FALSE, 4),
-- Question 1092
(1092, 'Loud voice', FALSE, 1),
(1092, 'Expertise, trustworthiness, and goodwill', TRUE, 2),
(1092, 'Complex vocabulary', FALSE, 3),
(1092, 'Formal clothing', FALSE, 4),
-- Question 1093
(1093, 'True', FALSE, 1),
(1093, 'False', TRUE, 2),
-- Question 1094
(1094, 'Chronological order', FALSE, 1),
(1094, 'Problem-solution structure', TRUE, 2),
(1094, 'Random order', FALSE, 3),
(1094, 'Alphabetical order', FALSE, 4),
-- Question 1095
(1095, 'Ignoring them', FALSE, 1),
(1095, 'Acknowledging and refuting them', TRUE, 2),
(1095, 'Making fun of opposing views', FALSE, 3),
(1095, 'Changing the subject', FALSE, 4),
-- Question 1096
(1096, 'True', FALSE, 1),
(1096, 'False', TRUE, 2),
-- Question 1097
(1097, 'Make speeches longer', FALSE, 1),
(1097, 'Provide foundation for logical appeals', TRUE, 2),
(1097, 'Impress with statistics', FALSE, 3),
(1097, 'Replace emotional appeals', FALSE, 4),
-- Question 1098
(1098, 'Attacking their beliefs', FALSE, 1),
(1098, 'Finding shared values and goals', TRUE, 2),
(1098, 'Speaking louder', FALSE, 3),
(1098, 'Using technical jargon', FALSE, 4),
-- Question 1099
(1099, 'True', FALSE, 1),
(1099, 'False', TRUE, 2),
-- Question 1100
(1100, 'Perfect logic', FALSE, 1),
(1100, 'Understanding audience values and concerns', TRUE, 2),
(1100, 'Speaking confidently', FALSE, 3),
(1100, 'Using many statistics', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(111, 'What is the primary goal in impromptu speaking?', 'multiple_choice', 1.00, 1, 'Organizing thoughts quickly to deliver a coherent, brief response is more important than perfection.'),
(111, 'Which structure works well for organizing impromptu responses?', 'multiple_choice', 1.00, 2, 'Past-Present-Future or Point-Reason-Example structure provides quick, logical organization.'),
(111, 'Impromptu speakers should avoid pausing because it reveals uncertainty.', 'true_false', 1.00, 3, 'False. Brief pauses to gather thoughts appear thoughtful and are preferable to rushed filler words.'),
(111, 'What is the most effective use of the first 10-15 seconds in impromptu speaking?', 'multiple_choice', 1.00, 4, 'Use opening seconds to restate the question and buy time to organize your main points.'),
(111, 'Which mindset helps reduce anxiety in impromptu situations?', 'multiple_choice', 1.00, 5, 'Viewing impromptu speaking as conversation rather than performance reduces pressure.'),
(111, 'Impromptu speeches should always include personal stories for authenticity.', 'true_false', 1.00, 6, 'False. While stories can be effective, relevant examples and logical points also work well.'),
(111, 'What is the benefit of having "go-to" structures memorized for impromptu speaking?', 'multiple_choice', 1.00, 7, 'Familiar structures provide mental templates for quick organization under pressure.'),
(111, 'Which technique helps when you draw a complete blank?', 'multiple_choice', 1.00, 8, 'Restating the question and relating it to broader principles buys time and creates relevance.'),
(111, 'Practice impromptu speaking cannot improve natural ability.', 'true_false', 1.00, 9, 'False. Regular practice significantly improves impromptu speaking skills and confidence.'),
(111, 'What is the optimal length for most impromptu responses?', 'multiple_choice', 1.00, 10, '1-3 minutes allows development of 2-3 main points without losing audience interest.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1101
(1101, 'Perfect grammar', FALSE, 1),
(1101, 'Quick organization for coherent response', TRUE, 2),
(1101, 'Using complex vocabulary', FALSE, 3),
(1101, 'Filling all available time', FALSE, 4),
-- Question 1102
(1102, 'Stream of consciousness', FALSE, 1),
(1102, 'Past-Present-Future or Point-Reason-Example', TRUE, 2),
(1102, 'Alphabetical order', FALSE, 3),
(1102, 'Random thoughts', FALSE, 4),
-- Question 1103
(1103, 'True', FALSE, 1),
(1103, 'False', TRUE, 2),
-- Question 1104
(1104, 'Answer immediately', FALSE, 1),
(1104, 'Restate question and organize points', TRUE, 2),
(1104, 'Tell a joke', FALSE, 3),
(1104, 'Apologize for lack of preparation', FALSE, 4),
-- Question 1105
(1105, 'Pretending you''re an expert', FALSE, 1),
(1105, 'Viewing it as conversation', TRUE, 2),
(1105, 'Memorizing responses', FALSE, 3),
(1105, 'Avoiding eye contact', FALSE, 4),
-- Question 1106
(1106, 'True', FALSE, 1),
(1106, 'False', TRUE, 2),
-- Question 1107
(1107, 'Makes you sound rehearsed', FALSE, 1),
(1107, 'Provides mental templates for quick organization', TRUE, 2),
(1107, 'Eliminates need for thinking', FALSE, 3),
(1107, 'Only works for formal speeches', FALSE, 4),
-- Question 1108
(1108, 'Saying "I don''t know"', FALSE, 1),
(1108, 'Restating question and relating to broader principles', TRUE, 2),
(1108, 'Changing the subject completely', FALSE, 3),
(1108, 'Asking someone else to answer', FALSE, 4),
-- Question 1109
(1109, 'True', FALSE, 1),
(1109, 'False', TRUE, 2),
-- Question 1110
(1110, '30 seconds', FALSE, 1),
(1110, '1-3 minutes', TRUE, 2),
(1110, '10 minutes', FALSE, 3),
(1110, 'As long as possible', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(112, 'What distinguishes professional presentations from casual speaking?', 'multiple_choice', 1.00, 1, 'Professional presentations require thorough preparation, clear structure, and audience-focused content.'),
(112, 'Which element is most critical for business presentations?', 'multiple_choice', 1.00, 2, 'Clear purpose and actionable takeaways ensure presentations deliver value to professional audiences.'),
(112, 'Professional presentations should always include humor to build rapport.', 'true_false', 1.00, 3, 'False. While appropriate humor can help, forced or inappropriate humor can undermine professionalism.'),
(112, 'What is the most effective approach for handling Q&A sessions?', 'multiple_choice', 1.00, 4, 'Anticipating likely questions and preparing responses demonstrates expertise and preparation.'),
(112, 'Which practice demonstrates professional credibility in presentations?', 'multiple_choice', 1.00, 5, 'Citing credible sources and data supports arguments and establishes expertise with skeptical audiences.'),
(112, 'Reading directly from slides or notes is acceptable in professional settings.', 'true_false', 1.00, 6, 'False. Reading slides verbatim appears unprepared and disengages professional audiences.'),
(112, 'What is the purpose of an executive summary in business presentations?', 'multiple_choice', 1.00, 7, 'Executive summaries provide busy professionals with key information quickly and efficiently.'),
(112, 'Which time management practice is essential for professional presentations?', 'multiple_choice', 1.00, 8, 'Finishing early respects audience time and allows for meaningful discussion and Q&A.'),
(112, 'Professional presentations should avoid acknowledging limitations or uncertainties.', 'true_false', 1.00, 9, 'False. Acknowledging what you don''t know can build trust when followed by how you''ll find answers.'),
(112, 'What is the key to effective team presentations?', 'multiple_choice', 1.00, 10, 'Seamless transitions, consistent messaging, and coordinated delivery create professional team presentations.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1111
(1111, 'Using business jargon', FALSE, 1),
(1111, 'Thorough preparation and audience focus', TRUE, 2),
(1111, 'Formal clothing only', FALSE, 3),
(1111, 'Longer duration', FALSE, 4),
-- Question 1112
(1112, 'Entertaining stories', FALSE, 1),
(1112, 'Clear purpose and actionable takeaways', TRUE, 2),
(1112, 'Complex data', FALSE, 3),
(1112, 'Many slides', FALSE, 4),
-- Question 1113
(1113, 'True', FALSE, 1),
(1113, 'False', TRUE, 2),
-- Question 1114
(1114, 'Avoiding difficult questions', FALSE, 1),
(1114, 'Anticipating questions and preparing responses', TRUE, 2),
(1114, 'Asking audience to save questions', FALSE, 3),
(1114, 'Giving vague answers', FALSE, 4),
-- Question 1115
(1115, 'Speaking confidently', FALSE, 1),
(1115, 'Citing credible sources and data', TRUE, 2),
(1115, 'Using complex vocabulary', FALSE, 3),
(1115, 'Wearing expensive clothing', FALSE, 4),
-- Question 1116
(1116, 'True', FALSE, 1),
(1116, 'False', TRUE, 2),
-- Question 1117
(1117, 'Make presentations longer', FALSE, 1),
(1117, 'Provide key information quickly for busy professionals', TRUE, 2),
(1117, 'Replace the main presentation', FALSE, 3),
(1117, 'Show off writing skills', FALSE, 4),
-- Question 1118
(1118, 'Using all available time', FALSE, 1),
(1118, 'Finishing early to allow for discussion', TRUE, 2),
(1118, 'Going overtime to cover everything', FALSE, 3),
(1118, 'Letting audience determine length', FALSE, 4),
-- Question 1119
(1119, 'True', FALSE, 1),
(1119, 'False', TRUE, 2),
-- Question 1120
(1120, 'Matching clothing', FALSE, 1),
(1120, 'Seamless transitions and consistent messaging', TRUE, 2),
(1120, 'Having the most senior person speak most', FALSE, 3),
(1120, 'Using the same slide template', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(113, 'What is the primary difference between leadership and management?', 'multiple_choice', 1.00, 1, 'Leadership focuses on influencing and inspiring people, while management focuses on processes and systems.'),
(113, 'Which leadership style emphasizes collaboration and team input?', 'multiple_choice', 1.00, 2, 'Democratic leadership involves team members in decision-making while maintaining final authority.'),
(113, 'Leaders are born with innate abilities and cannot be developed.', 'true_false', 1.00, 3, 'False. Leadership skills can be learned and developed through practice, reflection, and training.'),
(113, 'What is "servant leadership"?', 'multiple_choice', 1.00, 4, 'Servant leaders prioritize serving their team members'' needs and development above their own interests.'),
(113, 'Which quality is most fundamental to effective leadership?', 'multiple_choice', 1.00, 5, 'Integrity and trustworthiness form the foundation for all other leadership qualities and influence.'),
(113, 'Leadership only applies to people in formal authority positions.', 'true_false', 1.00, 6, 'False. Leadership can be demonstrated at any level regardless of formal position or title.'),
(113, 'What is emotional intelligence in leadership?', 'multiple_choice', 1.00, 7, 'The ability to recognize, understand, and manage emotions in oneself and others for effective relationships.'),
(113, 'Which practice demonstrates authentic leadership?', 'multiple_choice', 1.00, 8, 'Consistency between words and actions builds credibility and trust with team members.'),
(113, 'Transformational leadership focuses only on achieving immediate tasks.', 'true_false', 1.00, 9, 'False. Transformational leadership inspires change and growth in both organization and individuals.'),
(113, 'What is the most important aspect of leadership development?', 'multiple_choice', 1.00, 10, 'Self-awareness enables leaders to understand their strengths, weaknesses, and impact on others.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1121
(1121, 'Leadership pays more', FALSE, 1),
(1121, 'Leadership influences people, management handles processes', TRUE, 2),
(1121, 'Management is more important', FALSE, 3),
(1121, 'They are the same thing', FALSE, 4),
-- Question 1122
(1122, 'Autocratic leadership', FALSE, 1),
(1122, 'Democratic leadership', TRUE, 2),
(1122, 'Laissez-faire leadership', FALSE, 3),
(1122, 'Bureaucratic leadership', FALSE, 4),
-- Question 1123
(1123, 'True', FALSE, 1),
(1123, 'False', TRUE, 2),
-- Question 1124
(1124, 'Leading servants', FALSE, 1),
(1124, 'Prioritizing team needs and development', TRUE, 2),
(1124, 'Following all team suggestions', FALSE, 3),
(1124, 'Avoiding decision-making', FALSE, 4),
-- Question 1125
(1125, 'Charisma', FALSE, 1),
(1125, 'Integrity and trustworthiness', TRUE, 2),
(1125, 'Intelligence', FALSE, 3),
(1125, 'Confidence', FALSE, 4),
-- Question 1126
(1126, 'True', FALSE, 1),
(1126, 'False', TRUE, 2),
-- Question 1127
(1127, 'High IQ', FALSE, 1),
(1127, 'Recognizing and managing emotions in self and others', TRUE, 2),
(1127, 'Being emotional', FALSE, 3),
(1127, 'Avoiding emotions at work', FALSE, 4),
-- Question 1128
(1128, 'Saying what people want to hear', FALSE, 1),
(1128, 'Consistency between words and actions', TRUE, 2),
(1128, 'Always being positive', FALSE, 3),
(1128, 'Hiding mistakes', FALSE, 4),
-- Question 1129
(1129, 'True', FALSE, 1),
(1129, 'False', TRUE, 2),
-- Question 1130
(1130, 'Reading leadership books', FALSE, 1),
(1130, 'Self-awareness of strengths and weaknesses', TRUE, 2),
(1130, 'Attending conferences', FALSE, 3),
(1130, 'Managing large teams', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(114, 'What is self-awareness in leadership context?', 'multiple_choice', 1.00, 1, 'Understanding your emotions, strengths, weaknesses, values, and impact on others.'),
(114, 'Which tool helps identify personal leadership blind spots?', 'multiple_choice', 1.00, 2, '360-degree feedback provides perspectives from superiors, peers, and subordinates.'),
(114, 'Self-aware leaders never make mistakes because they anticipate everything.', 'true_false', 1.00, 3, 'False. Self-aware leaders recognize their fallibility and learn from mistakes.'),
(114, 'What is the benefit of understanding your leadership values?', 'multiple_choice', 1.00, 4, 'Clear values guide consistent decision-making and help build authentic leadership identity.'),
(114, 'Which practice enhances self-awareness?', 'multiple_choice', 1.00, 5, 'Regular reflection on experiences, decisions, and interactions reveals patterns and growth areas.'),
(114, 'Feedback should only be sought from supervisors to maintain authority.', 'true_false', 1.00, 6, 'False. Valuable feedback comes from all levels - supervisors, peers, and team members.'),
(114, 'What does "emotional triggers" refer to in self-awareness?', 'multiple_choice', 1.00, 7, 'Situations or behaviors that provoke strong emotional reactions requiring self-management.'),
(114, 'Which mindset supports self-awareness development?', 'multiple_choice', 1.00, 8, 'Growth mindset views abilities as developable through effort and learning from challenges.'),
(114, 'Self-awareness is a fixed trait that cannot be improved over time.', 'true_false', 1.00, 9, 'False. Self-awareness can be developed through practice, feedback, and reflection.'),
(114, 'What is the relationship between self-awareness and leadership effectiveness?', 'multiple_choice', 1.00, 10, 'Self-awareness enables better self-management and understanding of others, improving leadership impact.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1131
(1131, 'Knowing everything', FALSE, 1),
(1131, 'Understanding emotions, strengths, weaknesses, and impact', TRUE, 2),
(1131, 'Always being confident', FALSE, 3),
(1131, 'Putting yourself first', FALSE, 4),
-- Question 1132
(1132, 'Personality tests only', FALSE, 1),
(1132, '360-degree feedback', TRUE, 2),
(1132, 'Ignoring criticism', FALSE, 3),
(1132, 'Self-praise', FALSE, 4),
-- Question 1133
(1133, 'True', FALSE, 1),
(1133, 'False', TRUE, 2),
-- Question 1134
(1134, 'Makes decisions easier', FALSE, 1),
(1134, 'Guides consistent decision-making and authentic leadership', TRUE, 2),
(1134, 'Impresses others', FALSE, 3),
(1134, 'Eliminates need for feedback', FALSE, 4),
-- Question 1135
(1135, 'Avoiding reflection', FALSE, 1),
(1135, 'Regular reflection on experiences and decisions', TRUE, 2),
(1135, 'Always trusting first instincts', FALSE, 3),
(1135, 'Ignoring past mistakes', FALSE, 4),
-- Question 1136
(1136, 'True', FALSE, 1),
(1136, 'False', TRUE, 2),
-- Question 1137
(1137, 'Weapons for emotional manipulation', FALSE, 1),
(1137, 'Situations that provoke strong emotional reactions', TRUE, 2),
(1137, 'Positive emotional responses', FALSE, 3),
(1137, 'Automatic leadership responses', FALSE, 4),
-- Question 1138
(1138, 'Fixed mindset', FALSE, 1),
(1138, 'Growth mindset', TRUE, 2),
(1138, 'Defensive mindset', FALSE, 3),
(1138, 'Competitive mindset', FALSE, 4),
-- Question 1139
(1139, 'True', FALSE, 1),
(1139, 'False', TRUE, 2),
-- Question 1140
(1140, 'No relationship', FALSE, 1),
(1140, 'Enables better self-management and understanding of others', TRUE, 2),
(1140, 'Makes leaders less decisive', FALSE, 3),
(1140, 'Only matters for emotional leaders', FALSE, 4);






INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(115, 'What is active listening in leadership communication?', 'multiple_choice', 1.00, 1, 'Fully concentrating, understanding, and responding to show genuine engagement with the speaker.'),
(115, 'Which communication style is most effective for leaders?', 'multiple_choice', 1.00, 2, 'Assertive communication respects both self and others while clearly expressing needs and boundaries.'),
(115, 'Leaders should always have immediate answers to team questions.', 'true_false', 1.00, 3, 'False. Effective leaders sometimes say "I don''t know" and commit to finding answers.'),
(115, 'What is the purpose of regular team communication?', 'multiple_choice', 1.00, 4, 'Consistent communication maintains alignment, builds trust, and prevents misunderstandings.'),
(115, 'Which technique improves message clarity?', 'multiple_choice', 1.00, 5, 'Checking for understanding ensures messages are received as intended and prevents miscommunication.'),
(115, 'Non-verbal communication has minimal impact on leadership effectiveness.', 'true_false', 1.00, 6, 'False. Body language, tone, and facial expressions significantly influence message reception.'),
(115, 'What is "strategic silence" in leadership communication?', 'multiple_choice', 1.00, 7, 'Purposeful pauses that allow thinking time, emphasize points, or encourage others to speak.'),
(115, 'Which approach builds psychological safety in team communication?', 'multiple_choice', 1.00, 8, 'Encouraging diverse opinions without judgment fosters open communication and innovation.'),
(115, 'Leaders should avoid repeating key messages to prevent sounding repetitive.', 'true_false', 1.00, 9, 'False. Repetition with variation helps ensure important messages are understood and remembered.'),
(115, 'What is the most important aspect of crisis communication?', 'multiple_choice', 1.00, 10, 'Timely, transparent information delivery maintains trust and reduces uncertainty during crises.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1141
(1141, 'Hearing words', FALSE, 1),
(1141, 'Fully concentrating, understanding, and responding', TRUE, 2),
(1141, 'Waiting to talk', FALSE, 3),
(1141, 'Taking detailed notes', FALSE, 4),
-- Question 1142
(1142, 'Aggressive communication', FALSE, 1),
(1142, 'Assertive communication', TRUE, 2),
(1142, 'Passive communication', FALSE, 3),
(1142, 'Passive-aggressive communication', FALSE, 4),
-- Question 1143
(1143, 'True', FALSE, 1),
(1143, 'False', TRUE, 2),
-- Question 1144
(1144, 'Fill time', FALSE, 1),
(1144, 'Maintain alignment and build trust', TRUE, 2),
(1144, 'Show authority', FALSE, 3),
(1144, 'Eliminate all questions', FALSE, 4),
-- Question 1145
(1145, 'Using complex vocabulary', FALSE, 1),
(1145, 'Checking for understanding', TRUE, 2),
(1145, 'Speaking quickly', FALSE, 3),
(1145, 'Avoiding repetition', FALSE, 4),
-- Question 1146
(1146, 'True', FALSE, 1),
(1146, 'False', TRUE, 2),
-- Question 1147
(1147, 'Avoiding difficult conversations', FALSE, 1),
(1147, 'Purposeful pauses for thinking and emphasis', TRUE, 2),
(1147, 'Not communicating', FALSE, 3),
(1147, 'Ignoring questions', FALSE, 4),
-- Question 1148
(1148, 'Criticizing wrong ideas', FALSE, 1),
(1148, 'Encouraging diverse opinions without judgment', TRUE, 2),
(1148, 'Only positive feedback', FALSE, 3),
(1148, 'Avoiding conflict', FALSE, 4),
-- Question 1149
(1149, 'True', FALSE, 1),
(1149, 'False', TRUE, 2),
-- Question 1150
(1150, 'Perfect information', FALSE, 1),
(1150, 'Timely, transparent information delivery', TRUE, 2),
(1150, 'Withholding bad news', FALSE, 3),
(1150, 'Optimistic predictions only', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(116, 'What is the primary goal of team building?', 'multiple_choice', 1.00, 1, 'Developing trust, collaboration, and shared commitment to achieve collective goals effectively.'),
(116, 'Which factor is most critical for high-performing teams?', 'multiple_choice', 1.00, 2, 'Psychological safety enables risk-taking, innovation, and honest communication within teams.'),
(116, 'Team building activities should only occur during off-site retreats.', 'true_false', 1.00, 3, 'False. Effective team building integrates into daily work through consistent leadership practices.'),
(116, 'What is the leader''s role in establishing team norms?', 'multiple_choice', 1.00, 4, 'Facilitating discussion to establish shared expectations for behavior and collaboration.'),
(116, 'Which approach develops individual team members effectively?', 'multiple_choice', 1.00, 5, 'Understanding individual strengths and providing tailored growth opportunities.'),
(116, 'Conflict within teams should always be avoided for harmony.', 'true_false', 1.00, 6, 'False. Constructive conflict can lead to better decisions and innovation when managed properly.'),
(116, 'What is "team identity" and why is it important?', 'multiple_choice', 1.00, 7, 'Shared sense of purpose and belonging that increases commitment and collaboration.'),
(116, 'Which practice promotes inclusive team environments?', 'multiple_choice', 1.00, 8, 'Valuing diverse perspectives and ensuring all voices are heard in decision-making.'),
(116, 'Team recognition should only celebrate collective achievements.', 'true_false', 1.00, 9, 'False. Both individual contributions and team successes deserve recognition.'),
(116, 'What is the most important leadership behavior for sustaining team performance?', 'multiple_choice', 1.00, 10, 'Consistent demonstration of trust in team capabilities and commitment to their success.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1151
(1151, 'Making friends', FALSE, 1),
(1151, 'Developing trust and collaboration for collective goals', TRUE, 2),
(1151, 'Having fun together', FALSE, 3),
(1151, 'Eliminating conflict', FALSE, 4),
-- Question 1152
(1152, 'Similar personalities', FALSE, 1),
(1152, 'Psychological safety', TRUE, 2),
(1152, 'Identical skills', FALSE, 3),
(1152, 'Large team size', FALSE, 4),
-- Question 1153
(1153, 'True', FALSE, 1),
(1153, 'False', TRUE, 2),
-- Question 1154
(1154, 'Dictating all rules', FALSE, 1),
(1154, 'Facilitating discussion for shared expectations', TRUE, 2),
(1154, 'Letting teams figure it out alone', FALSE, 3),
(1154, 'Ignoring behavior issues', FALSE, 4),
-- Question 1155
(1155, 'Treating everyone identically', FALSE, 1),
(1155, 'Understanding individual strengths and providing growth opportunities', TRUE, 2),
(1155, 'Focusing only on high performers', FALSE, 3),
(1155, 'Standardized training only', FALSE, 4),
-- Question 1156
(1156, 'True', FALSE, 1),
(1156, 'False', TRUE, 2),
-- Question 1157
(1157, 'Team uniforms', FALSE, 1),
(1157, 'Shared sense of purpose and belonging', TRUE, 2),
(1157, 'Matching skills', FALSE, 3),
(1157, 'Same work schedule', FALSE, 4),
-- Question 1158
(1158, 'Requiring consensus on everything', FALSE, 1),
(1158, 'Valuing diverse perspectives and ensuring all voices are heard', TRUE, 2),
(1158, 'Avoiding difficult topics', FALSE, 3),
(1158, 'Social events only', FALSE, 4),
-- Question 1159
(1159, 'True', FALSE, 1),
(1159, 'False', TRUE, 2),
-- Question 1160
(1160, 'Micromanagement', FALSE, 1),
(1160, 'Consistent demonstration of trust in team capabilities', TRUE, 2),
(1160, 'Frequent reorganization', FALSE, 3),
(1160, 'Individual competition', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(117, 'What is the primary characteristic of effective decision-making?', 'multiple_choice', 1.00, 1, 'Balancing speed with thorough consideration of relevant information and potential impacts.'),
(117, 'Which decision-making approach involves team input while maintaining leader authority?', 'multiple_choice', 1.00, 2, 'Consultative decision-making gathers input from others while the leader makes the final decision.'),
(117, 'Good leaders always make quick decisions to demonstrate confidence.', 'true_false', 1.00, 3, 'False. Important decisions often benefit from careful consideration and gathering relevant information.'),
(117, 'What is "analysis paralysis" in decision-making?', 'multiple_choice', 1.00, 4, 'Over-analyzing information to the point where decision-making becomes stalled or ineffective.'),
(117, 'Which technique improves complex decision-making?', 'multiple_choice', 1.00, 5, 'Breaking complex decisions into smaller, manageable parts with clear evaluation criteria.'),
(117, 'All decisions should be made based solely on quantitative data.', 'true_false', 1.00, 6, 'False. Qualitative factors, values, and experience also inform good decisions.'),
(117, 'What is the purpose of considering multiple alternatives in decision-making?', 'multiple_choice', 1.00, 7, 'Exploring options increases the likelihood of finding optimal solutions and reduces bias.'),
(117, 'Which factor should leaders consider when deciding decision-making approach?', 'multiple_choice', 1.00, 8, 'The importance of the decision, need for commitment, and available time determine the best approach.'),
(117, 'Once a decision is made, leaders should never revisit it.', 'true_false', 1.00, 9, 'False. Effective leaders remain open to new information and adjust decisions when warranted.'),
(117, 'What is the most important aspect of communicating decisions?', 'multiple_choice', 1.00, 10, 'Clearly explaining the rationale and expected outcomes builds understanding and buy-in.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1161
(1161, 'Speed only', FALSE, 1),
(1161, 'Balancing speed with thorough consideration', TRUE, 2),
(1161, 'Always getting consensus', FALSE, 3),
(1161, 'Avoiding risks', FALSE, 4),
-- Question 1162
(1162, 'Autocratic decision-making', FALSE, 1),
(1162, 'Consultative decision-making', TRUE, 2),
(1162, 'Consensus decision-making', FALSE, 3),
(1162, 'Delegated decision-making', FALSE, 4),
-- Question 1163
(1163, 'True', FALSE, 1),
(1163, 'False', TRUE, 2),
-- Question 1164
(1164, 'Thorough analysis', FALSE, 1),
(1164, 'Over-analyzing to the point of stalled decisions', TRUE, 2),
(1164, 'Quick decision-making', FALSE, 3),
(1164, 'Team-based decisions', FALSE, 4),
-- Question 1165
(1165, 'Gut feelings only', FALSE, 1),
(1165, 'Breaking complex decisions into smaller parts', TRUE, 2),
(1165, 'Avoiding complex decisions', FALSE, 3),
(1165, 'Asking others to decide', FALSE, 4),
-- Question 1166
(1166, 'True', FALSE, 1),
(1166, 'False', TRUE, 2),
-- Question 1167
(1167, 'Waste time', FALSE, 1),
(1167, 'Increase likelihood of optimal solutions and reduce bias', TRUE, 2),
(1167, 'Confuse the issue', FALSE, 3),
(1167, 'Delay decision-making', FALSE, 4),
-- Question 1168
(1168, 'Personal preference', FALSE, 1),
(1168, 'Decision importance, need for commitment, and available time', TRUE, 2),
(1168, 'What worked last time', FALSE, 3),
(1168, 'Team size only', FALSE, 4),
-- Question 1169
(1169, 'True', FALSE, 1),
(1169, 'False', TRUE, 2),
-- Question 1170
(1170, 'The decision itself', FALSE, 1),
(1170, 'Clearly explaining rationale and expected outcomes', TRUE, 2),
(1170, 'Who made the decision', FALSE, 3),
(1170, 'Positive aspects only', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(118, 'What is the leader''s primary role in conflict resolution?', 'multiple_choice', 1.00, 1, 'Facilitating constructive dialogue and helping parties find mutually acceptable solutions.'),
(118, 'Which conflict resolution approach seeks win-win outcomes?', 'multiple_choice', 1.00, 2, 'Collaborating addresses all parties'' concerns and finds solutions satisfying everyone involved.'),
(118, 'All workplace conflict is negative and should be eliminated.', 'true_false', 1.00, 3, 'False. Constructive conflict can spark innovation and improve decision-making when managed well.'),
(118, 'What is the first step in effective conflict resolution?', 'multiple_choice', 1.00, 4, 'Understanding all perspectives by listening to each party separately before bringing them together.'),
(118, 'Which technique helps de-escalate emotional conflicts?', 'multiple_choice', 1.00, 5, 'Focusing on interests rather than positions helps find common ground and creative solutions.'),
(118, 'Leaders should always take sides in team conflicts to resolve them quickly.', 'true_false', 1.00, 6, 'False. Remaining neutral and facilitating dialogue is more effective than taking sides.'),
(118, 'What is "active listening" in conflict resolution?', 'multiple_choice', 1.00, 7, 'Demonstrating understanding by paraphrasing and validating emotions without necessarily agreeing.'),
(118, 'When should leaders intervene in team conflicts?', 'multiple_choice', 1.00, 8, 'When conflicts affect productivity, team dynamics, or when parties cannot resolve themselves.'),
(118, 'Conflict resolution should always result in complete agreement between parties.', 'true_false', 1.00, 9, 'False. Sometimes respectful disagreement with clear protocols for moving forward is the best outcome.'),
(118, 'What is the most important outcome of effective conflict resolution?', 'multiple_choice', 1.00, 10, 'Preserving relationships while addressing issues enables continued collaboration and trust.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1171
(1171, 'Taking sides', FALSE, 1),
(1171, 'Facilitating constructive dialogue and solutions', TRUE, 2),
(1171, 'Avoiding conflict', FALSE, 3),
(1171, 'Dictating solutions', FALSE, 4),
-- Question 1172
(1172, 'Avoiding', FALSE, 1),
(1172, 'Collaborating', TRUE, 2),
(1172, 'Competing', FALSE, 3),
(1172, 'Accommodating', FALSE, 4),
-- Question 1173
(1173, 'True', FALSE, 1),
(1173, 'False', TRUE, 2),
-- Question 1174
(1174, 'Imposing solution', FALSE, 1),
(1174, 'Understanding all perspectives separately', TRUE, 2),
(1174, 'Ignoring the conflict', FALSE, 3),
(1174, 'Punishing those involved', FALSE, 4),
-- Question 1175
(1175, 'Taking sides', FALSE, 1),
(1175, 'Focusing on interests rather than positions', TRUE, 2),
(1175, 'Avoiding emotions', FALSE, 3),
(1175, 'Threatening consequences', FALSE, 4),
-- Question 1176
(1176, 'True', FALSE, 1),
(1176, 'False', TRUE, 2),
-- Question 1177
(1177, 'Agreeing with everyone', FALSE, 1),
(1177, 'Demonstrating understanding through paraphrasing and validation', TRUE, 2),
(1177, 'Taking detailed notes', FALSE, 3),
(1177, 'Interrupting to clarify', FALSE, 4),
-- Question 1178
(1178, 'Immediately', FALSE, 1),
(1178, 'When affecting productivity or team dynamics', TRUE, 2),
(1178, 'Never - let teams handle everything', FALSE, 3),
(1178, 'Only for serious violations', FALSE, 4),
-- Question 1179
(1179, 'True', FALSE, 1),
(1179, 'False', TRUE, 2),
-- Question 1180
(1180, 'Proving who was right', FALSE, 1),
(1180, 'Preserving relationships while addressing issues', TRUE, 2),
(1180, 'Eliminating future conflicts', FALSE, 3),
(1180, 'Establishing authority', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(119, 'What is the leader''s primary role in organizational change?', 'multiple_choice', 1.00, 1, 'Communicating the vision, managing resistance, and supporting the team through transition.'),
(119, 'Which change management model involves "unfreezing, changing, refreezing"?', 'multiple_choice', 1.00, 2, 'Lewin''s Change Model describes preparing for change, implementing, and stabilizing new状态.'),
(119, 'Resistance to change always indicates poor attitude or performance.', 'true_false', 1.00, 3, 'False. Resistance often stems from legitimate concerns, fear, or lack of understanding.'),
(119, 'What is the most important communication practice during change?', 'multiple_choice', 1.00, 4, 'Frequent, transparent communication about the change, reasons, and impacts reduces uncertainty.'),
(119, 'Which approach helps overcome resistance to change?', 'multiple_choice', 1.00, 5, 'Involving people in planning and addressing concerns builds ownership and reduces resistance.'),
(119, 'Change should be implemented quickly to minimize disruption.', 'true_false', 1.00, 6, 'False. Pacing change appropriately allows for adjustment and reduces overwhelm.'),
(119, 'What is "change fatigue"?', 'multiple_choice', 1.00, 7, 'Exhaustion and decreased effectiveness from experiencing too many changes in quick succession.'),
(119, 'Which leadership behavior supports successful change implementation?', 'multiple_choice', 1.00, 8, 'Modeling the desired changes and maintaining optimism during challenges.'),
(119, 'Celebrating small wins during change is unnecessary and distracting.', 'true_false', 1.00, 9, 'False. Recognizing progress maintains momentum and morale during extended change processes.'),
(119, 'What is the most critical factor for sustainable change?', 'multiple_choice', 1.00, 10, 'Building capability and reinforcing new behaviors until they become organizational habits.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1181
(1181, 'Implementing changes alone', FALSE, 1),
(1181, 'Communicating vision and supporting team through transition', TRUE, 2),
(1181, 'Avoiding resistance', FALSE, 3),
(1181, 'Focusing only on results', FALSE, 4),
-- Question 1182
(1182, 'Kotter''s 8-Step Model', FALSE, 1),
(1182, 'Lewin''s Change Model', TRUE, 2),
(1182, 'ADKAR Model', FALSE, 3),
(1182, 'McKinsey 7-S Model', FALSE, 4),
-- Question 1183
(1183, 'True', FALSE, 1),
(1183, 'False', TRUE, 2),
-- Question 1184
(1184, 'Minimal communication to avoid anxiety', FALSE, 1),
(1184, 'Frequent, transparent communication about change and impacts', TRUE, 2),
(1184, 'Only positive information', FALSE, 3),
(1184, 'Communication only at beginning and end', FALSE, 4),
-- Question 1185
(1185, 'Ignoring resistance', FALSE, 1),
(1185, 'Involving people in planning and addressing concerns', TRUE, 2),
(1185, 'Threatening consequences', FALSE, 3),
(1185, 'Implementing change secretly', FALSE, 4),
-- Question 1186
(1186, 'True', FALSE, 1),
(1186, 'False', TRUE, 2),
-- Question 1187
(1187, 'Energy for change', FALSE, 1),
(1187, 'Exhaustion from too many changes', TRUE, 2),
(1187, 'Resistance to all change', FALSE, 3),
(1187, 'Adapting quickly', FALSE, 4),
-- Question 1188
(1188, 'Focusing only on metrics', FALSE, 1),
(1188, 'Modeling desired changes and maintaining optimism', TRUE, 2),
(1188, 'Avoiding difficulties', FALSE, 3),
(1188, 'Blaming resistors', FALSE, 4),
-- Question 1189
(1189, 'True', FALSE, 1),
(1189, 'False', TRUE, 2),
-- Question 1190
(1190, 'Senior management support', FALSE, 1),
(1190, 'Building capability and reinforcing new behaviors', TRUE, 2),
(1190, 'Financial investment', FALSE, 3),
(1190, 'External consultants', FALSE, 4);

INSERT INTO questions (quiz_id, question_text, question_type, points, order_index, explanation) VALUES
(120, 'What is the foundation of ethical leadership?', 'multiple_choice', 1.00, 1, 'Consistently demonstrating integrity and making decisions aligned with moral principles.'),
(120, 'Which practice demonstrates ethical leadership?', 'multiple_choice', 1.00, 2, 'Transparency about decision-making processes and willingness to explain rationale builds trust.'),
(120, 'Ethical leaders never make mistakes that affect their teams.', 'true_false', 1.00, 3, 'False. Ethical leaders acknowledge mistakes and take responsibility for their impacts.'),
(120, 'What is "ethical dilemma" in leadership context?', 'multiple_choice', 1.00, 4, 'Situations where different ethical principles conflict, requiring careful consideration of values.'),
(120, 'Which approach helps navigate ethical gray areas?', 'multiple_choice', 1.00, 5, 'Considering multiple perspectives and potential consequences before deciding on action.'),
(120, 'Organizational success justifies compromising ethical standards in difficult times.', 'true_false', 1.00, 6, 'False. Ethical standards are most important during challenges and define long-term success.'),
(120, 'What is the leader''s role in establishing ethical culture?', 'multiple_choice', 1.00, 7, 'Modeling ethical behavior and holding everyone accountable to established standards.'),
(120, 'Which practice promotes ethical decision-making in organizations?', 'multiple_choice', 1.00, 8, 'Creating safe channels for raising concerns and discussing ethical issues openly.'),
(120, 'Ethical leadership only applies to major decisions with significant consequences.', 'true_false', 1.00, 9, 'False. Small daily decisions and behaviors collectively define ethical leadership.'),
(120, 'What is the most important benefit of ethical leadership?', 'multiple_choice', 1.00, 10, 'Building sustainable trust with stakeholders that enables long-term organizational success.');

INSERT INTO answer_options (question_id, option_text, is_correct, order_index) VALUES
-- Question 1191
(1191, 'Business success', FALSE, 1),
(1191, 'Consistently demonstrating integrity and moral principles', TRUE, 2),
(1191, 'Following all laws', FALSE, 3),
(1191, 'Team popularity', FALSE, 4),
-- Question 1192
(1192, 'Hiding mistakes', FALSE, 1),
(1192, 'Transparency about decision-making processes', TRUE, 2),
(1192, 'Always agreeing with superiors', FALSE, 3),
(1192, 'Avoiding difficult decisions', FALSE, 4),
-- Question 1193
(1193, 'True', FALSE, 1),
(1193, 'False', TRUE, 2),
-- Question 1194
(1194, 'Legal compliance issues', FALSE, 1),
(1194, 'Situations where ethical principles conflict', TRUE, 2),
(1194, 'Personal moral beliefs', FALSE, 3),
(1194, 'Team disagreements', FALSE, 4),
-- Question 1195
(1195, 'Following gut instinct only', FALSE, 1),
(1195, 'Considering multiple perspectives and consequences', TRUE, 2),
(1195, 'Asking only legal department', FALSE, 3),
(1195, 'Doing what everyone else does', FALSE, 4),
-- Question 1196
(1196, 'True', FALSE, 1),
(1196, 'False', TRUE, 2),
-- Question 1197
(1197, 'Writing ethics policies', FALSE, 1),
(1197, 'Modeling ethical behavior and holding everyone accountable', TRUE, 2),
(1197, 'Punishing violations severely', FALSE, 3),
(1197, 'Avoiding ethical discussions', FALSE, 4),
-- Question 1198
(1198, 'Keeping ethics confidential', FALSE, 1),
(1198, 'Creating safe channels for raising concerns', TRUE, 2),
(1198, 'Annual ethics training only', FALSE, 3),
(1198, 'Focusing only on legal requirements', FALSE, 4),
-- Question 1199
(1199, 'True', FALSE, 1),
(1199, 'False', TRUE, 2),
-- Question 1200
(1200, 'Avoiding legal problems', FALSE, 1),
(1200, 'Building sustainable trust with stakeholders', TRUE, 2),
(1200, 'Positive publicity', FALSE, 3),
(1200, 'Higher profits', FALSE, 4);