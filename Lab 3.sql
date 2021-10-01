-- TASK 1
SELECT * FROM course WHERE credits > 3                       --a

SELECT * FROM classroom WHERE building = 'Watson' or building ='Packard' --b

SELECT * FROM course WHERE dept_name = 'Comp. Sci'           --c

SELECT * FROM section, course
WHERE course.course_id=section.course_id and section.semester = 'Fall'     --d

SELECT * FROM student WHERE tot_cred>=45  AND tot_cred<=90   --e

SELECT * FROM student WHERE name like '%a' or name like '%e' or name like '%o'
or name like '%u'
or name like '%i'                                            --f

SELECT * FROM prereq, course
WHERE course.course_id = prereq.course_id and prereq.prereq_id = 'CS-101'   --g

--TASK 2
SELECT dept_name, AVG (salary)                                          --a
FROM instructor
GROUP BY dept_name
ORDER BY AVG(salary) asc

SELECT building, count(*)                                               --b
FROM course, department
WHERE department.dept_name = course.dept_name
GROUP BY building
HAVING COUNT(*) = (select max(course_count)
                   from department,course
                   where department.dept_name = course.dept_name
                   group by building ));

SELECT building, count(*)                                               --c
FROM course, department
WHERE department.dept_name = course.dept_name
GROUP BY building
HAVING COUNT(*) = (select min(course_count)
                   from department,course
                   where department.dept_name = course.dept_name
                   group by building ));

SELECT student.name, takes.ID, count(takes.course_id)                     --d
FROM student, takes,course
WHERE student.id = takes.id and takes.course_id = course.course_id and course.dept_name = 'Comp. Sci.'
GROUP BY student.name, takes.ID
HAVING COUNT(takes.course_id ) > 3;

SELECT ID, name, dept_name                                              --e
FROM instructor
WHERE dept_name = 'Biology' or dept_name = 'Philosophy' or dept_name = 'Music'

SELECT name, year
FROM instructor
WHERE name not in (SELECT name
                   FROM instructor, teaches
                   WHERE instructor.id = teaches.id  and year = 2017);   --f

--TASK 3

SELECT name, ID, title                                       --a
FROM student, takes, course
WHERE student.ID = takes.ID and takes.course_id = course.course_id and course.dept_name = 'Comp. Sci.' and takes.grade in ('A', 'A-')
GROUP BY asc

SELECT name, s_ID, i_ID                                      --b
FROM advisor, student, takes
WHERE takes.id= advisor.s_ID and student.id = takes.id and takes.grades not in('A', 'A-', 'B+', 'B')

SELECT dept_name                                             --c
FROM course
WHERE dept_name not in (SELECT dept_name
                        FROM course, takes
                        WHERE course.course_id = takes.course_id and takes.grade in ('F', 'C'));

SELECT DISTINCT name                                                   --d
FROM instructor
WHERE name not in( SELECT name
                   FROM takes, teaches, instructor
                   WHERE instructor.ID= teaches.ID and teaches.course_id = takes.course_id and takes.grade = 'A');

SELECT DISTINCT course_id, title, start_hr, start_min, end_hr, end_min  --e
FROM time_slot, course, section
WHERE course.course_id = section.course_id and section.time_slot_id = time_slot.time_slot_id and end_hr < 13;