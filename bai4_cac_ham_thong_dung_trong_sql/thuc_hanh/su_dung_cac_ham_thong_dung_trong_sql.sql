use student_management;
-- Hiển thị số lượng sinh viên ở từng nơi
select address, count(student_id) as 'số lượng học viên'
from student 
group by address;
-- Tính điểm trung bình các môn học của học viên bằng cách sử dụng AVG()
SELECT S.student_id,S.student_name, AVG(mark)
FROM Student S join mark M on S.Student_id = M.Student_id
GROUP BY S.Student_id, S.Student_name;
-- Hiển thị những bạn có điểm trung bình các môn học lơn hơn 15
SELECT S.student_id,S.student_name, AVG(mark)
FROM Student S join Mark M on S.student_id = M.student_id
GROUP BY S.student_id, S.student_name
HAVING AVG(mark) > 15;
-- Hiển thị các học viên có điểm trung bình lớn nhất
SELECT S.Student_id, S.Student_name, AVG(Mark)
FROM Student S join Mark M on S.Student_id = M.Student_id
GROUP BY S.Student_id, S.Student_name
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.Student_id); 