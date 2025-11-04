# english-uncategorized-sql
I've switched to managing usages with sql.
If you want to import the data to your database, create a database and a table and then dump the sql file. Since it has only the scheme data of the table, you need to import the csv file to access the data using sql.

Refer to the following commands if necessary.

Create a database and a table
```
CREATE DATABASE english_uncategorized;
```
Notes: Press control + D to exit the mysql console.

Dump the sql file.
```
mysql -u root -p english_uncategorized < ./english_uncategorized_sql_scheme.sql
```

Long in to the database we've created earlier and load the csv file.
```
LOAD DATA INFILE './uncategorized.csv' INTO TABLE uncategorized FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
```

Export a csv file.
```
SELECT * FROM uncategorized INTO OUTFILE target_file FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';
```

