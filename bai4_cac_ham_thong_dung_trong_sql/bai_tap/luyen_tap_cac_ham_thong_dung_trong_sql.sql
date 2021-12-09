use student_management;
-- Hiển thị môn học có credit lớn nhất
select sub_id,sub_Name,max(credit) as max_credit from `subject`;
-- Hiển thị môn học có điểm thi lớn nhất
select subject.sub_id,subject.sub_name,max(mark)  
from `subject` 
inner join mark on subject.sub_id=mark.sub_id;
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select s.student_id, s.student_name, avg(mark) as diem_trung_binh from student s join mark m on s.student_id=m.student_id
group by s.student_id, s.student_name;