PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "migrations" ("id" integer not null primary key autoincrement, "migration" varchar not null, "batch" integer not null);
INSERT INTO "migrations" VALUES(130,'2017_02_04_142210_create_users_table',1);
INSERT INTO "migrations" VALUES(131,'2017_02_05_065438_create_modules_table',1);
INSERT INTO "migrations" VALUES(132,'2017_02_05_065503_create_events_table',1);
INSERT INTO "migrations" VALUES(133,'2017_02_05_065524_create_timetables_table',1);
INSERT INTO "migrations" VALUES(134,'2017_02_05_065930_create_user_modules_table',1);
INSERT INTO "migrations" VALUES(135,'2017_02_05_065951_create_user_timetables_table',1);
INSERT INTO "migrations" VALUES(136,'2017_02_05_071317_create_timetable_events_table',1);
CREATE TABLE IF NOT EXISTS "users" ("id" integer not null primary key autoincrement, "email" varchar not null, "password" varchar not null, "created_at" datetime null, "updated_at" datetime null);
INSERT INTO "users" VALUES(1,'wbrakus@okeefe.com','$2y$10$tZ80OQ4A5k2fTh0OIWn0yu6XIyG4Tqp1wyieNmaN7ADpNGIk2QpFW','2017-02-18 05:30:30','2017-02-18 05:30:30');
INSERT INTO "users" VALUES(2,'wuckert.meaghan@cassin.com','$2y$10$J.e.2THDGYBUPnRhzQYfAeEBz0lk1/mzYrwppbZc3KOCxXzYcZ3VW','2017-02-18 05:30:30','2017-02-18 05:30:30');
INSERT INTO "users" VALUES(3,'rjast@yahoo.com','$2y$10$eJbralJVgqwb.DBrGneixOnKxUd0ve/6OFjKUGVHj.fMl3M7aS/c6','2017-02-18 05:30:30','2017-02-18 05:30:30');
INSERT INTO "users" VALUES(4,'abshire.lavina@kautzer.net','$2y$10$Abg2fL6BFUMRlvqeQdiPGO5/W9dzU9jUd7g84nPj5g/7GblP3haPC','2017-02-18 05:30:30','2017-02-18 05:30:30');
INSERT INTO "users" VALUES(5,'douglas.porter@gmail.com','$2y$10$ggHQ18AsLXiL2/TURQ/9tO6c.VchNH90HZmhr3Xgp4osLSJmnFmw2','2017-02-18 05:30:30','2017-02-18 05:30:30');
INSERT INTO "users" VALUES(6,'rodolfo.mante@hotmail.com','$2y$10$HHA.F..4S9IDq3BnwC88huoStW81.Dhr6XOfk8ny.yd5qjWM1UzQK','2017-02-18 05:30:30','2017-02-18 05:30:30');
INSERT INTO "users" VALUES(7,'tbartell@yahoo.com','$2y$10$/AyeY.gqXwQ0erCR9Uzjou2MeZS9eTwSP48BAXQYH4aqIQkGLxsk.','2017-02-18 05:30:30','2017-02-18 05:30:30');
INSERT INTO "users" VALUES(8,'mccullough.brendon@bartoletti.org','$2y$10$DkhdrcIZ224FyjLi/CFvsuuV546IFy8Rsi9lHscaFc9GZHMCgK.dS','2017-02-18 05:30:31','2017-02-18 05:30:31');
INSERT INTO "users" VALUES(9,'mona.rogahn@hotmail.com','$2y$10$yxOzbgrqy.sfPBMbSQJIOO2ElNWCJH4QwqWjAYx22ZF.xjgODZ5tq','2017-02-18 05:30:31','2017-02-18 05:30:31');
INSERT INTO "users" VALUES(10,'cschroeder@hotmail.com','$2y$10$teG/ieF8XhRuNOcK7lAxlupf6VHKRzwMe5GHI.YfoBz6h/FqsJv0W','2017-02-18 05:30:31','2017-02-18 05:30:31');
CREATE TABLE IF NOT EXISTS "modules" ("id" integer not null primary key autoincrement, "code" varchar not null, "name" varchar not null, "description" text not null, "period" varchar not null, "type" integer not null, "created_at" datetime null, "updated_at" datetime null);
INSERT INTO "modules" VALUES(1,'cug865','quasi','Mouse, sharply and very soon came to the jury, who instantly made a memorandum of the house!'' (Which was very deep, or she should chance to be ashamed of yourself for asking such a capital one for.','Q4',0,'2017-02-18 05:30:24','2017-02-18 05:30:24');
INSERT INTO "modules" VALUES(2,'tau421','facere','I used to read fairy-tales, I fancied that kind of thing that would happen: ''"Miss Alice! Come here directly, and get ready to sink into the teapot. ''At any rate it would not open any of them..','Q3',1,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(3,'aad683','earum','Mock Turtle drew a long time together.'' ''Which is just the case with MINE,'' said the Duchess: you''d better finish the story for yourself.'' ''No, please go on!'' Alice said very politely, ''for I can''t.','Q1',1,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(4,'xfs356','nostrum','First, she dreamed of little Alice and all must have imitated somebody else''s hand,'' said the Dodo, ''the best way you go,'' said the Hatter, ''when the Queen merely remarking that a moment''s pause..','Q2',1,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(5,'mjs596','quia','Hatter. He had been broken to pieces. ''Please, then,'' said the Rabbit began. Alice gave a little bit of mushroom, and her eyes to see if she were looking over their slates; ''but it seems to like.','S2',2,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(6,'kwl116','voluptatem','Oh my fur and whiskers! She''ll get me executed, as sure as ferrets are ferrets! Where CAN I have ordered''; and she heard a little glass box that was said, and went down on her hand, and Alice heard.','Q4',1,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(7,'tcx041','eos','Hush!'' said the cook. ''Treacle,'' said a whiting to a mouse, That he met in the direction in which case it would make with the day and night! You see the earth takes twenty-four hours to turn into a.','Q1',1,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(8,'txw744','rerum','I''d gone to see if there are, nobody attends to them--and you''ve no idea what to beautify is, I can''t remember,'' said the Queen, who was trembling down to look over their shoulders, that all the.','Q3',0,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(9,'liy650','libero','Alice considered a little, half expecting to see a little bird as soon as the Rabbit, and had to run back into the sky all the same, the next question is, what did the Dormouse indignantly. However,.','Q3',0,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(10,'mqv053','officia','Majesty,'' said Alice in a deep, hollow tone: ''sit down, both of you, and listen to her, still it had made. ''He took me for his housemaid,'' she said to herself. (Alice had no very clear notion how.','Q3',1,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(11,'fjt506','officiis','No, I''ve made up my mind about it; and as it went. So she sat down a very good height indeed!'' said Alice, who felt ready to agree to everything that was linked into hers began to repeat it, when a.','Q2',2,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(12,'stn717','et','But the insolence of his Normans--" How are you thinking of?'' ''I beg your pardon!'' cried Alice hastily, afraid that she ran out of a large canvas bag, which tied up at the flowers and the small ones.','Q3',2,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(13,'rwn773','molestiae','VERY remarkable in that; nor did Alice think it would make with the tarts, you know--'' (pointing with his head!'' or ''Off with her face like the look of the conversation. Alice felt dreadfully.','S1',2,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(14,'aoq647','aut','I can go back by railway,'' she said to herself, ''because of his pocket, and was a dispute going on rather better now,'' she said, ''and see whether it''s marked "poison" or not''; for she had never.','S1',2,'2017-02-18 05:30:25','2017-02-18 05:30:25');
INSERT INTO "modules" VALUES(15,'coo602','beatae','MINE.'' The Queen turned crimson with fury, and, after glaring at her as she could not help bursting out laughing: and when she got up this morning? I almost wish I''d gone to see its meaning. ''And.','S2',0,'2017-02-18 05:30:25','2017-02-18 05:30:25');
CREATE TABLE IF NOT EXISTS "events" ("id" integer not null primary key autoincrement, "created_at" datetime null, "updated_at" datetime null, "name" varchar not null, "day" integer not null, "start" time not null, "end" time not null, "date" date null, "language" integer not null, "group" integer null, "creator_id" integer null, "module_id" integer not null, foreign key("creator_id") references "users"("id"), foreign key("module_id") references "modules"("id") on delete cascade);
INSERT INTO "events" VALUES(1,'2017-02-18 05:30:25','2017-02-18 05:30:25','aau089 Lesson 7',2,'16:15:39','12:41:10','1986-12-16',2,3,8,8);
INSERT INTO "events" VALUES(2,'2017-02-18 05:30:26','2017-02-18 05:30:26','jye728 Lesson 2',3,'14:09:07','00:31:06','1995-05-28',1,2,10,6);
INSERT INTO "events" VALUES(3,'2017-02-18 05:30:26','2017-02-18 05:30:26','vuv426 Lesson 6',1,'21:26:42','22:02:07','1990-02-12',1,6,7,1);
INSERT INTO "events" VALUES(4,'2017-02-18 05:30:26','2017-02-18 05:30:26','kkq327 Lesson 8',3,'19:14:39','10:59:24','2003-02-23',1,1,4,8);
INSERT INTO "events" VALUES(5,'2017-02-18 05:30:26','2017-02-18 05:30:26','bxv601 Lesson 3',4,'07:02:31','12:52:12','1971-02-19',1,3,5,1);
INSERT INTO "events" VALUES(6,'2017-02-18 05:30:26','2017-02-18 05:30:26','mui234 Lesson 6',6,'17:35:49','15:11:01','1985-06-22',3,3,2,5);
INSERT INTO "events" VALUES(7,'2017-02-18 05:30:26','2017-02-18 05:30:26','xsc006 Lesson 1',1,'14:42:33','21:04:16','2006-05-06',0,4,9,5);
INSERT INTO "events" VALUES(8,'2017-02-18 05:30:26','2017-02-18 05:30:26','yyh034 Lesson 5',4,'18:30:51','08:53:27','1997-11-11',1,1,2,1);
INSERT INTO "events" VALUES(9,'2017-02-18 05:30:26','2017-02-18 05:30:26','ton798 Lesson 4',0,'19:07:40','11:27:27','2011-07-29',0,4,10,2);
INSERT INTO "events" VALUES(10,'2017-02-18 05:30:26','2017-02-18 05:30:26','efn134 Lesson 6',3,'18:56:59','07:06:48','2000-04-25',3,4,6,6);
INSERT INTO "events" VALUES(11,'2017-02-18 05:30:26','2017-02-18 05:30:26','nok080 Lesson 5',2,'19:44:05','09:02:55','1984-06-06',1,5,1,4);
INSERT INTO "events" VALUES(12,'2017-02-18 05:30:26','2017-02-18 05:30:26','kpt043 Lesson 6',5,'23:13:29','04:23:56','2008-03-09',1,1,9,4);
INSERT INTO "events" VALUES(13,'2017-02-18 05:30:27','2017-02-18 05:30:27','ofu565 Lesson 6',6,'10:59:29','04:31:27','2014-10-13',1,6,7,5);
INSERT INTO "events" VALUES(14,'2017-02-18 05:30:27','2017-02-18 05:30:27','fcw460 Lesson 4',6,'01:06:35','13:13:27','1988-09-24',2,6,7,9);
INSERT INTO "events" VALUES(15,'2017-02-18 05:30:28','2017-02-18 05:30:28','hkh526 Lesson 7',6,'23:35:56','06:05:49','1979-09-15',2,5,5,7);
INSERT INTO "events" VALUES(16,'2017-02-18 05:30:28','2017-02-18 05:30:28','sbd467 Lesson 3',5,'18:40:47','18:57:41','1992-06-26',1,6,3,10);
INSERT INTO "events" VALUES(17,'2017-02-18 05:30:28','2017-02-18 05:30:28','emm883 Lesson 1',3,'13:42:48','16:24:34','1985-01-07',2,3,7,2);
INSERT INTO "events" VALUES(18,'2017-02-18 05:30:28','2017-02-18 05:30:28','utt624 Lesson 9',1,'09:04:53','23:03:13','2013-05-11',3,5,4,2);
INSERT INTO "events" VALUES(19,'2017-02-18 05:30:28','2017-02-18 05:30:28','xsc207 Lesson 5',4,'08:10:20','13:53:28','2011-05-22',2,2,7,1);
INSERT INTO "events" VALUES(20,'2017-02-18 05:30:28','2017-02-18 05:30:28','juc419 Lesson 6',1,'19:37:47','21:03:09','2002-05-21',1,6,1,4);
INSERT INTO "events" VALUES(21,'2017-02-18 05:30:28','2017-02-18 05:30:28','vkq215 Lesson 1',6,'16:41:39','04:37:58','1970-04-18',1,1,4,9);
INSERT INTO "events" VALUES(22,'2017-02-18 05:30:28','2017-02-18 05:30:28','dlf749 Lesson 7',0,'09:10:34','09:41:31','2005-05-04',0,5,1,5);
INSERT INTO "events" VALUES(23,'2017-02-18 05:30:28','2017-02-18 05:30:28','qkc597 Lesson 0',4,'20:33:20','20:36:55','2001-03-10',2,1,10,7);
INSERT INTO "events" VALUES(24,'2017-02-18 05:30:28','2017-02-18 05:30:28','poy229 Lesson 4',5,'18:10:13','01:54:40','1973-07-06',2,4,9,4);
INSERT INTO "events" VALUES(25,'2017-02-18 05:30:28','2017-02-18 05:30:28','bgu664 Lesson 5',0,'01:07:42','17:52:21','2009-11-17',2,3,7,8);
INSERT INTO "events" VALUES(26,'2017-02-18 05:30:28','2017-02-18 05:30:28','qws304 Lesson 4',6,'12:15:24','22:31:25','1999-05-05',0,2,1,7);
INSERT INTO "events" VALUES(27,'2017-02-18 05:30:28','2017-02-18 05:30:28','eca792 Lesson 0',2,'04:32:25','06:58:06','1983-03-06',0,1,10,4);
INSERT INTO "events" VALUES(28,'2017-02-18 05:30:28','2017-02-18 05:30:28','mdo394 Lesson 7',5,'12:38:24','20:44:34','2002-12-10',3,3,8,1);
INSERT INTO "events" VALUES(29,'2017-02-18 05:30:28','2017-02-18 05:30:28','zdw583 Lesson 5',5,'02:39:32','14:48:29','1997-09-22',2,4,4,3);
INSERT INTO "events" VALUES(30,'2017-02-18 05:30:29','2017-02-18 05:30:29','tiq150 Lesson 6',6,'08:46:15','14:26:20','1993-04-14',0,3,9,10);
CREATE TABLE IF NOT EXISTS "timetables" ("id" integer not null primary key autoincrement, "created_at" datetime null, "updated_at" datetime null, "hash" varchar null, "creator_id" integer not null, foreign key("creator_id") references "users"("id"));
INSERT INTO "timetables" VALUES(1,'2017-02-18 05:30:37','2017-02-18 05:30:37',NULL,2);
INSERT INTO "timetables" VALUES(2,'2017-02-18 05:30:37','2017-02-18 05:30:37',NULL,10);
INSERT INTO "timetables" VALUES(3,'2017-02-18 05:30:37','2017-02-18 05:30:37',NULL,7);
INSERT INTO "timetables" VALUES(4,'2017-02-18 05:30:38','2017-02-18 05:30:38',NULL,6);
INSERT INTO "timetables" VALUES(5,'2017-02-18 05:30:38','2017-02-18 05:30:38',NULL,4);
INSERT INTO "timetables" VALUES(6,'2017-02-18 05:30:38','2017-02-18 05:30:38',NULL,5);
INSERT INTO "timetables" VALUES(7,'2017-02-18 05:30:38','2017-02-18 05:30:38',NULL,2);
INSERT INTO "timetables" VALUES(8,'2017-02-18 05:30:38','2017-02-18 05:30:38',NULL,10);
INSERT INTO "timetables" VALUES(9,'2017-02-18 05:30:38','2017-02-18 05:30:38',NULL,10);
INSERT INTO "timetables" VALUES(10,'2017-02-18 05:30:38','2017-02-18 05:30:38',NULL,4);
CREATE TABLE IF NOT EXISTS "user_modules" ("id" integer not null primary key autoincrement, "created_at" datetime null, "updated_at" datetime null, "user_id" integer not null, "module_id" integer not null, foreign key("user_id") references "users"("id") on delete cascade, foreign key("module_id") references "modules"("id") on delete cascade);
INSERT INTO "user_modules" VALUES(1,NULL,NULL,1,5);
INSERT INTO "user_modules" VALUES(2,NULL,NULL,1,9);
INSERT INTO "user_modules" VALUES(3,NULL,NULL,1,11);
INSERT INTO "user_modules" VALUES(4,NULL,NULL,1,4);
INSERT INTO "user_modules" VALUES(5,NULL,NULL,1,14);
INSERT INTO "user_modules" VALUES(6,NULL,NULL,1,8);
INSERT INTO "user_modules" VALUES(7,NULL,NULL,1,15);
INSERT INTO "user_modules" VALUES(8,NULL,NULL,1,7);
INSERT INTO "user_modules" VALUES(9,NULL,NULL,2,14);
INSERT INTO "user_modules" VALUES(10,NULL,NULL,2,14);
INSERT INTO "user_modules" VALUES(11,NULL,NULL,2,2);
INSERT INTO "user_modules" VALUES(12,NULL,NULL,2,11);
INSERT INTO "user_modules" VALUES(13,NULL,NULL,2,14);
INSERT INTO "user_modules" VALUES(14,NULL,NULL,2,14);
INSERT INTO "user_modules" VALUES(15,NULL,NULL,2,10);
INSERT INTO "user_modules" VALUES(16,NULL,NULL,2,12);
INSERT INTO "user_modules" VALUES(17,NULL,NULL,2,15);
INSERT INTO "user_modules" VALUES(18,NULL,NULL,3,9);
INSERT INTO "user_modules" VALUES(19,NULL,NULL,3,6);
INSERT INTO "user_modules" VALUES(20,NULL,NULL,3,11);
INSERT INTO "user_modules" VALUES(21,NULL,NULL,3,2);
INSERT INTO "user_modules" VALUES(22,NULL,NULL,3,15);
INSERT INTO "user_modules" VALUES(23,NULL,NULL,3,5);
INSERT INTO "user_modules" VALUES(24,NULL,NULL,3,14);
INSERT INTO "user_modules" VALUES(25,NULL,NULL,3,12);
INSERT INTO "user_modules" VALUES(26,NULL,NULL,3,12);
INSERT INTO "user_modules" VALUES(27,NULL,NULL,3,6);
INSERT INTO "user_modules" VALUES(28,NULL,NULL,4,5);
INSERT INTO "user_modules" VALUES(29,NULL,NULL,4,3);
INSERT INTO "user_modules" VALUES(30,NULL,NULL,4,15);
INSERT INTO "user_modules" VALUES(31,NULL,NULL,4,12);
INSERT INTO "user_modules" VALUES(32,NULL,NULL,4,3);
INSERT INTO "user_modules" VALUES(33,NULL,NULL,4,5);
INSERT INTO "user_modules" VALUES(34,NULL,NULL,4,8);
INSERT INTO "user_modules" VALUES(35,NULL,NULL,4,1);
INSERT INTO "user_modules" VALUES(36,NULL,NULL,4,7);
INSERT INTO "user_modules" VALUES(37,NULL,NULL,4,13);
INSERT INTO "user_modules" VALUES(38,NULL,NULL,4,2);
INSERT INTO "user_modules" VALUES(39,NULL,NULL,5,11);
INSERT INTO "user_modules" VALUES(40,NULL,NULL,5,14);
INSERT INTO "user_modules" VALUES(41,NULL,NULL,5,7);
INSERT INTO "user_modules" VALUES(42,NULL,NULL,6,12);
INSERT INTO "user_modules" VALUES(43,NULL,NULL,6,6);
INSERT INTO "user_modules" VALUES(44,NULL,NULL,6,1);
INSERT INTO "user_modules" VALUES(45,NULL,NULL,6,10);
INSERT INTO "user_modules" VALUES(46,NULL,NULL,6,14);
INSERT INTO "user_modules" VALUES(47,NULL,NULL,6,4);
INSERT INTO "user_modules" VALUES(48,NULL,NULL,6,7);
INSERT INTO "user_modules" VALUES(49,NULL,NULL,7,3);
INSERT INTO "user_modules" VALUES(50,NULL,NULL,7,15);
INSERT INTO "user_modules" VALUES(51,NULL,NULL,7,12);
INSERT INTO "user_modules" VALUES(52,NULL,NULL,7,15);
INSERT INTO "user_modules" VALUES(53,NULL,NULL,7,4);
INSERT INTO "user_modules" VALUES(54,NULL,NULL,7,6);
INSERT INTO "user_modules" VALUES(55,NULL,NULL,7,1);
INSERT INTO "user_modules" VALUES(56,NULL,NULL,7,4);
INSERT INTO "user_modules" VALUES(57,NULL,NULL,7,9);
INSERT INTO "user_modules" VALUES(58,NULL,NULL,8,14);
INSERT INTO "user_modules" VALUES(59,NULL,NULL,8,8);
INSERT INTO "user_modules" VALUES(60,NULL,NULL,8,8);
INSERT INTO "user_modules" VALUES(61,NULL,NULL,8,13);
INSERT INTO "user_modules" VALUES(62,NULL,NULL,8,10);
INSERT INTO "user_modules" VALUES(63,NULL,NULL,8,10);
INSERT INTO "user_modules" VALUES(64,NULL,NULL,8,2);
INSERT INTO "user_modules" VALUES(65,NULL,NULL,8,7);
INSERT INTO "user_modules" VALUES(66,NULL,NULL,8,2);
INSERT INTO "user_modules" VALUES(67,NULL,NULL,8,12);
INSERT INTO "user_modules" VALUES(68,NULL,NULL,8,10);
INSERT INTO "user_modules" VALUES(69,NULL,NULL,8,15);
INSERT INTO "user_modules" VALUES(70,NULL,NULL,8,5);
INSERT INTO "user_modules" VALUES(71,NULL,NULL,8,3);
INSERT INTO "user_modules" VALUES(72,NULL,NULL,8,5);
INSERT INTO "user_modules" VALUES(73,NULL,NULL,9,9);
INSERT INTO "user_modules" VALUES(74,NULL,NULL,9,15);
INSERT INTO "user_modules" VALUES(75,NULL,NULL,9,10);
INSERT INTO "user_modules" VALUES(76,NULL,NULL,9,14);
INSERT INTO "user_modules" VALUES(77,NULL,NULL,9,7);
INSERT INTO "user_modules" VALUES(78,NULL,NULL,9,15);
INSERT INTO "user_modules" VALUES(79,NULL,NULL,9,8);
INSERT INTO "user_modules" VALUES(80,NULL,NULL,9,7);
INSERT INTO "user_modules" VALUES(81,NULL,NULL,9,6);
INSERT INTO "user_modules" VALUES(82,NULL,NULL,10,6);
INSERT INTO "user_modules" VALUES(83,NULL,NULL,10,11);
INSERT INTO "user_modules" VALUES(84,NULL,NULL,10,4);
INSERT INTO "user_modules" VALUES(85,NULL,NULL,10,10);
INSERT INTO "user_modules" VALUES(86,NULL,NULL,10,9);
INSERT INTO "user_modules" VALUES(87,NULL,NULL,10,5);
INSERT INTO "user_modules" VALUES(88,NULL,NULL,10,4);
CREATE TABLE IF NOT EXISTS "user_timetables" ("id" integer not null primary key autoincrement, "created_at" datetime null, "updated_at" datetime null, "user_id" integer not null, "timetable_id" integer not null, foreign key("user_id") references "users"("id") on delete cascade, foreign key("timetable_id") references "tables"("id") on delete cascade);
INSERT INTO "user_timetables" VALUES(1,NULL,NULL,3,1);
INSERT INTO "user_timetables" VALUES(2,NULL,NULL,4,1);
INSERT INTO "user_timetables" VALUES(3,NULL,NULL,7,1);
INSERT INTO "user_timetables" VALUES(4,NULL,NULL,5,1);
INSERT INTO "user_timetables" VALUES(5,NULL,NULL,9,1);
INSERT INTO "user_timetables" VALUES(6,NULL,NULL,10,1);
INSERT INTO "user_timetables" VALUES(7,NULL,NULL,5,1);
INSERT INTO "user_timetables" VALUES(8,NULL,NULL,9,2);
INSERT INTO "user_timetables" VALUES(9,NULL,NULL,1,2);
INSERT INTO "user_timetables" VALUES(10,NULL,NULL,4,2);
INSERT INTO "user_timetables" VALUES(11,NULL,NULL,8,2);
INSERT INTO "user_timetables" VALUES(12,NULL,NULL,7,2);
INSERT INTO "user_timetables" VALUES(13,NULL,NULL,2,2);
INSERT INTO "user_timetables" VALUES(14,NULL,NULL,3,2);
INSERT INTO "user_timetables" VALUES(15,NULL,NULL,6,2);
INSERT INTO "user_timetables" VALUES(16,NULL,NULL,8,2);
INSERT INTO "user_timetables" VALUES(17,NULL,NULL,8,3);
INSERT INTO "user_timetables" VALUES(18,NULL,NULL,6,3);
INSERT INTO "user_timetables" VALUES(19,NULL,NULL,2,3);
INSERT INTO "user_timetables" VALUES(20,NULL,NULL,10,4);
INSERT INTO "user_timetables" VALUES(21,NULL,NULL,3,4);
INSERT INTO "user_timetables" VALUES(22,NULL,NULL,5,4);
INSERT INTO "user_timetables" VALUES(23,NULL,NULL,5,4);
INSERT INTO "user_timetables" VALUES(24,NULL,NULL,3,4);
INSERT INTO "user_timetables" VALUES(25,NULL,NULL,6,4);
INSERT INTO "user_timetables" VALUES(26,NULL,NULL,8,5);
INSERT INTO "user_timetables" VALUES(27,NULL,NULL,5,5);
INSERT INTO "user_timetables" VALUES(28,NULL,NULL,9,5);
INSERT INTO "user_timetables" VALUES(29,NULL,NULL,2,5);
INSERT INTO "user_timetables" VALUES(30,NULL,NULL,1,5);
INSERT INTO "user_timetables" VALUES(31,NULL,NULL,1,5);
INSERT INTO "user_timetables" VALUES(32,NULL,NULL,8,5);
INSERT INTO "user_timetables" VALUES(33,NULL,NULL,5,5);
INSERT INTO "user_timetables" VALUES(34,NULL,NULL,7,5);
INSERT INTO "user_timetables" VALUES(35,NULL,NULL,6,6);
INSERT INTO "user_timetables" VALUES(36,NULL,NULL,4,6);
INSERT INTO "user_timetables" VALUES(37,NULL,NULL,3,6);
INSERT INTO "user_timetables" VALUES(38,NULL,NULL,2,6);
INSERT INTO "user_timetables" VALUES(39,NULL,NULL,6,6);
INSERT INTO "user_timetables" VALUES(40,NULL,NULL,3,6);
INSERT INTO "user_timetables" VALUES(41,NULL,NULL,10,7);
INSERT INTO "user_timetables" VALUES(42,NULL,NULL,9,8);
INSERT INTO "user_timetables" VALUES(43,NULL,NULL,5,8);
INSERT INTO "user_timetables" VALUES(44,NULL,NULL,2,8);
INSERT INTO "user_timetables" VALUES(45,NULL,NULL,9,8);
INSERT INTO "user_timetables" VALUES(46,NULL,NULL,2,9);
INSERT INTO "user_timetables" VALUES(47,NULL,NULL,4,9);
INSERT INTO "user_timetables" VALUES(48,NULL,NULL,8,9);
INSERT INTO "user_timetables" VALUES(49,NULL,NULL,6,10);
INSERT INTO "user_timetables" VALUES(50,NULL,NULL,3,10);
INSERT INTO "user_timetables" VALUES(51,NULL,NULL,10,10);
INSERT INTO "user_timetables" VALUES(52,NULL,NULL,1,10);
INSERT INTO "user_timetables" VALUES(53,NULL,NULL,10,10);
INSERT INTO "user_timetables" VALUES(54,NULL,NULL,10,10);
INSERT INTO "user_timetables" VALUES(55,NULL,NULL,2,10);
CREATE TABLE IF NOT EXISTS "timetable_events" ("id" integer not null primary key autoincrement, "created_at" datetime null, "updated_at" datetime null, "event_id" integer not null, "timetable_id" integer not null, foreign key("timetable_id") references "timetables"("id") on delete cascade, foreign key("event_id") references "events"("id") on delete cascade);
INSERT INTO "timetable_events" VALUES(1,NULL,NULL,7,1);
INSERT INTO "timetable_events" VALUES(2,NULL,NULL,3,1);
INSERT INTO "timetable_events" VALUES(3,NULL,NULL,1,1);
INSERT INTO "timetable_events" VALUES(4,NULL,NULL,14,1);
INSERT INTO "timetable_events" VALUES(5,NULL,NULL,9,1);
INSERT INTO "timetable_events" VALUES(6,NULL,NULL,3,1);
INSERT INTO "timetable_events" VALUES(7,NULL,NULL,4,1);
INSERT INTO "timetable_events" VALUES(8,NULL,NULL,6,1);
INSERT INTO "timetable_events" VALUES(9,NULL,NULL,2,1);
INSERT INTO "timetable_events" VALUES(10,NULL,NULL,1,1);
INSERT INTO "timetable_events" VALUES(11,NULL,NULL,3,1);
INSERT INTO "timetable_events" VALUES(12,NULL,NULL,3,1);
INSERT INTO "timetable_events" VALUES(13,NULL,NULL,11,1);
INSERT INTO "timetable_events" VALUES(14,NULL,NULL,11,1);
INSERT INTO "timetable_events" VALUES(15,NULL,NULL,14,1);
INSERT INTO "timetable_events" VALUES(16,NULL,NULL,8,1);
INSERT INTO "timetable_events" VALUES(17,NULL,NULL,1,2);
INSERT INTO "timetable_events" VALUES(18,NULL,NULL,12,2);
INSERT INTO "timetable_events" VALUES(19,NULL,NULL,12,2);
INSERT INTO "timetable_events" VALUES(20,NULL,NULL,15,2);
INSERT INTO "timetable_events" VALUES(21,NULL,NULL,11,2);
INSERT INTO "timetable_events" VALUES(22,NULL,NULL,9,2);
INSERT INTO "timetable_events" VALUES(23,NULL,NULL,15,2);
INSERT INTO "timetable_events" VALUES(24,NULL,NULL,6,2);
INSERT INTO "timetable_events" VALUES(25,NULL,NULL,15,2);
INSERT INTO "timetable_events" VALUES(26,NULL,NULL,4,2);
INSERT INTO "timetable_events" VALUES(27,NULL,NULL,4,2);
INSERT INTO "timetable_events" VALUES(28,NULL,NULL,3,2);
INSERT INTO "timetable_events" VALUES(29,NULL,NULL,14,2);
INSERT INTO "timetable_events" VALUES(30,NULL,NULL,13,2);
INSERT INTO "timetable_events" VALUES(31,NULL,NULL,1,2);
INSERT INTO "timetable_events" VALUES(32,NULL,NULL,13,3);
INSERT INTO "timetable_events" VALUES(33,NULL,NULL,9,3);
INSERT INTO "timetable_events" VALUES(34,NULL,NULL,7,3);
INSERT INTO "timetable_events" VALUES(35,NULL,NULL,2,3);
INSERT INTO "timetable_events" VALUES(36,NULL,NULL,7,3);
INSERT INTO "timetable_events" VALUES(37,NULL,NULL,1,3);
INSERT INTO "timetable_events" VALUES(38,NULL,NULL,11,3);
INSERT INTO "timetable_events" VALUES(39,NULL,NULL,1,3);
INSERT INTO "timetable_events" VALUES(40,NULL,NULL,6,3);
INSERT INTO "timetable_events" VALUES(41,NULL,NULL,11,3);
INSERT INTO "timetable_events" VALUES(42,NULL,NULL,11,3);
INSERT INTO "timetable_events" VALUES(43,NULL,NULL,5,3);
INSERT INTO "timetable_events" VALUES(44,NULL,NULL,2,3);
INSERT INTO "timetable_events" VALUES(45,NULL,NULL,8,3);
INSERT INTO "timetable_events" VALUES(46,NULL,NULL,5,3);
INSERT INTO "timetable_events" VALUES(47,NULL,NULL,9,3);
INSERT INTO "timetable_events" VALUES(48,NULL,NULL,1,3);
INSERT INTO "timetable_events" VALUES(49,NULL,NULL,15,3);
INSERT INTO "timetable_events" VALUES(50,NULL,NULL,10,3);
INSERT INTO "timetable_events" VALUES(51,NULL,NULL,8,3);
INSERT INTO "timetable_events" VALUES(52,NULL,NULL,6,3);
INSERT INTO "timetable_events" VALUES(53,NULL,NULL,6,3);
INSERT INTO "timetable_events" VALUES(54,NULL,NULL,5,3);
INSERT INTO "timetable_events" VALUES(55,NULL,NULL,12,3);
INSERT INTO "timetable_events" VALUES(56,NULL,NULL,9,3);
INSERT INTO "timetable_events" VALUES(57,NULL,NULL,9,3);
INSERT INTO "timetable_events" VALUES(58,NULL,NULL,4,3);
INSERT INTO "timetable_events" VALUES(59,NULL,NULL,10,3);
INSERT INTO "timetable_events" VALUES(60,NULL,NULL,11,3);
INSERT INTO "timetable_events" VALUES(61,NULL,NULL,13,4);
INSERT INTO "timetable_events" VALUES(62,NULL,NULL,9,4);
INSERT INTO "timetable_events" VALUES(63,NULL,NULL,11,4);
INSERT INTO "timetable_events" VALUES(64,NULL,NULL,4,4);
INSERT INTO "timetable_events" VALUES(65,NULL,NULL,8,4);
INSERT INTO "timetable_events" VALUES(66,NULL,NULL,7,4);
INSERT INTO "timetable_events" VALUES(67,NULL,NULL,15,4);
INSERT INTO "timetable_events" VALUES(68,NULL,NULL,15,4);
INSERT INTO "timetable_events" VALUES(69,NULL,NULL,1,4);
INSERT INTO "timetable_events" VALUES(70,NULL,NULL,4,4);
INSERT INTO "timetable_events" VALUES(71,NULL,NULL,13,4);
INSERT INTO "timetable_events" VALUES(72,NULL,NULL,14,5);
INSERT INTO "timetable_events" VALUES(73,NULL,NULL,5,5);
INSERT INTO "timetable_events" VALUES(74,NULL,NULL,5,5);
INSERT INTO "timetable_events" VALUES(75,NULL,NULL,8,5);
INSERT INTO "timetable_events" VALUES(76,NULL,NULL,4,5);
INSERT INTO "timetable_events" VALUES(77,NULL,NULL,4,5);
INSERT INTO "timetable_events" VALUES(78,NULL,NULL,6,5);
INSERT INTO "timetable_events" VALUES(79,NULL,NULL,1,6);
INSERT INTO "timetable_events" VALUES(80,NULL,NULL,11,6);
INSERT INTO "timetable_events" VALUES(81,NULL,NULL,4,6);
INSERT INTO "timetable_events" VALUES(82,NULL,NULL,9,6);
INSERT INTO "timetable_events" VALUES(83,NULL,NULL,14,6);
INSERT INTO "timetable_events" VALUES(84,NULL,NULL,13,6);
INSERT INTO "timetable_events" VALUES(85,NULL,NULL,5,6);
INSERT INTO "timetable_events" VALUES(86,NULL,NULL,11,6);
INSERT INTO "timetable_events" VALUES(87,NULL,NULL,5,6);
INSERT INTO "timetable_events" VALUES(88,NULL,NULL,9,6);
INSERT INTO "timetable_events" VALUES(89,NULL,NULL,4,6);
INSERT INTO "timetable_events" VALUES(90,NULL,NULL,1,6);
INSERT INTO "timetable_events" VALUES(91,NULL,NULL,4,6);
INSERT INTO "timetable_events" VALUES(92,NULL,NULL,11,6);
INSERT INTO "timetable_events" VALUES(93,NULL,NULL,13,6);
INSERT INTO "timetable_events" VALUES(94,NULL,NULL,5,6);
INSERT INTO "timetable_events" VALUES(95,NULL,NULL,9,6);
INSERT INTO "timetable_events" VALUES(96,NULL,NULL,3,6);
INSERT INTO "timetable_events" VALUES(97,NULL,NULL,4,6);
INSERT INTO "timetable_events" VALUES(98,NULL,NULL,7,6);
INSERT INTO "timetable_events" VALUES(99,NULL,NULL,10,6);
INSERT INTO "timetable_events" VALUES(100,NULL,NULL,4,6);
INSERT INTO "timetable_events" VALUES(101,NULL,NULL,2,7);
INSERT INTO "timetable_events" VALUES(102,NULL,NULL,7,7);
INSERT INTO "timetable_events" VALUES(103,NULL,NULL,9,7);
INSERT INTO "timetable_events" VALUES(104,NULL,NULL,9,7);
INSERT INTO "timetable_events" VALUES(105,NULL,NULL,2,7);
INSERT INTO "timetable_events" VALUES(106,NULL,NULL,7,7);
INSERT INTO "timetable_events" VALUES(107,NULL,NULL,1,7);
INSERT INTO "timetable_events" VALUES(108,NULL,NULL,9,7);
INSERT INTO "timetable_events" VALUES(109,NULL,NULL,9,7);
INSERT INTO "timetable_events" VALUES(110,NULL,NULL,1,7);
INSERT INTO "timetable_events" VALUES(111,NULL,NULL,1,7);
INSERT INTO "timetable_events" VALUES(112,NULL,NULL,5,7);
INSERT INTO "timetable_events" VALUES(113,NULL,NULL,8,7);
INSERT INTO "timetable_events" VALUES(114,NULL,NULL,14,8);
INSERT INTO "timetable_events" VALUES(115,NULL,NULL,13,8);
INSERT INTO "timetable_events" VALUES(116,NULL,NULL,11,8);
INSERT INTO "timetable_events" VALUES(117,NULL,NULL,7,8);
INSERT INTO "timetable_events" VALUES(118,NULL,NULL,4,8);
INSERT INTO "timetable_events" VALUES(119,NULL,NULL,15,8);
INSERT INTO "timetable_events" VALUES(120,NULL,NULL,11,8);
INSERT INTO "timetable_events" VALUES(121,NULL,NULL,7,8);
INSERT INTO "timetable_events" VALUES(122,NULL,NULL,5,8);
INSERT INTO "timetable_events" VALUES(123,NULL,NULL,12,8);
INSERT INTO "timetable_events" VALUES(124,NULL,NULL,14,8);
INSERT INTO "timetable_events" VALUES(125,NULL,NULL,3,8);
INSERT INTO "timetable_events" VALUES(126,NULL,NULL,1,8);
INSERT INTO "timetable_events" VALUES(127,NULL,NULL,11,8);
INSERT INTO "timetable_events" VALUES(128,NULL,NULL,9,8);
INSERT INTO "timetable_events" VALUES(129,NULL,NULL,2,8);
INSERT INTO "timetable_events" VALUES(130,NULL,NULL,7,8);
INSERT INTO "timetable_events" VALUES(131,NULL,NULL,7,8);
INSERT INTO "timetable_events" VALUES(132,NULL,NULL,10,8);
INSERT INTO "timetable_events" VALUES(133,NULL,NULL,7,8);
INSERT INTO "timetable_events" VALUES(134,NULL,NULL,6,8);
INSERT INTO "timetable_events" VALUES(135,NULL,NULL,6,8);
INSERT INTO "timetable_events" VALUES(136,NULL,NULL,9,8);
INSERT INTO "timetable_events" VALUES(137,NULL,NULL,14,8);
INSERT INTO "timetable_events" VALUES(138,NULL,NULL,6,8);
INSERT INTO "timetable_events" VALUES(139,NULL,NULL,13,9);
INSERT INTO "timetable_events" VALUES(140,NULL,NULL,5,9);
INSERT INTO "timetable_events" VALUES(141,NULL,NULL,12,10);
INSERT INTO "timetable_events" VALUES(142,NULL,NULL,4,10);
INSERT INTO "timetable_events" VALUES(143,NULL,NULL,10,10);
INSERT INTO "timetable_events" VALUES(144,NULL,NULL,6,10);
INSERT INTO "timetable_events" VALUES(145,NULL,NULL,6,10);
INSERT INTO "timetable_events" VALUES(146,NULL,NULL,15,10);
INSERT INTO "timetable_events" VALUES(147,NULL,NULL,11,10);
INSERT INTO "timetable_events" VALUES(148,NULL,NULL,1,10);
INSERT INTO "timetable_events" VALUES(149,NULL,NULL,14,10);
INSERT INTO "timetable_events" VALUES(150,NULL,NULL,9,10);
INSERT INTO "timetable_events" VALUES(151,NULL,NULL,12,10);
INSERT INTO "timetable_events" VALUES(152,NULL,NULL,9,10);
INSERT INTO "timetable_events" VALUES(153,NULL,NULL,8,10);
INSERT INTO "timetable_events" VALUES(154,NULL,NULL,1,10);
INSERT INTO "timetable_events" VALUES(155,NULL,NULL,3,10);
INSERT INTO "timetable_events" VALUES(156,NULL,NULL,1,10);
INSERT INTO "timetable_events" VALUES(157,NULL,NULL,2,10);
INSERT INTO "timetable_events" VALUES(158,NULL,NULL,7,10);
INSERT INTO "timetable_events" VALUES(159,NULL,NULL,14,10);
INSERT INTO "timetable_events" VALUES(160,NULL,NULL,14,10);
INSERT INTO "timetable_events" VALUES(161,NULL,NULL,14,10);
INSERT INTO "timetable_events" VALUES(162,NULL,NULL,3,10);
INSERT INTO "timetable_events" VALUES(163,NULL,NULL,11,10);
INSERT INTO "timetable_events" VALUES(164,NULL,NULL,6,10);
INSERT INTO "timetable_events" VALUES(165,NULL,NULL,12,10);
INSERT INTO "timetable_events" VALUES(166,NULL,NULL,5,10);
INSERT INTO "timetable_events" VALUES(167,NULL,NULL,5,10);
INSERT INTO "timetable_events" VALUES(168,NULL,NULL,10,10);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('migrations',136);
INSERT INTO "sqlite_sequence" VALUES('modules',15);
INSERT INTO "sqlite_sequence" VALUES('events',30);
INSERT INTO "sqlite_sequence" VALUES('users',10);
INSERT INTO "sqlite_sequence" VALUES('user_modules',88);
INSERT INTO "sqlite_sequence" VALUES('timetables',10);
INSERT INTO "sqlite_sequence" VALUES('timetable_events',168);
INSERT INTO "sqlite_sequence" VALUES('user_timetables',55);
CREATE UNIQUE INDEX "users_email_unique" on "users" ("email");
CREATE UNIQUE INDEX "modules_code_unique" on "modules" ("code");
CREATE UNIQUE INDEX "events_group_module_id_name_unique" on "events" ("group", "module_id", "name");
CREATE UNIQUE INDEX "timetables_hash_unique" on "timetables" ("hash");
COMMIT;