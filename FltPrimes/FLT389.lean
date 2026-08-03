import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 389` (irregular, indices [200]) — fast Q_i + fast irrListCert.
`ℓ = 14783`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 389) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 14783) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_389 : FermatLastTheoremFor 389 :=
  fltPrimeWitnessFast 389 14783 5 [200]
    (by native_decide) (by native_decide)
end FltVandiver
