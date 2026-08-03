import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 283` (irregular, indices [20]) — fast Q_i + fast irrListCert.
`ℓ = 1699`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 283) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1699) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_283 : FermatLastTheoremFor 283 :=
  fltPrimeWitnessFast 283 1699 3 [20]
    (by native_decide) (by native_decide)
end FltVandiver
