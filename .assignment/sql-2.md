
```sql
-- 1. 检索选修课程包含 "张三" 老师所授课程之一的学生学号
SELECT DISTINCT S# FROM SC WHERE C# IN (SELECT C# FROM C WHERE TEACHER = '张三');

-- 2. 检索至少选修两门课程的学生学号
SELECT S# FROM SC GROUP BY S# HAVING COUNT(*) >= 2;

-- 3. 检索选修课程号为 K1 和 K5 的学生学号
SELECT S# FROM SC WHERE C# = 'K1' INTERSECT SELECT S# FROM SC WHERE C# = 'K5';

-- 4. 检索选修课程名为 "C语言" 的学生学号和姓名
SELECT S.S#, S.SNAME FROM S, SC, C WHERE S.S# = SC.S# AND SC.C# = C.C# AND C.CNAME = 'C语言';

-- 5. 检索学号为3的学生所学课程的课程名与任课教师名
SELECT C.CNAME, C.TEACHER FROM SC, C WHERE SC.C# = C.C# AND SC.S# = '3';

-- 6. 检索选修课程包含 "张三" 老师所授课程之一的女学生姓名
SELECT DISTINCT S.SNAME FROM S, SC WHERE S.S# = SC.S# AND S.SEX = '女' AND SC.C# IN (SELECT C# FROM C WHERE TEACHER = '张三');

-- 7. 检索 "李四" 同学不学课程的课程号
SELECT C# FROM C WHERE C# NOT IN (SELECT SC.C# FROM SC, S WHERE SC.S# = S.S# AND S.SNAME = '李四');

-- 8. 检索选修全部课程的学生姓名
SELECT S.SNAME FROM S WHERE NOT EXISTS (
  SELECT C# FROM C WHERE NOT EXISTS (
    SELECT * FROM SC WHERE SC.S# = S.S# AND SC.C# = C.C#
  )
);

-- 9. 检索全部学生都选修课程名
SELECT C.CNAME FROM C WHERE NOT EXISTS (
  SELECT S# FROM S WHERE NOT EXISTS (
    SELECT * FROM SC WHERE SC.S# = S.S# AND SC.C# = C.C#
  )
);

-- 10. 检索既选修了 "张三" 老师某课程又选修了 "王二" 老师某课程的学生学号
SELECT DISTINCT SC1.S# FROM SC SC1, SC SC2, C C1, C C2 WHERE SC1.S# = SC2.S# AND SC1.C# = C1.C# AND C1.TEACHER = '张三' AND SC2.C# = C2.C# AND C2.TEACHER = '王二';
```
