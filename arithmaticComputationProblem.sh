#!/bin/bash -x

# @Description : Arithmatic Computation Problem
# @Author : Akshay Dhananjay Barve
# @Version : 18.04.3 lts
# @Since : 6 March 2020 / Friday

declare -A storeResult
storeResult=(["result1"]=0 ["result2"]=0 ["result3"]=0 ["result4"]=0 )

function getInputs()
{
read -p "Enter First Number" numberOne
read -p "Enter Second Number" numberTwo
read -p "Enter Third Number" numberThree

firstEquation
secondEquation
thirdEquation
fourthEquation
}

function firstEquation()
{
	# Expression a+b*c
	firstEquationResult=$(( $numberOne + $numberTwo * $numberThree ))
	storeResult[result1]=$firstEquationResult
}

function secondEquation()
{
	# Expression a*b+c
	secondEquationResult=$(( $numberOne * $numberTwo + $numberThree ))
	storeResult[result2]=$secondEquationResult
}

function thirdEquation()
{
	# Expression c+a/b
	thirdEquationResult=`expr "scale=3; $numberThree + $numberOne / $numberTwo "|bc`
	storeResult[result3]=$thirdEquationResult
}
#thirdEquation

function fourthEquation()
{
	# Expression a%b+c
	fourthEquationResult=$(($numberOne % $numberTwo + $numberThree ))
	storeResult[result4]=$fourthEquationResult
}
getInputs
