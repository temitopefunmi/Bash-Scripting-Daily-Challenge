read -p "Enter a number: " firstnum
read -p "Enter another number: " secondnum


##if [[ "$firstnum" ~= ^[0-9]+$ && "$secondnum" ~= ^[0-9]+$ ]]; then
if [[ $firstnum =~ ^[0-9]+$ && $secondnum =~ ^[0-9]+$ ]]; then
    ((result= firstnum + secondnum))
    echo "The sum of the two numbers are: $result"
else
    echo "Please enter a valid integer"
fi