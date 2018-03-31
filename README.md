# TPC-H Benchmark Query

## Introduction

The ojbective of this project is to understand how the industry or companies apply SQL to solve real business problems. I use MariaDB as the MySQL database management system and Linux Ubuntu as the operation system. Data files include customer.tbl, lineitem.tbl, part.tbl, partsupp.tbl, region.tbl,supplier.tbl, nation.tbl, and orders.tbl, which are compiled and generated from dbgen file. There are 21 sql files, each of which solves a specific business problem. The detailed description can be found [here](http://www.tpc.org/tpc_documents_current_versions/pdf/tpc-h_v2.17.3.pdf).

## Installation and Initialization 

1. Download TPC-H Tools [here](http://www.tpc.org/tpc_documents_current_versions/download_programs/tools-download-request.asp?bm_type=TPC-H&bm_vers=2.17.3&mode=CURRENT-ONLY)
2. Put the [makefile]( SQL-TPCH/makefile ) under dbgen folder. 
