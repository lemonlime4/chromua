~ "git: github.com/lemonlime4/chromua" ~ SrgbToOklab

Gradient! ← (
  ¤÷-1⟜⇡700
  ⍉⍜⊙∩^0⍜⊙-×
  ↯100
)

# red to green
[1 0 0] [0 1 0]
⊃($oklab Gradient!SrgbToOklab
| $srgb Gradient!∘
)

# yellow to blue
[1 1 0] [0 0 1]
⊃($oklab Gradient!SrgbToOklab
| $srgb Gradient!∘
)

# white to blue
[1 1 1] [0 0 1]
⊃($oklab Gradient!SrgbToOklab
| $srgb Gradient!∘
)
