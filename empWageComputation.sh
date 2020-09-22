#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

#Constants
WAGES_PER_HOUR=20
FULL_DAY_WORKHOURS=8
PART_TIME_HOURS=4
attendence=$((RANDOM%3))


if [[ $attendence -eq 1 ]]
then
	dailyWages=$(($WAGES_PER_HOUR * $FULL_DAY_WORKHOURS));
	
elif [[ $attendence -eq 2 ]]
then
	partTimeWages=$(($WAGES_PER_HOUR * $PART_TIME_HOURS))
else
	echo "Employee Absent";
fi

