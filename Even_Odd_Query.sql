--If there are even number of rows in a given table, select the top 2 rows, if there are odd number of rows, select the top three rows.

select NAME, ID from upper_some_rows where rownum <= ((select mod ((select count(*) from upper_some_rows),2)+2 from dual));
