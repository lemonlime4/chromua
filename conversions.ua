Filename ← "basic_conversions.ua"

# Ensure that bindings are named `XToY`
CheckAllBindings ↚ °{}▽⊸≡◇⍣(⋅⋅0°$"_To_"|1)

# Basic conversions that are already implemented
Basic ↚ $basic comptime(
  &frasFilename
  ▽⊜⍣(1 □⊙◌°$"_ ←_"|0 □"")⊸≠@\n
  ⍚▽⊸≠@\s
  ⟜CheckAllBindings
)

# All conversions
All ↚ $all ⍚/$"_To_"⧅₂≠ ◴⊂⍚°$"_To_" Basic

# Composite conversions that aren't implemented yet
Needed ↚ $needed ▽¬⊸∊ Basic All

Imports ↚ $"~ \"_\" ~ _"Filename /$"_ _" Basic

# Generate implementations for conversions
# impls $ needed basic
Impls ↚ ⍚(
  ⤙($impl ⧈⊟ ⍣°¤(⍤⊙0) path(▽∩♭≡⇌⊸∊⊙◌)≍ °⊟)
  /$"_ _"⇌ ⍚⨬(/$"°_To_"⇌|/$"_To_") ⊸∊
) ⊙¤ ∩(≡⊟⍚°$"_To_")

Bindings ↚ comptime(
  ⟜(Impls) Needed Basic
  /$"_\n_" ⍚$"# Track caller!\n_ ← _"
)

# Imports and generates conversions between all color spaces
GenerateConversions! ←^ ⋅($"_\n_"Imports Bindings)
