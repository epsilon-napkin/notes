
```sql
-- 1. 检索 "张三" 老师所授课程的课程号和课程名. 
select C#, CNAME from C where TEACHER = '张三';

-- 2. 检索年龄大于 21 的男学生学号和姓名
select S#, SNAME from S where AGE > 21 and SEX = '男';

-- 3. 检索选修课程号为 K1 的学生学号
select S# from SC where C# = 'K1';

-- 4. 检索姓李的学生信息
select * from S where SNAME like '李%'; 

-- 5. 检索语言类课程的信息. (例如: C语言、Java语言等)
select * from C where CNAME like '%语言%';

-- 6. 检索选修课程号为 K1 的平均成绩. 
select AVG(GRADE) from SC where C# = 'K1';

-- 7. 检索每门课的最高分
select C#, MAX(GRADE) from SC group by C#;

-- 8. 检索每个学生的平均成绩
select S#, AVG(GRADE) from SC group by S#;

-- 9. 检索平均成绩大于60的学生学号
select S# from SC group by S# having AVG(GRADE) > 60;

-- 10. 检索选修每门课的学生人数
select C#, COUNT(S#) from SC group by C#;
```


