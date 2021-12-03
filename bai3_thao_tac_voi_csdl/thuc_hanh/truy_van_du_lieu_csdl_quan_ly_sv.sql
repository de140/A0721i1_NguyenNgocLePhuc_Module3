-- Hiển thị danh sách tất cả các học viên
select * from student;

-- Hiển thị danh sách các học viên đang theo học.
select * from student where status = true;

-- Hiển thị danh sách các môn học có thời gian học nhỏ hơn 10 giờ
select * from subject where credit < 10 ;

-- Hiển thị danh sách học viên lớp A1
select S.student_id, S.student_Name, C.class_name
from Student S join Class C on S.Class_id = C.Class_iD
where C.Class_name = 'A1';

-- Hiển thị điểm môn CF của các học viên.
select S.Student_id, S.Student_name, Sub.Sub_name, M.Mark
from Student S join Mark M on S.Student_id = M.Student_id join Subject Sub on M.Sub_id = Sub.Sub_id
WHERE Sub.Sub_name = 'CF';