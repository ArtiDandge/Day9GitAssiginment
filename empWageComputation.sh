#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

#Constants
WAGES_PER_HOUR=20
FULL_DAY_WORKHOURS=8
PART_TIME_HOURS=4
DAYS_PER_MONTH=20

MAX_WORKING_DAYS=20;
MAX_WORKING_HOURS=100;
attendence=$((RANDOM%3))

#Variables
declare -i workDonePerDay
totalWorkingDays=0;
totalWorkingHours=0;

case $attendence in
	1)dailyWages=$(($WAGES_PER_HOUR * $FULL_DAY_WORKHOURS));;
	
	2)dailyWages=$(($WAGES_PER_HOUR * $PART_TIME_HOURS));;
	
	*)dailyWages=0
	
esac
	echo $dailyWages

MonthlyWage=$(($dailyWages * $DAYS_PER_MONTH));


while [[ $totalWorkingHours -lt $MAX_WORKING_HOURS && $totalWorkingDays -lt $MAX_WORKING_DAYS ]]
do
	((totalWorkingDays++));
	((totalWorkingHours++));
	Wages=$(($WAGES_PER_HOUR * ($totalWorkingDays * $totalWorkingHours)));
	#getting store per day work hours in Dictionary
	TotalWages[$totalWorkingDays]=$Wages;
done
	echo ${TotalWages[@]}
