Check‼ ↚ ⌅(^1⟜^0|°^1⟜^0)

CheckType! ↚ Check‼(
  ⊸≠0type
  ⨬◌(
    ⨬(""|"characters"|"boxes"|"complexes")
    ⍤⊙0$"Argument must be an array of numbers, but it is _"
  )
)^0

CheckAll! ↚ Check‼(
  CheckType!∘
  ⊃(≠3⧻)△
  ⨬◌(
    ⍤⊙0$"Array must have length 3, but its shape is _"
  )
)^0

ToDegrees! ↚ CheckType!⌅(
  ⍜^0(×180/π)
| ⍜^0(×π/180)
)

# Track caller!
SrgbToLinear ← CheckType!⌅(
  ⍜⌵(⍜-× ⊃(÷12.92|ⁿ2.4÷1.055+0.055) ⤙≥0.04045)
| ⍜⌵(⍜-× ⊃(×12.92|-0.055×1.055ⁿ5/12) ⤙≥0.0031308)
)

# Track caller!
OklabToLinear ← CheckAll!⌅(
  [1_0.3963377774_0.2158037573
   1_¯0.1055613458_¯0.0638541728
   1_¯0.0894841775_¯1.291485548]
  ××..≡/+×⊙¤
  [4.0767416621_¯3.3077115913_0.2309699292
   ¯1.2684380046_2.6097574011_¯0.3413193965
   ¯0.0041960863_¯0.7034186147_1.707614701]
  ≡/+×⊙¤
| [0.4122214708_0.5363325363_0.0514459929
   0.2119034982_0.6806995451_0.1073969566
   0.0883024619_0.2817188376_0.6299787005]
  ⍜⌵°ⁿ₃≡/+×⊙¤
  [0.2104542553_0.793617785_¯0.0040720468
   1.9779984951_¯2.428592205_0.4505937099
   0.0259040371_0.7827717662_¯0.808675766]
  ≡/+×⊙¤
)

# Track caller!
OklabToOklch ← CheckAll!⌅(
  ⍜°⊟₃⊙⊃(⌵ℂ|˜∠)
| ⍜°⊟₃⊙(∩×⟜:⊙°˜∠)
)

# Track caller!
OklchToOklchd ← ToDegrees!⊣

# Track caller!
SrgbToHsv ← CheckAll!⍜⍉hsv

# Track caller!
HsvToHsvd ← ToDegrees!⊢

HsvToHsl ← CheckAll!⍜°⊟₃⊙⌅(
  ↥⊸↧₀ ÷⤚(⊙-:)⟜↧⟜¬⊸×¬÷₂
| ↥⊸↧₀ ×₂¬⤚÷⊸+×⊙⊸↧⊙⊸¬
)

HslToHsld ← ToDegrees!⊢

# Basic conversions
Basic ← {
  "SrgbToLinear"
  "OklabToLinear"
  "OklabToOklch"
  "OklchToOklchd"
  "SrgbToHsv"
  "HsvToHsvd"
  "HsvToHsl"
  "HslToHsld"
}
