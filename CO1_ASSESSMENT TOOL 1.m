1.Application: Hierarchical Tree Query Engine
A tree-processing engine reduces the problem size by half at each recursive level and
performs logarithmic work for query evaluation. Apply the substitution method to solve the
recurrence T(n)=T(n/2)+log⁡n. Expand the relation step-by-step and explain the recursion
depth. Derive the final asymptotic complexity and analyze its scalability. Interpret the result
using asymptotic notation.

# Report

## Title

**Application: Hierarchical Tree Query Engine – Solving the Recurrence Relation Using the Substitution Method**

## Aim

To solve the recurrence relation **T(n) = T(n/2) + log n** using the substitution method and determine its asymptotic time complexity.

## Objective

* To expand the recurrence relation step-by-step.
* To determine the recursion depth.
* To derive the asymptotic complexity.
* To analyze the scalability of the algorithm.

## Problem Statement

A hierarchical tree query engine reduces the problem size by half at each recursive level and performs logarithmic work for query evaluation. Solve the recurrence relation:

**T(n) = T(n/2) + log n**

using the substitution method and determine its asymptotic complexity.

## Algorithm

1. Read the value of **n**.
2. If **n ≤ 1**, return the base value.
3. Recursively call the function with **n/2**.
4. Add **log₂(n)** to the recursive result.
5. Display the computed value.
6. Print the theoretical time complexity.

## Source Code
```c
#include <stdio.h>
#include <math.h>
double recurrence(int n)
{
    if (n <= 1)
        return 1;
        return recurrence(n / 2) + log2(n);
}
int main()
{
    int n;
    printf("Enter the value of n: ");
    scanf("%d", &n);
    printf("T(%d) = %.2f\n", n, recurrence(n));
    printf("Time Complexity: Theta((log n)^2)\n");
    return 0;
}
## Sample Input
16
## Sample Output
Enter the value of n: 16
T(16) = 11.00
Time Complexity: Theta((log n)^2)
## Step-by-Step Expansion
Given,
**T(n) = T(n/2) + log n**
Expand once:
**T(n) = T(n/4) + log(n/2) + log n**
Expand again:
**T(n) = T(n/8) + log(n/4) + log(n/2) + log n**
After **k** expansions:
**T(n) = T(n/2ᵏ) + Σ log(n/2ⁱ)**
Since **n/2ᵏ = 1**,
**k = log₂n**
The summation evaluates to:
**Θ((log n)²)**
## Recursion Depth
The problem size is halved at every recursive call. 
Recursion depth:
**log₂n**
## Complexity Analysis
* Time Complexity: **Θ((log n)²)**
* Space Complexity: **Θ(log n)**
## Scalability Analysis
The algorithm scales efficiently because the input size is reduced by half at each recursive step. The recursion depth grows logarithmically, and each level performs logarithmic work, resulting in an overall time complexity of **Θ((log n)²)**.
## Result
The recurrence relation **T(n) = T(n/2) + log n** is successfully solved using the substitution method. The final asymptotic complexity is **Θ((log n)²)**, making the algorithm efficient and scalable for large input sizes.



2. Application: Big Data Analytics Pipeline
A data analytics pipeline processes input using T(n) = T(n−1) + log
n. Apply the substitution method to solve the recurrence. Expand
step-by-step and derive complexity. Analyze how the algorithm
scales. Interpret efficiency using asymptotic notation.
# Report

## Title
**Application: Big Data Analytics Pipeline – Solving the Recurrence Relation Using the Substitution Method**

## Aim
To solve the recurrence relation **T(n) = T(n − 1) + log n** using the substitution method and determine its asymptotic time complexity.

## Objective
* To apply the substitution method.
* To expand the recurrence relation step-by-step.
* To derive the asymptotic complexity.
* To analyze the scalability of the algorithm.

## Problem Statement
A big data analytics pipeline processes input using the recurrence relation:
**T(n) = T(n − 1) + log n**
Apply the substitution method to solve the recurrence. Expand it step-by-step, derive the final complexity, analyze scalability, and interpret the result using asymptotic notation.

## Algorithm
1. Read the input value **n**.
2. If **n ≤ 1**, return the base value.
3. Recursively compute **T(n − 1)**.
4. Add **log₂(n)** to the recursive result.
5. Display the computed value.
6. Print the theoretical time complexity.

## Source Code
```c

#include <stdio.h>
#include <math.h>
double recurrence(int n)
{
    if (n <= 1)
        return 1;
        return recurrence(n - 1) + log2(n);
}
int main()
{
    int n;
    printf("Enter the value of n: ");
    scanf("%d", &n);
    printf("T(%d) = %.2f\n", n, recurrence(n));
    printf("Time Complexity: Theta(n log n)\n");
    return 0;
}

## Sample Input
8

## Sample Output
Enter the value of n: 8
T(8) = 16.30
Time Complexity: Theta(n log n)

## Step-by-Step Expansion
Given,
**T(n) = T(n − 1) + log n**
Substitute repeatedly:
**T(n) = T(n − 2) + log(n − 1) + log n**
**T(n) = T(n − 3) + log(n − 2) + log(n − 1) + log n**
After **k** substitutions:
**T(n) = T(n − k) + Σ log(n − i)**
When the recursion reaches the base case:
**n − k = 1**
Therefore,
**k = n − 1**
Hence,
**T(n) = T(1) + log2 + log3 + ... + logn**
Using the logarithm identity,
**log2 + log3 + ... + logn = log(n!)**
Since,
**log(n!) = Θ(n log n)**
Therefore,
**T(n) = Θ(n log n)**

## Complexity Analysis
* **Time Complexity:** Θ(n log n)
* **Space Complexity:** Θ(n)

## Scalability Analysis
The recurrence reduces the problem size by one in every recursive call, producing **n** recursion levels. Each level performs logarithmic work, so the total running time grows as **Θ(n log n)**. The algorithm scales reasonably for moderate input sizes but is less efficient than divide-and-conquer approaches because it performs a recursive call for every value from **n** down to **1**.

## Result
The recurrence relation **T(n) = T(n − 1) + log n** is successfully solved using the substitution method. The final asymptotic time complexity is:
**Θ(n log n)**
This indicates that the algorithm's running time increases proportionally to **n log n**, making it suitable for medium-sized data analytics tasks.

