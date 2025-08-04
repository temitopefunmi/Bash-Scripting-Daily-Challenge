#!/bin/bash

#initialize filename
FILE=""

#ask user to select option
echo "Select an option"
options=("Parse JSON" "Grep Errors from Plain Text" "Parse CSV" "Remove Timestamps" "Count Log Levels" "Exit")

#function to extract the message field from each item in a JSON array.
extract_json_message () {
    read -p "Enter the filename: " FILE
    echo "Extracting 'message' field from $FILE..."
    jq '.[].message' $FILE
}

#function to search for the word "error" in a plain text file, case-insensitive.
grep_error() {
    read -p "Enter the filename: " FILE
    echo "Searching for 'error' in $FILE"
    grep -i "error" $FILE
}

#function to display the first n lines of a file or output.
parse_csv() {
    read -p "Enter the CSV filename: " FILE
    echo "Previewing first 5 rows of $FILE..."
    head -n 5 "$FILE"
}

#sed (stream editor) to remove timestamps from the beginning of each line.
#-E: Enables extended regular expressions, making the pattern syntax cleaner.
remove_timestamps() {
    read -p "Enter the filename: " FILE
    echo "Removing time stamps from $FILE"
    sed -E 's/^[0-9:\- ]+//' $FILE
}

#Counts the number of occurrences of each second word in the log file
count_log_levels() {
    read -p "Enter the filename: " FILE
    echo "Counting log levels in $FILE using awk..."
    awk '{print $2}' $FILE | sort | uniq -c
}

select option in "${options[@]}"
do
    case $REPLY in
        1) extract_json_message ;;
        2) grep_error ;;
        3) parse_csv ;;
        4) remove_timestamps ;;
        5) count_log_levels ;;
        6) exit 1 ;;
        *) echo "Invalid option! Try again"
    esac
done