import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 691` (irregular, indices [12, 200]) — fast Q_i + fast irrListCert.
`ℓ = 8293`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 691) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 8293) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_691 : FermatLastTheoremFor 691 :=
  fltPrimeWitnessFast 691 8293 2 [12, 200]
    (by native_decide) (by native_decide)
end FltVandiver
