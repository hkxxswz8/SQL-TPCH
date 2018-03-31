# TPC-H Benchmark Query

## Introduction

The ojbective of this project is to understand how the industry or companies apply SQL to solve real business problems. I use MariaDB as the MySQL database management system and Linux Ubuntu as the operation system. Data files include customer.tbl, lineitem.tbl, part.tbl, partsupp.tbl, region.tbl,supplier.tbl, nation.tbl, and orders.tbl, which are compiled and generated from dbgen file. There are 21 sql files, each of which solves a specific business problem. The detailed description can be found [here](http://www.tpc.org/tpc_documents_current_versions/pdf/tpc-h_v2.17.3.pdf).

## Generate and Compile the Data

1. Download TPC-H Tools [here](http://www.tpc.org/tpc_documents_current_versions/download_programs/tools-download-request.asp?bm_type=TPC-H&bm_vers=2.17.3&mode=CURRENT-ONLY)
2. Create a folder named "sqltpch", and put the downloaded folder in it. 
3. Put the [makefile](https://github.com/hkxxswz8/SQL-TPCH/blob/master/makefile) under dbgen folder. 
4. Under the terminal proceed to dggen folder using
```
$ cd /home/kaixiang/sqltpch/2.17.3/dbgen
```
5. Do make. 
```
make
```
6. Generate .tbl files.
```
./dbgen -s 1
```
7. Create a folder named "tpch" under "sqltpch" and put the following files in the folder:
* *dss.sql* - table definition file
* *load.sql* - load script to load dbgen generated data
* *dss_ri.sql* - foreign key dependencies

8. Copy all generated tbl file to the 'tpch' folder.
9. Proceed to the above folder:
```
$ cd home/kaixiang/sqltpch/tpch
```
10. Open load.sql, and change all the paths of the tbl file to the above dierectory and save.
11. Start MySQL client:
```
$ mysql -u root -p 
```
12. After logging in, create a database and use it:
```
$ create database tpch;
$ use tpch;
```
13. Create tables:
```
$ source dss.sql;
```
14. Load data:
```
source load.sql;
```
15. Add foreign key dependencies:
```
source dss_ri.sql;
```

Now all the data has been loaded into the database and be ready to query. 
