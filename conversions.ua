~ "base_conversions.ua"
    ~ OklabToLinear
    ~ SrgbToLinear

# Track caller!
LinearToSrgb ← °SrgbToLinear

# Track caller!
LinearToOklab ← °OklabToLinear

# Track caller!
OklabToSrgb ← LinearToSrgb OklabToLinear

# Track caller!
SrgbToOklab ← °OklabToSrgb
