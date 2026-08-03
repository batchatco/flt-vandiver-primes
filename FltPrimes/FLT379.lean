import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 379` (irregular, indices [100, 174]) — fast Q_i + fast irrListCert.
`ℓ = 4549`, base `t = 6` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 379) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4549) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_379 : FermatLastTheoremFor 379 :=
  fltPrimeWitnessFast 379 4549 6 [100, 174]
    (by native_decide) (by native_decide)
end FltVandiver
