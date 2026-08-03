import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 233` (irregular, indices [84]) — fast Q_i + fast irrListCert.
`ℓ = 1399`, base `t = 13` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 233) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1399) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_233 : FermatLastTheoremFor 233 :=
  fltPrimeWitnessFast 233 1399 13 [84]
    (by native_decide) (by native_decide)
end FltVandiver
