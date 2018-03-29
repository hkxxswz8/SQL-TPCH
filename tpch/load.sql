
LOAD DATA LOCAL INFILE '/home/kaixiang/tpch/customer.tbl' INTO TABLE customer FIELDS TERMINATED BY '|';
LOAD DATA LOCAL INFILE '/home/kaixiang/tpch/orders.tbl' INTO TABLE orders FIELDS TERMINATED BY '|';
LOAD DATA LOCAL INFILE '/home/kaixiang/tpch/lineitem.tbl' INTO TABLE lineitem FIELDS TERMINATED BY '|';
LOAD DATA LOCAL INFILE '/home/kaixiang/tpch/nation.tbl' INTO TABLE nation FIELDS TERMINATED BY '|';
LOAD DATA LOCAL INFILE '/home/kaixiang/tpch/partsupp.tbl' INTO TABLE partsupp FIELDS TERMINATED BY '|';
LOAD DATA LOCAL INFILE '/home/kaixiang/tpch/part.tbl' INTO TABLE part FIELDS TERMINATED BY '|';
LOAD DATA LOCAL INFILE '/home/kaixiang/tpch/region.tbl' INTO TABLE region FIELDS TERMINATED BY '|';
LOAD DATA LOCAL INFILE '/home/kaixiang/tpch/supplier.tbl' INTO TABLE supplier FIELDS TERMINATED BY '|';

