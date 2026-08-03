import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 137` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1097`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 137) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1097) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_137 : FermatLastTheoremFor 137 :=
  fltPrimeWitnessFast 137 1097 3 []
    (by native_decide) (by native_decide)
end FltVandiver
