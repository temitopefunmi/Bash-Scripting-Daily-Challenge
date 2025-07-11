#!/bin/bash

a=10
b=3

sum=$(( a + b ))
((diff=a - b))
((product=a * b))
((quotient=a / b))
((modulo=a % b))

echo "a = $a, b = $b"
echo "Sum = $sum"
echo "Difference = $diff"
echo "Product = $product"
echo "Quotient = $quotient"
echo "Modulo = $modulo"

read -p "Enter a number: " firstnum
read -p "Enter another number: " secondnum


##if [[ "$firstnum" ~= ^[0-9]+$ && "$secondnum" ~= ^[0-9]+$ ]]; then
if [[ $firstnum =~ ^[0-9]+$ && $secondnum =~ ^[0-9]+$ ]]; then
    ((result= firstnum + secondnum))
    echo "The sum of the two numbers are: $result"
else
    echo "Please enter a valid integer"
fi