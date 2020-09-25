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
declare -A TotalWages
totalWorkingDays=0;
totalWorkingHours=0;

#function to get work hours
function getWorkHours() {
	case $1 in 
		1) workHours=4;;
		2) workHours=8;;
		*) workHours=0;;
	esac
	echo $workHours;
}

#display daily and monthly wage
getWorkHours $attendence
dailyWages=$(($WAGES_PER_HOUR * $workHours))
monthlyWages=$(($dailyWages * $DAYS_PER_MONTH))

#compute wages till it reachec max condition
while [[ $totalWorkingHours -lt $MAX_WORKING_HOURS && $totalWorkingDays -lt $MAX_WORKING_DAYS ]]
do
	((totalWorkingDays++));
	((totalWorkingHours++));
	workDonePerDay=$(( $(getWorkHours $attendence) ))
	totalWorkingHours=$((totalWorkingHours +  workDonePerDay))
	Wages=$(($WAGES_PER_HOUR * $totalWorkingHours));
	#getting store per day work hours in Dictionary
	TotalWages[$totalWorkingDays]=$(($Wages + $dailyWages));
done

echo "keys" ${!TotalWages[@]}
echo "Wages" ${TotalWages[@]} 
