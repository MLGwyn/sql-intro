CompanyDatabase> CREATE TABLE "Employees" (
 "FullName" TEXT,
 "Salary" INT,
 "JobPosition" TEXT,
 "PhoneExtension" INT,
 "IsPartTime" BOOL
 );

CompanyDatabase> select * from "Employees";
+---------------------+--------+--------------------+----------------+------------+
| FullName            | Salary | JobPosition        | PhoneExtension | IsPartTime |
|---------------------+--------+--------------------+----------------+------------|
| Lazy Larry          | 300    | Manager            | 1467           | True       |
| Ducky Orlando       | 600    | VOIP Engineer      | 1984           | False      |
| Chef Boyardee       | 300    | Cook               | 2004           | True       |
| Talented Timmy      | 600    | Software Developer | 1534           | False      |
| Rambunctious Rhonda | 500    | Costumer Service   | 2136           | False      |
| Motivated Mindy     | 350    | Human Resources    | 1086           | True       |
| Cookin Collin       | 400    | Cook               | 2390           | True       |
| Fair Frank          | 550    | Manager            | 2245           | False      |
| Mediocre Matt       | 250    | Customer Service   | 1235           | True       |
| Timid Tonya         | 450    | Software Developer | 2419           | False      |
+---------------------+--------+--------------------+----------------+------------+
SELECT 10
Time: 0.010s

//Below is where I fix the fact that I momentarily forgot the difference between a customer and a costumer .. 😅

//CompanyDatabase> UPDATE "Employees" SET "JobPosition" = 'Customer Service' WHERE "FullName" = 'Rambunctious Rhonda';
//You're about to run a destructive command.
//Do you want to proceed? (y/n): y
//Your call!
//UPDATE 1
//Time: 0.010s

CompanyDatabase> SELECT "FullName","PhoneExtension" FROM "Employees" WHERE "IsPartTime" = false;
+---------------------+----------------+
| FullName            | PhoneExtension |
|---------------------+----------------|
| Ducky Orlando       | 1984           |
| Talented Timmy      | 1534           |
| Fair Frank          | 2245           |
| Timid Tonya         | 2419           |
| Rambunctious Rhonda | 2136           |
+---------------------+----------------+
SELECT 5
Time: 0.006s

CompanyDatabase> INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
 VALUES ('NewHire Nick', 450, 'Software Developer', 1259, true);
INSERT 0 1
Time: 0.004s

CompanyDatabase> UPDATE "Employees" SET "Salary" = 500 WHERE "JobPosition" = 'Cook';
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
UPDATE 2
Time: 0.006s

CompanyDatabase> DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
DELETE 1
Time: 0.004s

CompanyDatabase> ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
ALTER TABLE
Time: 0.009s