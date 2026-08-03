import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 29` (regular) — fast Q_i + fast irrListCert.
`ℓ = 233`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 29) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 233) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_29 : FermatLastTheoremFor 29 :=
  fltPrimeWitnessFast 29 233 3 []
    (by native_decide) (by native_decide)
end FltVandiver
