/** Password is 'admin'*/
INSERT INTO users (id,username,password,email,apiKey) VALUES (1,"JoaoM","8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918","p@gmail.com","aasda");
INSERT INTO users (id,username,password,email,apiKey) VALUES (2,"root","8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918","pa@gmail.com","aasdassdf");
INSERT INTO users (id,username,password,email,apiKey) VALUES (3,"noob","8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918","pe@gmail.com","asddsadf");

INSERT INTO categories (id,title) VALUES (1,"SuperMarket");
INSERT INTO categories (id,title) VALUES (2,"Business");
INSERT INTO categories (id,title) VALUES (3,"Family");

INSERT INTO projects (id,name,color,creator,categoryRef) VALUES (1,"Gordon","#ff0000",1,1);
INSERT INTO projects (id,name,color,creator,categoryRef) VALUES (2,"Moreno","#ff0000",2,1);
INSERT INTO projects (id,name,color,creator,categoryRef) VALUES (3,"Cochran","#ff0000",3,3);
INSERT INTO projects (id,name,color,creator,categoryRef) VALUES (4,"Cobb","#ff0000",1,2);
INSERT INTO projects (id,name,color,creator,categoryRef) VALUES (5,"Morales","#ff0000",2,1);
INSERT INTO projects (id,name,color,creator,categoryRef) VALUES (6,"Fowler","#ff0000",3,2);
INSERT INTO projects (id,name,color,creator,categoryRef) VALUES (7,"Ferguson","#ff0000",2,2);
INSERT INTO projects (id,name,color,creator,categoryRef) VALUES (8,"Navarro","#ff0000",1,1);

INSERT INTO projectUsers VALUES (1,1,1);
INSERT INTO projectUsers VALUES (2,2,1);
INSERT INTO projectUsers VALUES (3,3,1);
INSERT INTO projectUsers VALUES (4,1,1);
INSERT INTO projectUsers VALUES (5,2,1);
INSERT INTO projectUsers VALUES (6,3,1);
INSERT INTO projectUsers VALUES (7,2,1);
INSERT INTO projectUsers VALUES (8,1,1);

INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (1,1,"Ipsum Corp.",1,25,1,2);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (2,2,"Metus Aenean Sed Corporation",1,23,1,2);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (3,3,"Magna Et Associates",1,31,1,2);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (4,4,"Neque Et Nunc Inc.",1,4,1,2);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (5,5,"Nunc Sit Foundation",1,5,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (6,6,"Sem Industries",1,6,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (7,7,"Tellus Suspendisse Sed Consulting",1,7,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (8,8,"Phasellus Vitae Industries",1,8,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (9,1,"Vivamus Consulting",1,9,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (10,2,"Nulla Vulputate Limited",1,10,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (11,3,"Eu Ligula Company",1,11,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (12,4,"Natoque LLC",1,12,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (13,5,"Quis Pede Foundation",1,13,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (14,6,"Curae; Phasellus Limited",1,14,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (15,7,"Vulputate LLC",1,15,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (16,8,"Dui Company",1,16,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (17,1,"Tempus Mauris Limited",1,17,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (18,3,"Quisque Consulting",1,18,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (19,2,"Orci Lacus Vestibulum Foundation",1,19,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (20,5,"Malesuada Augue Ltd",1,20,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (21,1,"Tellus Lorem Eu Associates",1,21,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (22,2,"Sodales Nisi PC",1,22,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (23,3,"Aenean Euismod LLP",1,23,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (24,4,"Lorem PC",1,24,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (25,8,"Rutrum Company",1,25,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (26,6,"Tortor Company",1,26,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (27,7,"Ad Litora Torquent Associates",1,27,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (28,8,"In Lobortis Tellus Associates",1,28,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (29,5,"Phasellus In PC",1,29,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (30,2,"A Corp.",1,30,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (31,3,"Aliquam Corp.",1,31,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (32,2,"Pede Incorporated",1,32,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (33,3,"Tempus Non Company",1,33,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (34,4,"Consequat Limited",1,34,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (35,1,"Vehicula Aliquet Libero Limited",1,35,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (36,1,"Ante Maecenas Mi LLP",1,36,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (37,5,"Dolor Dolor PC",1,37,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (38,6,"Dapibus Foundation",1,38,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (39,7,"Euismod Foundation",1,39,1,1);
INSERT INTO tasks (id,projectRef,information,priority,dateDue,isChecked,assignedTo) VALUES (40,8,"Orci Lacus Vestibulum Limited",1,40,1,1);
