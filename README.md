getdata-004
===========

Getting and Cleaning Data Course Project

## The raw data

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## A tidy data set

https://github.com/scottschreckengaust/getdata-004/blob/master/tidy.txt

## A code book describing each variable and its values in the tidy data set.

https://github.com/scottschreckengaust/getdata-004/blob/master/CodeBook.md

## An explicit and exact recipe you used to go from 1->2,3

	Hardware: iMac 27-inch, Mid 2011 3.4 GHz Intel Core i7 with 16 Gb 1333 MHz DDR3
	Operating System: OS X 10.9.3 (13D65)
	Software: R version 3.1.0 (2014-04-10) rev65387

Run this code:

https://github.com/scottschreckengaust/getdata-004/blob/master/run_analysis.R

**EXAMPLE**

* Open the "Terminal" application and type 'R' at the prompt:

		$ R

		R version 3.1.0 (2014-04-10) -- "Spring Dance"
		Copyright (C) 2014 The R Foundation for Statistical Computing
		Platform: x86_64-apple-darwin13.2.0 (64-bit)
		
		R is free software and comes with ABSOLUTELY NO WARRANTY.
		You are welcome to redistribute it under certain conditions.
		Type 'license()' or 'licence()' for distribution details.
		
		  Natural language support but running in an English locale
		
		R is a collaborative project with many contributors.
		Type 'contributors()' for more information and
		'citation()' on how to cite R or R packages in publications.
		
		Type 'demo()' for some demos, 'help()' for on-line help, or
		'help.start()' for an HTML browser interface to help.
		Type 'q()' to quit R.

* At the R prompt, type 'download.file(url="https://raw.githubusercontent.com/scottschreckengaust/getdata-004/master/run_analysis.R", method="curl", destfile="./run_analysis.R")':

		> download.file(url="https://raw.githubusercontent.com/scottschreckengaust/getdata-004/master/run_analysis.R", method="curl", destfile="./run_analysis.R")
		  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
		                                 Dload  Upload   Total   Spent    Left  Speed
		  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
		100  2018  100  2018    0     0   3222      0 --:--:-- --:--:-- --:--:--  3223

* At the R prompt, type 'source("./run_analysis.R")':

		> source("./run_analysis.R")
		  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
		                                 Dload  Upload   Total   Spent    Left  Speed
		  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  
		  0 59.6M    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
		  5 59.6M    5 3263k    0     0  2145k      0  0:00:28  0:00:01  0:00:27 2144k 
		 11 59.6M   11 6767k    0     0  2690k      0  0:00:22  0:00:02  0:00:20 2689k
		 19 59.6M   19 11.4M    0     0  3328k      0  0:00:18  0:00:03  0:00:15 3328k
		 29 59.6M   29 17.4M    0     0  3951k      0  0:00:15  0:00:04  0:00:11 3951k
		 40 59.6M   40 24.0M    0     0  4471k      0  0:00:13  0:00:05  0:00:08 5013k
		 53 59.6M   53 31.8M    0     0  5009k      0  0:00:12  0:00:06  0:00:06 5881k
		 68 59.6M   68 41.0M    0     0  5598k      0  0:00:10  0:00:07  0:00:03 7062k
		 85 59.6M   85 50.9M    0     0  6130k      0  0:00:09  0:00:08  0:00:01 8100k
		 99 59.6M   99 59.6M    0     0  6418k      0  0:00:09  0:00:09 --:--:-- 8646k
		100 59.6M  100 59.6M    0     0  6418k      0  0:00:09  0:00:09 --:--:-- 9104k


* Outputs the tidy data set as a text file.
