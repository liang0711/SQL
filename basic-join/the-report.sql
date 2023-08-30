--Problem Statement
/*
you are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.*/

--Solution

SELECT IF(GRADES.GRADE>=8, STUDENTS.NAME, NULL),GRADES.GRADE, STUDENTS.MARKS
FROM GRADES, STUDENTS
WHERE STUDENTS.MARKS BETWEEN GRADES.MIN_MARK AND GRADES.MAX_MARK
ORDER BY GRADES.GRADE DESC, STUDENTS.NAME;

https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

/*

Notes:
case statement to selct the specific grade ; 
when you full join-> each record in student will assgin each grade recorde, such that we can use where clause to select the marks we aim for 

*/
