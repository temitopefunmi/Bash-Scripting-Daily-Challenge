#!/bin/bash

a=10.5
b=2.4

sum=$(echo "$a + $b" | bc)
prod=$(echo "$a * $b" | bc)
quotient=$(echo "scale=2; $a / $b" | bc)

echo "The first number is: $a"
echo "The second number is: $b"
echo "Sum: $sum" 
echo "Product: $prod"
echo "Quotient (to 2 decimal places): $quotient"