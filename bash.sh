#!/bin/bash

factorial() {
    if [ $1 -eq 0 ]; then
        echo 1
        return
    fi

    result=1
    for ((i=1; i<=$1; i++)); do
        result=$((result * i))
    done
    echo $result
}

calculator() {
    echo "What calculation do you want to do? 1 for factorial, 2 for basic computation."
    read selection

    if [ $selection -eq 1 ]; then
        echo "Write the number you want to calculate its factorial:"
        read fac_num
        result=$(factorial $fac_num)
        echo "Factorial is: $result"
    elif [ $selection -eq 2 ]; then
        echo "What computation do you want to do? Options: +, -, /, *, %"
        read comp_selection
        echo "Give first number:"
        read first_num
        echo "Give second number:"
        read second_num

        if [ "$comp_selection" == "+" ]; then
            sum=$(($first_num + $second_num))
            echo "Sum is: $sum"
        elif [ "$comp_selection" == "-" ]; then
            diff=$(($first_num - $second_num))
            echo "Difference is: $diff"
        elif [ "$comp_selection" == "/" ]; then
            div=$(($first_num / $second_num))
            echo "Division is: $div"
        elif [ "$comp_selection" == "*" ]; then
            mul=$(($first_num * $second_num))
            echo "Multiplication is: $mul"
        elif [ "$comp_selection" == "%" ]; then
            mod=$(($first_num % $second_num))
            echo "Modulus is: $mod"
        else
            echo "Invalid selection"
        fi
    else
        echo "Invalid selection"
    fi
}

calculator
