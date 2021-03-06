⍝ Task 1:
⍝ You are given positive integers, $m and $n.
⍝ Write a script to find total count of divisors of $m having last digit $n.

Solution ← {divisors[⍸⍺ = 10 | divisors ← (∪⊢∨⍳) ⍵]} ⍝ (∪⊢∨⍳) is the equivalent of doing ∪ (⍵ ∨ ⍳⍵), or the unique members among the GCDs

2 Solution 24 ⍝ Returns 2 12
5 Solution 30 ⍝ Returns 5 15
