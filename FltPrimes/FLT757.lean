import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 757` (irregular, indices [514]) — fast Q_i + fast irrListCert.
`ℓ = 12113`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 757) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 12113) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_757 : FermatLastTheoremFor 757 :=
  fltPrimeWitnessFast 757 12113 3 [514]
    (by native_decide) (by native_decide)
end FltVandiver
