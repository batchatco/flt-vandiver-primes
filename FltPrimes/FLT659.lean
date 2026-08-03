import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 659` (irregular, indices [224]) — fast Q_i + fast irrListCert.
`ℓ = 1319`, base `t = 13` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 659) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1319) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_659 : FermatLastTheoremFor 659 :=
  fltPrimeWitnessFast 659 1319 13 [224]
    (by native_decide) (by native_decide)
end FltVandiver
