#!/usr/bin/python3


def print_last_digit(number):
    lastDigit = 0
    if number < 0:
        number = abs(number)

    lastDigit = number % 10

    print(lastDigit, end='')
    return(lastDigit)
    