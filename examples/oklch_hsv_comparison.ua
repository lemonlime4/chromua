~ "git: github.com/lemonlime4/chromua" ~ HsvToOklch HsvToSrgb OklchToSrgb SrgbToOklab

# Hue offset
H₀ ← τ/6
# Saturation
S ← 0.6
# Value
V ← 0.7

⊂⊂⊙(S V) +H₀ ¤×τ÷⟜⇡700
↯100⍉ HsvToSrgb
$hsv

⊂⊙⊂(0 0) ¤×τ÷⟜⇡700
+HsvToOklch H₀_S_V # align start colors
↯100⍉ OklchToSrgb
$oklch
