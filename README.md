Title: 
Loops Sample - Variable Assignment and Arithmetic - Comparison Operators - File Test Operators - Making Your Bash Scripts Portable

Introduction:
In this sample, we will explore various concepts related to Bash scripting, including loops, variable assignment, arithmetic operations, comparison operators, file test operators, and best practices for making your Bash scripts portable across different environments.

1. Loops:
Bash supports several types of loops, such as "for" loops, "while" loops, and "until" loops. Below are examples of each:

a. For Loop:
```bash
# Example: Print numbers from 1 to 5 using a for loop
for i in {1..5}; do
    echo $i
done
```

b. While Loop:
```bash
# Example: Print numbers from 1 to 5 using a while loop
counter=1
while [ $counter -le 5 ]; do
    echo $counter
    ((counter++))
done
```

c. Until Loop:
```bash
# Example: Print numbers from 1 to 5 using an until loop
counter=1
until [ $counter -gt 5 ]; do
    echo $counter
    ((counter++))
done
```
2. Variable Assignment and Arithmetic:
In Bash, you can assign values to variables and perform arithmetic operations directly or using the `let` command.

```bash
# Example: Variable assignment and arithmetic
num1=10
num2=5

# Addition
result=$((num1 + num2))
echo "Addition: $result"

# Subtraction
result=$((num1 - num2))
echo "Subtraction: $result"

# Multiplication
result=$((num1 * num2))
echo "Multiplication: $result"

# Division (Note: Division in Bash returns an integer)
result=$((num1 / num2))
echo "Division: $result"
```

3. Comparison Operators:
Bash supports various comparison operators for conditional statements. Here are some examples:

```bash
# Example: Comparison operators
num1=10
num2=5

if [ $num1 -eq $num2 ]; then
    echo "Both numbers are equal"
elif [ $num1 -gt $num2 ]; then
    echo "num1 is greater than num2"
else
    echo "num2 is greater than num1"
fi
```

4. File Test Operators:
File test operators in Bash are used to check various attributes of files, such as existence, type, permissions, and more.

```bash
# Example: File test operators
file_path="/path/to/file.txt"

if [ -e "$file_path" ]; then
    echo "File exists"
fi

if [ -f "$file_path" ]; then
    echo "Regular file"
fi

if [ -d "$file_path" ]; then
    echo "Directory"
fi

if [ -r "$file_path" ]; then
    echo "Readable"
fi

if [ -w "$file_path" ]; then
    echo "Writable"
fi

if [ -x "$file_path" ]; then
    echo "Executable"
fi
```

5. Making Your Bash Scripts Portable:
To ensure your Bash scripts work across different environments and operating systems, follow these best practices:

- Use the shebang line (`#!/bin/bash`) at the beginning of your script to specify the Bash interpreter explicitly.
- Avoid using non-standard or non-portable Bash features. Stick to common Bash syntax and built-in commands.
- Use portable commands and utilities that are available on most Unix-like systems.
- When handling file paths, use `"$variable"` with double quotes to prevent word splitting and ensure proper handling of spaces in filenames.
- Test your scripts on different platforms to ensure compatibility.

Conclusion:
This sample covered essential topics related to Bash scripting, including loops, variable assignment, arithmetic operations, comparison operators, file test operators, and best practices for making your Bash scripts portable. By applying these concepts and following the recommended guidelines, you can create robust and cross-platform Bash scripts.
Happy Scripting
