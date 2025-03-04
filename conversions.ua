~ "basic_conversions.ua" ~ Basic

# All conversions
All ↚ $all ⍚/$"_To_"⧅₂≠ ◴⊂⍚°$"_To_" Basic

# Composite conversions that aren't implemented yet
Needed ↚ $needed ▽¬⊸∊ Basic All

Imports ↚ comptime(
  /$"_ _" Basic
  ⊂"~ \"basic_conversions.ua\" ~ "
)

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
