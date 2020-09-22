#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

#Constants
WAGES_PER_HOUR=20
FULL_DAY_WORKHOURS=8
PART_TIME_HOURS=4
attendence=$((RANDOM%3))


case $attendence in
	1)Wages=$(($WAGES_PER_HOUR * $FULL_DAY_WORKHOURS));
	
	2)Wages=$(($WAGES_PER_HOUR * $PART_TIME_HOURS));

	*)Wages=0
esac
	echo $attendence 
