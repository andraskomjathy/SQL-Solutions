--If there are even number of rows in a given table, select the top 2 rows, if there are odd number of rows, select the top three rows.

select NAME, ID from lower_10p where rownum <= ((select mod ((select count(*) from lower_10p),2)+2 from dual));