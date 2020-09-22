#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

attendence=$((RANDOM%2))

if [[ $attendence -eq 1 ]]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
