{{ config(materialized="table") }}


with
    source_data as (
        select o.*, p.paymentdate, p.checknumber, p.amount
        from orders as o
        inner join payments as p on p.customernumber = o.customernumber
    )

select * from source_data
