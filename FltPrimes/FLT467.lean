import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 467` (irregular, indices [94, 194]) — fast Q_i + fast irrListCert.
`ℓ = 2803`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 467) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 2803) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_467 : FermatLastTheoremFor 467 :=
  fltPrimeWitnessFast 467 2803 2 [94, 194]
    (by native_decide) (by native_decide)
end FltVandiver
