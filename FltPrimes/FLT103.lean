import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 103` (irregular, indices [24]) — fast Q_i + fast irrListCert.
`ℓ = 619`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 103) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 619) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_103 : FermatLastTheoremFor 103 :=
  fltPrimeWitnessFast 103 619 2 [24]
    (by native_decide) (by native_decide)
end FltVandiver
