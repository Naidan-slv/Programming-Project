 #!/bin/bash

chmod -r Example_Mazes/good_empty_space.txt

echo -e "~~ Argument Tests ~~"

echo -n "Testing For Filename provided - "
if [ "$#" -ne 1 ]; then
    echo "Fail"
else
    echo "Pass"
fi

echo -n "Testing no arguments - "
./Maze > tmp
if grep -q "Usage: Maze <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing 2 arguments - "
./Maze x x > tmp
if grep -q "Usage: Maze <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -e "\n~~ File Handling~~"

echo -n "Testing bad filename - "
./Maze fake.csv > tmp
if grep -q "Error: Bad filename" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing bad data (Too Small) - "
timeout 0.3s ./Maze Example_Mazes/bad_1x1.txt > tmp
if grep -q "Error: Text file does not have expected format" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing bad data (Irregular Height) - "
timeout 0.3s ./Maze Example_Mazes/bad_irregular_height.txt > tmp
if grep -q "Error: Text file does not have a constant Height" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing bad data (Irregular Width) - "
timeout 0.3s ./Maze Example_Mazes/bad_irregular_width.txt > tmp
if grep -q "Error: Text file does not have a constant Width" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing bad data (Irrelevant Characters) - "
timeout 0.3s ./Maze Example_Mazes/bad_irrelevant_characters.txt > tmp
if grep -q "Error: Text file contains  unexpected Characters" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing bad data (Missing E) - "
timeout 0.3s ./Maze Example_Mazes/bad_missing_E.txt > tmp
if grep -q "Error: Text file does not have expected Characters" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing bad data (Missing S) - "
timeout 0.3s ./Maze Example_Mazes/bad_missing_S.txt > tmp
if grep -q "Error: Text file does not have expected Characters" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing bad data (Excessive S) - "
timeout 0.3s ./Maze Example_Mazes/bad_more_then_one_S.txt > tmp
if grep -q "Error: Text file does not have expected Characters" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing bad data (Excessive E) - "
timeout 0.3s ./Maze Example_Mazes/bad_more_then_one_E.txt > tmp
if grep -q "Error: Text file does not have expected Characters" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing bad data (Too Large) - "
timeout 0.3s ./Maze Example_Mazes/bad_too_big.txt > tmp
if grep -q "Error: Text file exceeds size limit" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


echo -n "--Sucess--"

echo -n "Testing option 2 (good SID) - "
timeout 0.2s ./Maze Example_Mazes/good_2x2.txt < Inputs/input2.in > tmp
if grep -q "W" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi




chmod +r Example_Mazes/good_empty_space.txt
rm -f tmp