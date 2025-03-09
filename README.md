# chromua

Facilities for working with color in the [Uiua](https://uiua.org/) language.

Currently, there are only conversions between color spaces.

The examples are best viewed with the `--window` feature or on the pad.

## Color space conversions

There is a function `XToY` for any two of the following color spaces:

| Name | Color space |
| --- | --- |
| `Srgb` | sRGB |
| `Linear` | linear sRGB |
| `Oklab` | Oklab |
| `Oklch` | Oklch |
| `Hsv` | HSV-transformed sRGB |

Conversions require the input array to have (a leading axis of) length 3, instead of having a trailing axis of length 3. This makes it easier to operate on color channels (and also simplifies implementations).

The only exception is between `Srgb` and `Linear`, which takes a number array of any shape to allow converting grayscale images.