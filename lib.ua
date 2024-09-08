~ "conversions.ua"
~ SrgbToLinear
~ OklabToLinear

# Track caller!
LinearToSrgb ← °SrgbToLinear

# Track caller!
LinearToOklab ← °OklabToLinear

# Track caller!
OklabToSrgb ← LinearToSrgb OklabToLinear

# Track caller!
SrgbToOklab ← °OklabToSrgb
