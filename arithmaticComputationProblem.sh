#!/bin/bash -x

# @Description : Arithmatic Computation Problem
# @Author : Akshay Dhananjay Barve
# @Version : 18.04.3 lts
# @Since : 6 March 2020 / Friday

declare -A storeResult
declare -a arrayElements
storeResult=(["1"]=0 ["2"]=0 ["3"]=0 ["4"]=0 )

function getInputs()
{
read -p "Enter First Number" numberOne
read -p "Enter Second Number" numberTwo
read -p "Enter Third Number" numberThree

findResult
}

function findResult()
{	# Expression a+b*c
	firstEquationResult=$(( $numberOne + $numberTwo * $numberThree ))
	storeResult[1]=$firstEquationResult

	# Expression a*b+c
	secondEquationResult=$(( $numberOne * $numberTwo + $numberThree ))
	storeResult[2]=$secondEquationResult

	# Expression c+a/b
	thirdEquationResult=$(($numberThree + $numberOne / $numberTwo ))
	storeResult[3]=$thirdEquationResult

	# Expression a%b+c
	fourthEquationResult=$(($numberOne % $numberTwo + $numberThree ))
	storeResult[4]=$fourthEquationResult
}

function readValuesToArray()
{
	for ((index=0; index<=${#storeResult[@]}; index++ ))
	do
		arrayElements[index]=${storeResult[$index]}
	done
	descendingSort
}

function descendingSort()
{
	temp=0
	for ((i=0; i<${#arrayElements[@]}; i++ ))
	do
		for ((j=i+1; j<${#arrayElements[@]}; j++ ))
		do
			if [[ ${arrayElements[i]} -lt ${arrayElements[j]} ]]
			then
				temp=${arrayElements[i]}
				arrayElements[i]=${arrayElements[j]}
				arrayElements[j]=$temp
			fi
		done
	done
	echo "Array In Descending Order.."${arrayElements[@]}
}
getInputs
readValuesToArray
