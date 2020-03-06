#!/bin/bash -x

# @Description : Arithmatic Computation Problem
# @Author : Akshay Dhananjay Barve
# @Version : 18.04.3 lts
# @Since : 6 March 2020 / Friday

function input()
{
read -p "Enter First Number" numberOne
read -p "Enter Second Number" numberTwo
read -p "Enter Third Number" numberThree
}

function firstEquation()
{
	# Expression a+b*c
	input
	firstEquationResult=$(( $numberOne + $numberTwo * $numberThree ))
}
#firstEquation

function secondEquation()
{
	# Expression a*b+c
	input
	secondEquationResult=$(( $numberOne * $numberTwo + $numberThree ))
}
#secondEquation

function thirdEquation()
{
	# Expression c+a/b
	input
	thirdEquationResult=`expr "scale=3; $numberThree + $numberOne / $numberTwo "|bc`
}
thirdEquation
