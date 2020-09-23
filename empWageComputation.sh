#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

#Constants
WAGES_PER_HOUR=20
FULL_DAY_WORKHOURS=8
PART_TIME_HOURS=4
DAYS_PER_MONTH=20
attendence=$((RANDOM%3))


case $attendence in
	1)dailyWages=$(($WAGES_PER_HOUR * $FULL_DAY_WORKHOURS))
	  MonthlyWage=$(($dailyWages * $DAYS_PER_MONTH));;
	
	2)dailyWages=$(($WAGES_PER_HOUR * $PART_TIME_HOURS))
	 MonthlyWage=$(($dailyWages * $DAYS_PER_MONTH));;

	*)Wages=0
	 MonthlyWage=0

esac
	echo $MonthlyWage
