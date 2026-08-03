import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 613` (irregular, indices [522]) — fast Q_i + fast irrListCert.
`ℓ = 6131`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 613) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 6131) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_613 : FermatLastTheoremFor 613 :=
  fltPrimeWitnessFast 613 6131 2 [522]
    (by native_decide) (by native_decide)
end FltVandiver
