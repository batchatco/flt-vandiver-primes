import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 557` (irregular, indices [222]) — fast Q_i + fast irrListCert.
`ℓ = 24509`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 557) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 24509) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_557 : FermatLastTheoremFor 557 :=
  fltPrimeWitnessFast 557 24509 2 [222]
    (by native_decide) (by native_decide)
end FltVandiver
