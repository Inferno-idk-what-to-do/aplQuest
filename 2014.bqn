# 1 -- check if two legs on left and hypot on right 
#      make a right triangle
RightTri ← {𝕩=⋈∘+´⌾(×˜¨)𝕨}
•Show 3‿4 RightTri 5
2‿3 RightTri 4

# 4 -- trim extra spaces
TrimSpaces ← ((∨`∧∨`⌾⌽)' '⊸≠)⊸/
TrimSpaces "  this  is a   test  "

# 5 -- check if letters form palindrome
LC ← +⟜(32×1="A["⊸⍋) # lowecase given string: from bqncrate
IsPalindrome ← {⌽⊸≡{𝕩∊'a'+↕26}⊸/LC𝕩}
IsPalindrome "a man, a plan, a canal, panama!"

# start of 6 ; abandoned due to lack of ⌸ in bqn
{∧⥊+´¨1+↕𝕩}6‿6

# 7 -- number of revs of circle diameter 𝕩 around diam 𝕨 to meet back
Revolutions ← {𝕨⊸•math.LCM⊸÷𝕩}

# 8 -- n-dimensional distance
Dist ← √·+´·×˜-
2‿2‿3‿4 Dist 3‿7‿10‿9

# 9 -- distance of projectile
#      𝕨 -> init velocity in m/s
#      𝕩 -> init anglee in deg
ProjDistance ← {9.8÷˜𝕨×𝕨×•math.Sin (π÷180)×2×𝕩}
100 ProjDistance 45

# 10 -- biggest month to month inc in percentage
BigInc ← {100×1-˜⌈´÷˜˝˘2↕𝕩}
BigInc ⟨101, 102, 114, 117, 101, 110, 102, 111, 118, 115, 124, 122⟩