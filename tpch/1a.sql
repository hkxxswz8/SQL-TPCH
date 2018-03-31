-- $ID$
-- TPC-H/TPC-R Pricing Summary Report Query (Q1)
-- Functional Query Definition
-- Approved February 1998

select
	L_RETURNFLAG,
	L_LINESTATUS,
	sum(L_QUANTITY) as sum_qty,
	sum(L_EXTENDEDPRICE) as sum_base_price,
	sum(L_EXTENDEDPRICE * (1 - L_DISCOUNT)) as sum_disc_price,
	sum(L_EXTENDEDPRICE * (1 - L_DISCOUNT) * (1 + L_TAX)) as sum_charge,
	avg(L_QUANTITY) as avg_qty,
	avg(L_EXTENDEDPRICE) as avg_price,
	avg(L_DISCOUNT) as avg_disc,
	count(*) as count_order
from
	lineitem
where
	L_SHIPDATE <= date '1998-12-01' - interval ':1' day (3)
group by
	L_RETURNFLAG,
	L_LINESTATUS
order by
	L_RETURNFLAG,
	L_LINESTATUS;

