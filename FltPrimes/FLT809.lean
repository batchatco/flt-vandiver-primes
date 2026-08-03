import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 809` (irregular, indices [330, 628]) — fast Q_i + fast irrListCert.
`ℓ = 1619`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 809) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1619) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_809 : FermatLastTheoremFor 809 :=
  fltPrimeWitnessFast 809 1619 2 [330, 628]
    (by native_decide) (by native_decide)
end FltVandiver
