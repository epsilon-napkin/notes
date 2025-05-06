
---
title: 数据库原理及应用 Lesson 3
tag: [](/index.md)
---

### 一、SQL 概述
- **定义**：结构化查询语言（Structured Query Language）, 关系数据库的标准语言. 
- **特点**：
  - 综合统一：集 DDL、DML、DCL 于一体. 
  - 高度非过程化：只需指定 "做什么", 无需关心 "如何做". 
  - 面向集合操作：操作对象和结果可以是元组的集合. 
  - 多种使用方式：独立语言或嵌入式语言. 
  - 简洁易用：核心功能仅需 9 个动词（SELECT、CREATE、DROP、ALTER、INSERT、UPDATE、DELETE、GRANT、REVOKE）. 

### 二、数据定义（DDL）

#### 1. 模式定义
- **创建模式**：
  ```sql
  CREATE SCHEMA <模式名> AUTHORIZATION <用户名> [表/视图/授权定义];
  ```
- **删除模式**：
  ```sql
  DROP SCHEMA <模式名> [CASCADE|RESTRICT];
  ```

### 2. 表定义
- **创建表**：
  ```sql
  CREATE TABLE <表名> (
      <列名> <数据类型> [约束],
      [PRIMARY KEY (列名), FOREIGN KEY (列名) REFERENCES 表名(列名)]
  );
  ```
- **修改表**：
  ```sql
  ALTER TABLE <表名> ADD/DROP/ALTER COLUMN ...;
  ```
- **删除表**：
  ```sql
  DROP TABLE <表名> [CASCADE|RESTRICT];
  ```

### 3. 索引定义
- **创建索引**：
  ```sql
  CREATE [UNIQUE] [CLUSTER] INDEX <索引名> ON <表名>(列名 [次序]);
  ```
- **删除索引**：
  ```sql
  DROP INDEX <索引名>;
  ```

### 三、数据查询（DQL）

#### 1. 单表查询
- **基本语法**：
  ```sql
  SELECT [DISTINCT] <目标列> FROM <表名> 
  [WHERE <条件>] 
  [GROUP BY <列名> HAVING <条件>] 
  [ORDER BY <列名> [ASC|DESC]];
  ```
- **常用操作**：
  - 选择列：`SELECT Sname, Sage FROM Student;`
  - 条件过滤：`WHERE Sage < 20 AND Sdept='CS';`
  - 分组统计：`GROUP BY Sdept HAVING AVG(Grade) > 80;`
  - 排序：`ORDER BY Grade DESC;`

#### 2. 连接查询
- **等值连接**：
  ```sql
  SELECT Student.Sno, Sname FROM Student, SC 
  WHERE Student.Sno = SC.Sno;
  ```
- **外连接**：
  ```sql
  SELECT Student.Sno, Sname FROM Student LEFT JOIN SC ON Student.Sno = SC.Sno;
  ```

#### 3. 嵌套查询
- **IN 谓词**：
  ```sql
  SELECT Sname FROM Student 
  WHERE Sno IN (SELECT Sno FROM SC WHERE Cno='1');
  ```
- **EXISTS 谓词**：
  ```sql
  SELECT Sname FROM Student 
  WHERE EXISTS (SELECT * FROM SC WHERE Sno=Student.Sno AND Cno='1');
  ```

#### 4. 集合查询
- **并集**：`UNION`
- **交集**：`INTERSECT`
- **差集**：`EXCEPT`

### 四、数据更新（DML）

#### 1. 插入数据
```sql
INSERT INTO <表名> [(列名)] VALUES (值);
```

#### 2. 修改数据
```sql
UPDATE <表名> SET 列名=值 [WHERE 条件];
```

#### 3. 删除数据
```sql
DELETE FROM <表名> [WHERE 条件];
```

### 五、空值处理
- **判断空值**：`IS NULL` 或 `IS NOT NULL`
- **注意事项**：空值的运算结果仍为空值. 

### 六、视图
- **创建视图**：
  ```sql
  CREATE VIEW <视图名> AS SELECT 查询;
  ```
- **删除视图**：
  ```sql
  DROP VIEW <视图名>;
  ```
