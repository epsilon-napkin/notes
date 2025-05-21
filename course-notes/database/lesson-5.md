
---
title: 数据库原理及应用 Lesson 5
tag: [](/index.md)
---

### 5.1 数据库完整性概述  
#### 5.1.1 完整性与安全性的区别  
- **完整性**: 防止数据库中存在不符合语义的数据, 确保数据的正确性和相容性.  
  - 防范对象: 不正确的数据  
  - 示例: 学号唯一, 性别只能是"男"或"女"  
- **安全性**: 保护数据库防止非法存取和破坏.  
  - 防范对象: 非法用户和操作  

#### 5.1.2 完整性约束条件  
DBMS 需提供:  
1. 定义完整性约束的机制 (如 PRIMARY KEY, FOREIGN KEY).  
2. 完整性检查方法 (在 INSERT/UPDATE/DELETE 后触发).  
3. 违约处理 (拒绝/级联/设置为空值).  

---

### 5.2 实体完整性  
#### 5.2.1 定义  
- 主码唯一且非空, 通过 `PRIMARY KEY` 定义:  
  ```sql
  -- 列级定义
  CREATE TABLE Student (Sno CHAR(9) PRIMARY KEY, ...);
  
  -- 表级定义 (多属性主码必须用表级)
  CREATE TABLE SC (Sno CHAR(9), Cno CHAR(4), PRIMARY KEY(Sno, Cno));
  ```

#### 5.2.2 检查与违约处理  
- **检查**: 插入或修改主码时自动检查唯一性和非空性.  
- **优化**: 通过主码索引避免全表扫描.  

---

### 5.3 参照完整性  
#### 5.3.1 定义  
- 外码通过 `FOREIGN KEY REFERENCES` 定义:  
  ```sql
  CREATE TABLE SC (
    Sno CHAR(9) REFERENCES Student(Sno),  -- 列级
    FOREIGN KEY (Cno) REFERENCES Course(Cno)  -- 表级
  );
  ```

#### 5.3.2 违约处理  
| 操作类型       | 处理方式                  |  
|----------------|--------------------------|  
| 参照表插入/修改 | 拒绝 (默认)               |  
| 被参照表删除/修改 | 拒绝 / 级联 (CASCADE) / 设置为空值 (SET NULL) |  

**示例**:  
```sql
FOREIGN KEY (Sno) REFERENCES Student(Sno) 
ON DELETE CASCADE  -- 级联删除
ON UPDATE CASCADE; -- 级联更新
```

---

### 5.4 用户定义的完整性  
#### 5.4.1 属性级约束  
- **NOT NULL**: 非空约束.  
- **UNIQUE**: 唯一约束.  
- **CHECK**: 条件约束.  
  ```sql
  CREATE TABLE Student (
    Ssex CHAR(2) CHECK(Ssex IN ('男', '女')  -- 性别限制
  );
  ```

#### 5.4.2 元组级约束  
- 跨属性的条件约束:  
  ```sql
  CHECK (Ssex='女' OR Sname NOT LIKE 'Ms.%')  -- 男性名字不以 Ms. 开头
  ```

---

### 5.5 完整性约束命名与修改  
#### 5.5.1 命名约束  
```sql
CREATE TABLE Student (
  Sno NUMERIC(6) CONSTRAINT C1 CHECK (Sno BETWEEN 90000 AND 99999)
);
```

#### 5.5.2 修改约束  
```sql
ALTER TABLE Student DROP CONSTRAINT C1;  -- 删除约束
ALTER TABLE Student ADD CONSTRAINT C1 CHECK (Sno > 100000);  -- 新增约束
```

---

### 5.6 断言 (Assertion)  
- 定义跨表的复杂约束:  
  ```sql
  CREATE ASSERTION ASSE_SC_DB_NUM  -- 限制数据库课程选修人数≤60
  CHECK (60 >= (SELECT COUNT(*) FROM SC, Course 
                WHERE SC.Cno=Course.Cno AND Course.Cname='数据库'));
  ```

---

### 5.7 触发器 (Trigger)  
#### 5.7.1 定义  
```sql
CREATE TRIGGER SC_T  -- 记录分数增长超过10%的修改
AFTER UPDATE OF Grade ON SC
REFERENCING OLDROW AS OldTuple, NEWROW AS NewTuple
FOR EACH ROW
WHEN (NewTuple.Grade >= 1.1*OldTuple.Grade)
    INSERT INTO SC_U VALUES(OldTuple.Sno, OldTuple.Cno, OldTuple.Grade, NewTuple.Grade);
```

#### 5.7.2 执行顺序  
1. 执行 BEFORE 触发器.  
2. 执行触发语句 (INSERT/UPDATE/DELETE).  
3. 执行 AFTER 触发器.  

#### 5.7.3 删除触发器  
```sql
DROP TRIGGER SC_T ON SC;
```

---

### 5.8 小结  
- **完整性机制**: 约束定义 → 检查 → 违约处理.  
- **关键约束类型**:  
  - 实体完整性 (主码).  
  - 参照完整性 (外码).  
  - 用户定义完整性 (CHECK/触发器).  
- **高级特性**: 断言和触发器可实现复杂业务规则.
