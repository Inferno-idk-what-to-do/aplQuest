# 1 -- first n odd numbers
Odds ← 1+2×↕
Odds 5

# 2 -- % of the grades that are passing
PassPercent ← 100×(+´65⊸≤)÷≠
PassPercent 25‿90‿100‿64‿65

# 4 -- check if parens are balanced
ParensBalanced ← ¬·(⊑¯1⊸∊∨0⊸≠∘⊑∘⌽)·+`('('⊸=-')'⊸=)
ParensBalanced "((2×3)+4)"

# 5 -- nxn identity matrix
IdMat ← =⌜˜↕
IdMat 5

# 6 -- diff between largest and smallest elem
MaxDiff ← (⌈´-⌊´)⥊
MaxDiff 2‿3⥊10‿20‿30‿40‿50‿60

# 7 -- filter out whole numbers
Floats ← ⌊⊸≠¨⊸/0⊸↓
Floats 14.2‿9‿¯3‿3.1‿0‿¯1.1

# 8 -- nxn multiplication table
MultTable ← ×⌜˜1+↕
MultTable 5

# 9 -- n-wise moving averages
Averages ← {𝕨÷˜+˝˘𝕨↕𝕩}
2 Averages 200‿300‿2700‿3400‿100‿2000‿400‿2100‿3500‿3000‿4700‿4300