import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 37` (smallest irregular, index 32) — uniform fast witness.
Kummer Case I (search-free, via `irrListCert 37 [32]`), not the Sophie-Germain route.
`ℓ = 149`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 37) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 149) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_37 : FermatLastTheoremFor 37 :=
  fltPrimeWitnessFast 37 149 2 [32]
    (by native_decide) (by native_decide)
end FltVandiver
