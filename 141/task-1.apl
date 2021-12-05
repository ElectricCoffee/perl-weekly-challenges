solution ← 10↑8{(⍺=≢¨⍵)/⍵}{(0=⍵|⍨⍳⍵)/⍳⍵}¨⍳100

⍝ Alternate solution where it's not just a single expression
Solve ← {
    Divisors ← {(0=⍵|⍨⍳⍵)/⍳⍵}
    FilterLen ← {(⍺=≢¨⍵)/⍵}
    ⍺ FilterLen Divisors¨⍳⍵
}

solution2 ← 10 ↑ 8 Solve 100
