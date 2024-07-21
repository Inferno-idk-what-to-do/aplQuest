# 1 -- list of building heights; get num visible
VisibleCount ← ≠∘⍷·⌈`0⊸↓
VisibleCount ⟨5, 5, 2, 10, 3, 15, 10⟩
VisibleCount 10

# 2 -- split num into int and fractional parts
NumParts ← ⌊⋈1⊸|
NumParts 1.234

# 4 -- get zodiac sign from year (1 BC (¯1) is 1 AD's (1) predecessor)
signs ← ⟨"Monkey", "Rooster", "Dog", "Pig", "Rat", "Ox", "Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat"⟩
ZodiacSign ← signs⊑˜12|(|⊸≠⊸+)
ZodiacSign 2005

# 5 -- get astrological sign from month‿day pair
# TODO bounds not working L
westernSigns ← ⟨"Capricorn", "Aquarius", "Pisces", "Aries", 
                "Taurus", "Gemini", "Cancer", "Leo", "Virgo", 
                "Libra", "Scorpio", "Sagittarius"⟩
# month‿day → day of the year
MDtD ← 12⊸×∘⊏+⊏∘⌽
WesternSign ← {westernSigns⊏˜⌊1-˜12÷˜10-˜MDtD𝕩}
WesternSign 10‿31

# 6 -- check if XML tags valid
XMLValid ← (0⊸=⊏∘⌽ ∧ ¬∘(¯1⊸∊∨∊˜⟜2))+`∘('<'⊸= - =⟜'>')
XMLValid "<name><first>Drake</first><last>Mallard</last></name>"
XMLValid "<"

# 7 -- right shift 𝕨 times
RShift ← {»⍟𝕨 𝕩}
3 RShift 1‿0‿1‿1‿1‿0‿1‿1

# 9 -- ¯1 if left before right, 0 if =, 1 if left later than right
DateEarlier ← {×⊏0∾˜0⊸≠⊸/𝕨-𝕩}
⟨2018, 4, 1, 12, 34, 56, 798⟩ DateEarlier ⟨2018, 4, 1, 12, 34, 56, 801⟩

# 10 -- check if words are anagrams w/o considering spaces
AnagramOf ← ≡○(∨(' '⊸≠⊸/))
"ALBERT EINSTEIN" AnagramOf "TEN ELITE BRAINS"
"mesas" AnagramOf "seam"