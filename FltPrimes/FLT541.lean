import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 541` (irregular, indices [86]) — fast Q_i + fast irrListCert.
`ℓ = 9739`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 541) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 9739) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_541 : FermatLastTheoremFor 541 :=
  fltPrimeWitnessFast 541 9739 3 [86]
    (by native_decide) (by native_decide)
end FltVandiver
