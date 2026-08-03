import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 491` (irregular, indices [292, 336, 338]) — fast Q_i + fast irrListCert.
`ℓ = 983`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 491) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 983) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_491 : FermatLastTheoremFor 491 :=
  fltPrimeWitnessFast 491 983 5 [292, 336, 338]
    (by native_decide) (by native_decide)
end FltVandiver
