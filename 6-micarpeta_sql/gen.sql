USE generation;
SELECT Students.*, idtypes.name 
fROM Students  
INNER JOIN idtypes 
ON idtypes.id_idTypes= students.IdType_id;


-- 3
SELECT Students.*, idtypes.name, courses_has_students.course_code 
FROM Students 
INNER JOIN idtypes 
ON Students.IdType_id = idtypes.id_idtypes
INNER JOIN courses_has_students 
ON Students.idStudent = courses_has_students.students_id_student;



-- 4

SELECT courses_has_students.* , courses.name, 
courses.credits, courses.module_code 
FROM courses_has_students 
INNER JOIN courses 
ON courses_has_students.course_code = courses.code ;

--

