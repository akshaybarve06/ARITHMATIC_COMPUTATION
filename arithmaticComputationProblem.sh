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
	input
	firstEquationResult=$(( $numberOne + $numberTwo * $numberThree ))
}
firstEquation
