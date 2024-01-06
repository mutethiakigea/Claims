/* Importing the CSV file into the tsa permanent library */
FILENAME myfile '/home/u63491031/C.JEFFERSON/TSAClaims2002_2017.csv';

/* Import the CSV file into SAS */
PROC IMPORT DATAFILE=myfile
    OUT=tsa.claims 
    DBMS=CSV
    REPLACE;
    GETNAMES=YES; 
RUN;

/* Display the contents of the dataset using PROC PRINT */
PROC PRINT DATA=tsa.claims; 
RUN;
