INSERT INTO Publisher (namePubli, adress, phone) VALUES
('Penguin Books', '123 Main St', '3131114321'),
('OReilly Media', '456 Oak St', '3108754578'),
('McGraw-Hill', 'Av. Universidad 500', '3206547890'),
('Planeta', 'Calle Editorial 42', '3401234567');

INSERT INTO Book (bookId, title, namePubli) VALUES
(1, 'Database Systems', 'Penguin Books'),
(2, 'Learning SQL', 'OReilly Media'),
(3, 'Programación en Java', 'McGraw-Hill'),
(4, 'Python para Todos', 'Planeta'),
(5, 'Redes de Computadores', 'McGraw-Hill');

INSERT INTO Library_Branch (branchId, branchName, adress) VALUES
(1, 'Central Library', '789 Library St'),
(2, 'North Branch', '321 North Ave'),
(3, 'Programación en Java', 'McGraw-Hill'),
(4, 'Python para Todos', 'Planeta'),

INSERT INTO Borrower (cardNo, bname, adress, phone) VALUES
(100, 'Juan Perez', 'Calle 1 #23', '3157849654'),
(101, 'Maria Lopez', 'Calle 2 #45', '3304588743'),
(102, 'Carlos Sanchez', 'Calle 3 #67', '3201456789'),
(103, 'Ana Gomez', 'Calle 4 #89', '3109876543'),
(104, 'Luis Rodriguez', 'Calle 5 #12', '3001234567');

INSERT INTO Book_Copies (bookId, branchId, noOfCopies) VALUES
(1, 1, 5),
(1, 2, 2),
(2, 1, 3),
(3, 1, 4),
(3, 3, 1),
(4, 1, 5),
(4, 2, 2),
(5, 1, 3),
(5, 4, 1);

INSERT INTO Book_Loans (bookId, branchId, cardNo, dateOut, dueDate) VALUES
(1, 1, 100, '2025-09-01', '2025-09-15'),
(2, 1, 101, '2025-09-05', '2025-09-20'),
(3, 1, 102, '2025-09-08', '2025-09-22'),
(4, 2, 103, '2025-09-10', '2025-09-25'),
(5, 1, 104, '2025-09-12', '2025-09-27'),
(1, 2, 102, '2025-09-15', '2025-09-30');


INSERT INTO Author_Name (authNomId, fName, lName, bookId) VALUES
(1, 'Carlos', 'Gonzalez', 1),
(2, 'Ana', 'Martinez', 2),
(3, 'Julio', 'Reyes', 3),
(4, 'Claudia', 'Suarez', 4),
(5, 'Miguel', 'Arrieta', 5),
(6, 'Laura', 'Camacho', 1);
