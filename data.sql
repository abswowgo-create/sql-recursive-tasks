-- Sample data

INSERT INTO Departments VALUES 
(1, 'Отдел продаж'),
(2, 'IT отдел');

INSERT INTO Roles VALUES 
(1, 'Директор'),
(2, 'Менеджер'),
(3, 'Разработчик');

INSERT INTO Employees VALUES 
(1, 'Иван Иванов', NULL, 1, 1),
(2, 'Петр Петров', 1, 1, 2),
(3, 'Сергей Сергеев', 2, 2, 3),
(4, 'Алексей Алексеев', 2, 1, 2),
(5, 'Мария Иванова', 4, 2, 3);

INSERT INTO Projects VALUES 
(1, 'Проект A'),
(2, 'Проект B');

INSERT INTO Tasks VALUES 
(1, 'Задача 1: Подготовка отчета по продажам', 4, 1),
(2, 'Задача 14: Создание презентации для клиентов', 4, 1);

INSERT INTO EmployeeProjects VALUES 
(4, 1),
(2, 2);
