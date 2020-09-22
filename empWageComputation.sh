#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

#Constants
WAGES_PER_HOUR=20
FULL_DAY_WORKHOURS=8

attendence=$((RANDOM%2))


if [[ $attendence -eq 1 ]]
then
	echo "Employee Present"
	dailyWages=$(($WAGES_PER_HOUR * $FULL_DAY_WORKHOURS))
else
	echo "Employee Absent"
fi

