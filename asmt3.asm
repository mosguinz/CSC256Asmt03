# CSC 256
# 2023-09-13
# Name:		    Mos Kullathon
# Description:	Assignment 3

# Translate the following statements in the MARs:


# 1)print out “please input the value of variable a:”

.data
prompt_a: .asciiz "please input the value of variable a: "

.text
    li      $v0,    4                                       # print_string
    la      $a0,    prompt_a
    syscall 

# 2)input an integer and assign it to a

    li      $v0,    5                                       # read_int
    syscall 
    move    $t1,    $v0                                     # a = $t1

# 3)print out “please input the value of variable b:”

.data
prompt_b: .asciiz "please input the value of variable b: "

.text
    li      $v0,    4                                       # print_string
    la      $a0,    prompt_b
    syscall 

# 4)input integer and assign it to b

    li      $v0,    5                                       # read_int
    syscall 
    move    $t2,    $v0                                     # b = $t2

# 5)compare a,b
# Here, we store the larger value in $t3.

    bge     $t1,    $t2,        l1
    move    $t3,    $t2
    j       print

l1:	move $t3, $t1

# 6)print out “the larger value of a,b is ” + the value

print:

.data
results: "the larger value of a,b is "

.text
    li      $v0,    4                                       # print_string
    la      $a0,    results
    syscall 

    li      $v0,    1                                       # print_int
    move    $a0,    $t3
    syscall 
