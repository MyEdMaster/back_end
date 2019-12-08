
CREATE SCHEMA `database_website` ;

CREATE TABLE `database_website`.`account` (
  `account_id` INT NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `account_name` VARCHAR(20) NOT NULL,
  `status` INT NOT NULL,
  PRIMARY KEY (`account_id`));

CREATE TABLE `database_website`.`question_1` (
  `question_id` INT NOT NULL,
  `question_content` VARCHAR(1000) NULL,
  PRIMARY KEY (`question_id`));


CREATE TABLE `database_website`.`answer_1` (
  `answer_id` INT NOT NULL,
  `question_id` INT NOT NULL,
  `answer_content` VARCHAR(2000) NOT NULL,
  PRIMARY KEY (`answer_id`));

CREATE TABLE `database_website`.`question_2` (
  `question_id` INT NOT NULL,
  `question_content` VARCHAR(1000) NULL,
  PRIMARY KEY (`question_id`));


CREATE TABLE `database_website`.`answer_2` (
  `answer_id` INT NOT NULL,
  `question_id` INT NOT NULL,
  `answer_content` VARCHAR(2000) NOT NULL,
  PRIMARY KEY (`answer_id`));

CREATE TABLE `database_website`.`question_3` (
  `question_id` INT NOT NULL,
  `question_content` VARCHAR(1000) NULL,
  PRIMARY KEY (`question_id`));


CREATE TABLE `database_website`.`answer_3` (
  `answer_id` INT NOT NULL,
  `question_id` INT NOT NULL,
  `answer_content` VARCHAR(2000) NOT NULL,
  PRIMARY KEY (`answer_id`));


INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('1', 'Why did Little Red Riding Hood\'s mother give Little Red Riding Hood a basket of treats?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('2', 'Why did Little Red Riding Hood\'s mother tell Little Red Riding Hood not to talk to strangers?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('3', 'Why did Little Red Riding Hood talk to the wolf?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('4', 'Why did the wolf ask Little Red Riding Hood what she was doing in the forest?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('5', 'Why did the wolf dress as Little Red Riding Hood\'s grandmother?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('6', 'Why did the wolf go to Little Red Riding Hood\'s grandmother\'s house?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('7', 'Why did the wolf pretend to be Little Red Riding Hood\'s grandmother?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('8', 'Why does Little Red Riding Hood say to the wolf \"What big eyes you have?\"');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('9', 'Why does Little Red Riding Hood say to the wolf \"What big ears you have?\"');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('10', 'Why does Little Red Riding Hood say to the wolf \"What big teeth you have?\"');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('11', 'Why does the wolf want to eat Little Red Riding Hood?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('12', 'Why does the wolf put Little Red Riding Hood\'s grandmother in the closet?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('13', 'Why does the lumberjack help Little Red Riding Hood?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('14', 'Why doesn\'t the lumberjack kill the wolf?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('15', 'Why is the wolf so bad?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('16', 'Why couldn\'t Little Red Riding Hood\'s grandmother stop the wolf?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('17', 'How come the wolf can talk?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('18', 'Why didn\'t the wolf eat Little Red Riding Hood\'s grandmother?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('19', 'Are all strangers bad?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('20', 'Can grown-ups talk to strangers?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('21', 'Why is it bad to talk to strangers?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('22', 'How did the wolf know where Little Red Riding Hood\'s grandmother\'s house is?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('23', 'Why did Little Red Riding Hood realize the lesson at the end of the story?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('24', 'Why did Little Red Riding Hood go into the woods alone?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('25', 'Why didn\'t the grandmother cry for help?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('26', 'Why did the grandmother think the wolf was Little Red Riding Hood?');
INSERT INTO `database_website`.`question_1` (`question_id`, `question_content`) VALUES ('27', 'Is this story true?');




######



INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('1', '1', 'To give to her grandmother.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('2', '2', 'Because she thought there might be bad strangers in the woods.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('3', '3', 'She forgot what her mother told her about not talking to strangers.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('4', '4', 'So he could find out where she was going.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('5', '5', 'To trick Little Red Riding Hood into thinking he was her grandmother.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('6', '6', 'So he could eat Little Red Riding Hood and her grandmother.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('7', '7', 'To trick Little Red Riding Hood to coming closer to him so he could get her.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('8', '8', 'Because the wolf\'s eyes didn\'t look like her grandmother\'s eyes.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('9', '9', 'Because the wolf\'s ears didn\'t look like her grandmother\'s ears.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('10', '10', 'Because the wolf\'s teeth didn\'t look like her grandmother\'s teeth.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('11', '11', 'Because the wolf likes to eat people.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('12', '12', 'To keep her hidden until Little Red Riding Hood arrives.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('13', '13', 'He wants to save her from the wolf.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('14', '14', 'The lumberjack just wants to save Little Red Riding Hood. He doesn\'t want to hurt the wolf.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('15', '15', 'He is bad because he wants to hurt Little Red Riding Hood and her grandmother.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('16', '16', 'The wolf is much stronger than Little Red Riding Hood\'s grandmother.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('17', '17', 'This is a story and in some stories, animals can talk.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('18', '18', 'The wolf didn\'t have enough time to eat the grandmother before Little Red Riding Hood arrived.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('19', '19', 'Not all strangers are bad.   But it can be hard for a child to tell a good stranger from a bad stranger.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('20', '20', 'Grown-ups sometimes talk to strangers.  But they are still careful about which strangers they talk to.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('21', '21', 'You shouldn\'t talk to people you don\'t know because some strangers may try to hurt you.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('22', '22', 'The wolf lives in the woods, so he knows where the houses are.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('23', '23', 'She saw what happens when she talked to a stranger.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('24', '24', 'This was the way to get to her grandmother\'s house.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('25', '25', 'The wolf grabbed her too quickly.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('26', '26', 'She was expecting only Little Red Riding Hood and no one else.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('27', '27', 'The story is not true.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('28', '1', 'When people are sick, they often get treats.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('29', '2', 'Parents tell kids not to do things, like talk to strangers, that could hurt them.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('30', '3', 'Children often forget what their parents tell them.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('31', '4', 'You ask people questions to get information from them.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('32', '5', 'People put on disguises when they don\'t want others to know who they really are.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('33', '6', 'People go to others\' houses when they want what\'s in those houses. In this case, the wolf wanted to eat the grandmother.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('34', '7', 'People pretend to be other people when they don\'t want others to know who they really are.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('35', '8', 'People usually notice when someone looks differently than usual and then they say something about it.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('36', '9', 'People usually notice when someone looks differently than usual and then they say something about it.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('37', '10', 'People usually notice when someone looks differently than usual and then they say something about it.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('38', '11', 'When wolves get hungry they want to eat something. In this case, it is Little Red Riding Hood.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('39', '12', 'When you don\'t want someone to see something, you hide it.  The wolf didn\'t want Little Red Riding Hood to see the real grandmother.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('40', '13', 'Good people always help people who are in trouble.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('41', '14', 'Good people don\'t kill others.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('42', '15', 'Stories often have bad characters in them that try to hurt other characters.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('43', '16', 'Wolves are stronger than old women.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('44', '17', 'Animals can often talk in stories even though they don\'t talk in real life.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('45', '18', 'People usually don\'t do bad things in front of other.  The wolf didn\'t want to scare Little Red Riding Hood away.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('46', '19', 'In real life, most strangers aren\'t bad, but we don\'t always know which ones are good and which are bad, so we have to be careful.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('47', '20', 'Grown-ups sometimes talk to strangers when they need information, but they are careful which strangers they talk to.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('48', '21', 'Some strangers are bad people like criminals and they use information they get from people to hurt them.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('49', '22', 'People generally know where others live near to where they live.  Since the wolf and the grandmother live in the woods, the wolf knows where she lives.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('50', '23', 'Generally, when something bad happens, people try to figure out why.  Little Red Riding Hood wanted to know why she had a bad experience with the wolf.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('51', '24', 'Sometimes parents send children on errands by themselves.  They think that the children are old enough to be responsible.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('52', '25', 'Sometimes people are so surprised by what happens that they don\'t have time to scream for help.  The wolf surprised the grandmother.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('53', '26', 'When people are expecting someone to visit, they assume that when they hear a knock on the door, it is the person they are expecting.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('54', '27', 'Fairy tales are not true.  They are used to teach a lesson.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('55', '1', 'Don\'t you like to eat good things when you are sick? Why do you like to do that?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('56', '2', 'Don\'t your parents also tell you not to talk to strangers? Did they tell you why?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('57', '3', 'Did you ever get distracted and forget what your parents told you?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('58', '4', 'Has anyone tried to trick you before, so that person could do something bad?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('59', '5', 'Think of people you\'ve seen on TV who put on disguises to hide who they really are. Why do they do that?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('60', '6', 'Have you seen a story or a movie where a bad guy goes to someone\'s house because he wants what\'s in the house?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('61', '7', 'Have you seen a story or movie where a bad guy pretends to be a different person in order to trick someone?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('62', '8', 'Did you ever say something when you noticed someone who looks different than usual?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('63', '9', 'Did you ever say something when you noticed someone who looks different than usual?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('64', '10', 'Did you ever say something when you noticed someone who looks different than usual?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('65', '11', 'Have you read a story or seen a movie where a big animal or monster tries to eat a person? Why did it do that?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('66', '12', 'If you wanted to take someone\'s place, what would you do with the real person?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('67', '13', 'What do heros normally do when they see someone in danger?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('68', '14', 'Think of superheros you\'ve seen in the movies.  Do they kill the bad guys or just save the people in trouble?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('69', '15', 'Think about other stories or movies you\'ve seen.  Isn\'t there a bad guy in them a lot of the time?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('70', '16', 'Think about how strong your grandmother is. Do you think she could stop a wolf?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('71', '17', 'Have you seen other stories or movies that have talking animals?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('72', '18', 'What happens when you don\'t have time to do something?  Don\'t you wait until later to do it?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('73', '19', 'Think of strangers you\'ve met.  Were some good and some bad?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('74', '20', 'Grown-ups sometimes talk to strangers.  Think about which strangers you\'ve seen your parents talk to.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('75', '21', 'Have you ever met someone who you first thought was good, but the person turned out to be bad?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('76', '22', 'The wolf lives in the woods like Little Red Riding Hood\'s grandmother. Don\'t you know where people live in your neighborhood, too?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('77', '23', 'Have you ever had a bad thing happen to you and then you tried to learn why it happened?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('78', '24', 'Have your parents ever sent you on an errand by yourself? What errand was that?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('79', '25', 'Have you ever been so surprised by something that happened quickly that you didn\'t have time to scream?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('80', '26', 'Have you ever seen a story or movie where someone fooled someone else by putting on a disguise?');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('81', '27', 'This story is like other fairy tales you\'ve heard of that teach children lessons.  Fairy tales aren\'t true.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('82', '1', 'Because treats can help Little Red Riding Hood\'s grandmother feel better.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('83', '2', 'To prevent Little Red Riding Hood from getting hurt by a bad stranger.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('84', '3', 'Because she wanted to be friendly.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('85', '4', 'He wanted to find out if she was alone, so he could eat her.  When he found out that she was going to her grandmother\'s house, he decided he could eat both of them.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('86', '5', 'He wanted to trick her to think he was her grandmother so she wouldn\'t try to run away.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('87', '6', 'He wanted to eat both Little Red Riding Hood and her grandmother at the same time.  He figured if he ate Little Red Riding Hood in the woods, her grandmother might get suspicious because it was taking too long for Little Red Riding Hood to arrive at her house.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('88', '7', 'He wanted to trick her to think he was her grandmother so she wouldn\'t try to run away.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('89', '8', 'She noticed that the wolf didn\'t look like her grandmother and wanted to find out why she was looking at big eyes instead of her grandmother\'s eyes.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('90', '9', 'She noticed that the wolf didn\'t look like her grandmother and wanted to find out why she was looking at big ears instead of her grandmother\'s eyes.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('91', '10', 'She noticed that the wolf didn\'t look like her grandmother and wanted to find out why she was looking at big teeth instead of her grandmother\'s eyes.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('92', '11', 'The wolf wants to eat Little Red Riding Hood because he is hungry and also because the story has to show something bad happening when children talk to strangers.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('93', '12', 'Because he doesn\'t have enough time to eat her before Little Red Riding Hood arrives and can\'t let Little Red Riding Hood see both the wolf and the grandmother together or she will run for help.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('94', '13', 'He helps Little Red Riding Hood in order to save her and her mother\'s lives.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('95', '14', 'Because the killing is wrong and the lumberjack doesn\'t want to do a bad thing just because the wolf wanted to do a bad thing.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('96', '15', 'The wolf is bad so that the story can show how talking to strangers can lead to bad things.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('97', '16', 'She couldn\'t stop the wolf because if she did, then the story wouldn\'t be able to teach children not to talk to strangers.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('98', '17', 'The wolf has to be able to talk so he can find out where Little Red Riding Hood\'s grandmother lives.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('99', '18', 'The wolf doesn\'t have enough time to eat the grandmother before Little Red Riding Hood arrives and if she sees him trying to eat her grandmother, she\'ll run away and the wolf won\'t get her.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('100', '19', 'All strangers aren\'t bad, but some are.  This story needs a bad stranger in it to show how if children talk to strangers, bad things can happen.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('101', '20', 'Grown ups talk to strangers, but they need to be careful which strangers they talk to because bad things can happen to grown ups who talk to strangers, too.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('102', '21', 'If the stranger is a bad person, he or she might use the infromation you give him to hurt you.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('103', '22', 'The wolf has to know where the grandmother\'s house is.  Otherwise, the rest of the story doesn\'t make sense since the wolf wouldn\'t get to the grandmother\'s house.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('104', '23', 'By realizing the lesson not to talk to strangers, Little Red Riding Hood helps other children learn the lesson, too.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('105', '24', 'She had to go through the woods in order to get to her grandmother\'s house.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('106', '25', 'The wolf grabbed her so quickly that she didn\'t have time to scream.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('107', '26', 'The grandmother was expecting only Little Red Riding Hood to come, so she didn\'t expect any one else to come to her house.');
INSERT INTO `database_website`.`answer_1` (`answer_id`, `question_id`, `answer_content`) VALUES ('108', '27', 'The story isn\'t true, but it is seems like it could be true to help children understand why it\'s bad to talk to strangers.');


##########



INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('1', 'Why does Little Red Riding Hood visit her grandmother?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('2', 'Why does Little Red Riding Hood\'s mother give Little Red Riding Hood a basket of treats?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('3', 'Why does Little Red Riding Hood\'s mother tell Little Red Riding Hood not to talk to strangers?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('4', 'Whom does Little Red Riding Hood meet in the forest?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('5', 'What does the wolf ask Little Red Riding Hood?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('6', 'Does Little Red Riding Hood answer the wolf?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('7', 'Is Little Red Riding Hood supposed to answer the wolf?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('8', 'Why is Little Red Riding Hood not supposed to answer the wolf?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('9', 'What does the wolf do after Little Red Riding Hood tells him where she is going?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('10', 'What does the wolf do when he gets to Little Red Riding Hood\'s grandmother\'s house?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('11', 'Why does Little Red Riding Hood ask the wolf about his eyes, ears and teeth?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('12', 'What does the wolf try to do to Little Red Riding Hood?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('13', 'Who saves Little Red Riding Hood?');
INSERT INTO `database_website`.`question_2` (`question_id`, `question_content`) VALUES ('14', 'What is the lesson of the story?');



#########
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('1', '1', 'Because her  grandmother is sick.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('2', '2', 'To give to her grandmother, to help her grandmother feel better');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('3', '3', 'to protect little red riding hood, because a stranger might hurt little red riding hood');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('4', '4', 'a wolf');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('5', '5', 'what she is doing in the forest, where she is going');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('6', '6', 'yes');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('7', '7', 'no');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('8', '8', 'because he/the wolf is a stranger, because he is bad, because he might hurt her/Little Red Riding Hood');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('9', '9', 'He goes to Little Red Riding Hood\'s grandmother\'s house,he takes a shortcut to Little Red Riding Hood\'s grandmother\'s house.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('10', '10', 'He locks Little Red Riding Hood\'s grandmother in the closet, he dresses like Little Red Riding Hood\'s grandmother and goes in her bed');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('11', '11', 'because the wolf doesn\'t look like Little Red Riding Hood\'s grandmother, because the wolf\'s eyes/ears/teeth don\'t look like Little Red Riding Hood\'s grandmother\'s eyes/ears/teeth');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('12', '12', 'he/the wolf tries to eat her');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('13', '13', 'the woodsman/lumberjack');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('14', '14', 'Don\'t talk to strangers/Listen to your mom/parents');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('15', '1', 'Little Red Riding Hood visits her grandmother because her grandmother is sick.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('16', '2', 'Little Red Riding Hood\'s mother gives her a basket of treats  to give to her grandmother to help her feel better.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('17', '3', 'Little Red Riding Hood\'s mother tells her not to talk to strangers to keep her from getting hurt.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('18', '4', 'Little Red Riding Hood meets a wolf in the forest.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('19', '5', 'The wolf asks Little Red Red Riding Hood what she\'s doing in the forest.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('20', '6', 'Little Red Riding answers the wolf and tells him she\'s going to see her grandmother.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('21', '7', 'Little Red Riding Hood is not supposed to answer the wolf.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('22', '8', 'Little Red Riding Hood is not supposed to answer the wolf because the wolf is a stranger.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('23', '9', 'After Little Red Riding Hood tells the wolf where she\'s going, he takes a shortcut to her grandmother\'s house.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('24', '10', 'When the wolf gets to Little Red Riding Hood\'s grandmother\'s house, he locks her in the closet, dresses up like her, and gets in her bed.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('25', '11', 'Little Red Riding Hood asks the wolf about his eyes, ears, and teeth because he doesn\'t look like her grandmother.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('26', '12', 'The wolf tries to eat Little Red Riding Hood.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('27', '13', 'The lumberjack saves Little Red Riding Hood.');
INSERT INTO `database_website`.`answer_2` (`answer_id`, `question_id`, `answer_content`) VALUES ('28', '14', 'The lesson of the story is that children shouldn\'t talk to strangers because bad things can happen if they do.');


#########


INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('1', 'What is the format of a dividing complex numbers problem?');
INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('2', 'What type of number can a b c and d be?');
INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('3', 'What is i?');
INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('4', 'When you divide two complex numbers what is the primary goal you are trying to achieve?');
INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('5', 'How do you rationalize the denominator when you divide two complex numbers?');
INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('6', 'What is the definition of the conjugate?');
INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('7', 'If the denominator is represented by the expression c+di what would its conjugate be?');
INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('8', 'Once you set up the problem to multiply the numerator and denominator by the conjugate of the denominator what process do you use to carry out the multiplication?');
INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('9', 'What does FOIL stand for and where does it come from?');
INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('10', 'What do you get when you FOIL the numerator?');
INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('11', 'What do you get when you FOIL the denominator?');
INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('12', 'What do you do after you have FOILed the numerator and denominator?');
INSERT INTO `database_website`.`question_3` (`question_id`, `question_content`) VALUES ('13', 'What do you get after you have combined the like terms?');


########



INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('1', '1', 'When you divide two complex numbers the numerator has the form a+bi and the denominator has the form c+di');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('2', '2', 'a b c and d are real numbers. They can be positive or negative. Often they are integers.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('3', '3', 'I is the square root of minus 1');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('4', '4', 'When you divide two complex numbers your primary goal is to rationalize the denominator.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('5', '5', 'To rationalize the denominator you divide both numerator and denominator by the conjugate of the denominator.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('6', '6', 'The conjugate is the complex number with sign between real and imaginary part changed.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('7', '7', 'If the denominator is represented by the expression c+di its conjugate is c-di.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('8', '8', 'Once you set up the problem to multiply the numerator and denominator by the conjugate of the denominator you use FOIL to carry out the multiplication');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('9', '9', 'FOIL stands for First Outer Inner Last. It comes from the distributive property.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('10', '10', 'When you FOIL the numerator you get (ac-adi+bci-bdi^2) which equals ac-adi+bci+bd');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('11', '11', 'When you FOIL the denominator you get (c^2-cdi+cdi-d^2i^2)” or “(c^-cdi+cdi+d^2)');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('12', '12', 'After you have FOILed the numerator and denominator you combine like terms.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('13', '13', 'After you combine like terms you get ((ac+bd)+(bc-ad)i)/(c^2+d^2)');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('14', '1', 'When you divide two complex numbers the numerator has the form a+bi and the denominator has the form c+di');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('15', '2', 'a b c and d are real numbers. They can be positive or negative. Often they are integers.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('16', '3', 'I is the square root of minus 1');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('17', '4', 'When you divide two complex numbers your primary goal is to rationalize the denominator.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('18', '5', 'To rationalize the denominator you divide both numerator and denominator by the conjugate of the denominator.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('19', '6', 'The conjugate is the complex number with sign between real and imaginary part changed.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('20', '7', 'If the denominator is represented by the expression c+di its conjugate is c-di.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('21', '8', 'Once you set up the problem to multiply the numerator and denominator by the conjugate of the denominator you use FOIL to carry out the multiplication');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('22', '9', 'FOIL stands for First Outer Inner Last. It comes from the distributive property.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('23', '10', 'When you FOIL the numerator you get (ac-adi+bci-bdi^2) which equals ac-adi+bci+bd');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('24', '11', 'When you FOIL the denominator you get (c^2-cdi+cdi-d^2i^2)” or “(c^-cdi+cdi+d^2)');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('25', '12', 'After you have FOILed the numerator and denominator you combine like terms.');
INSERT INTO `database_website`.`answer_3` (`answer_id`, `question_id`, `answer_content`) VALUES ('26', '13', 'After you combine like terms you get ((ac+bd)+(bc-ad)i)/(c^2+d^2)');


