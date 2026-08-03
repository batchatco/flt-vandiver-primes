import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 653` (irregular, indices [48]) — fast Q_i + fast irrListCert.
`ℓ = 1307`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 653) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1307) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_653 : FermatLastTheoremFor 653 :=
  fltPrimeWitnessFast 653 1307 2 [48]
    (by native_decide) (by native_decide)
end FltVandiver
