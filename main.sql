/*Creating the relational column */
alter table Students add grade integer null;
update Students set grade = 1
where value>=9;
update Students set grade = 2 
where value>=10;
update Students set grade = 3 
where value>=20;
update Students set grade = 4 
where value>=30;
update Students set grade = 5
where value>=40;
update Students set grade = 6
where value>=50;
update Students set grade = 7
where value>=60;
update Students set grade = 8 
where value>=70;
update Students set grade = 9 
where value>=80;
update Students set grade = 10 
where value>=90;

/*Creating the output table*/

create table OUTPUT_table as
SELECT Students.name,Students.grade,Students.Value 
FROM students JOIN Notes 
ON Students.grade = Notes.grade ORDER by Students.Value DESC;


/*update the table when the grade is less than 7*/

UPDATE OUTPUT_table set Name = 'NULL'
where OUTPUT_table.grade<=7;

/*Sort the table*/

SELECT * FROM OUTPUT_table order by CASE
when OUTPUT_table.value>=80 then OUTPUT_table.Value END DESC,
CASE when OUTPUT_table.Value<80 THEN OUTPUT_table.grade END DESC; 
