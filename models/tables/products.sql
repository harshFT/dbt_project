with cte as 
(
SELECT 
CATEGORYID,
PRODUCTNAME,
SUPPLIERID,
PRODUCTID
FROM PC_FIVETRAN_DB.SQL_SERVER_DBO.products
where _FIVETRAN_DELETED= 'FALSE'
)

select * from cte