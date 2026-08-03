import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 877` (irregular, indices [868]) — fast Q_i + fast irrListCert.
`ℓ = 15787`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 877) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 15787) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_877 : FermatLastTheoremFor 877 :=
  fltPrimeWitnessFast 877 15787 2 [868]
    (by native_decide) (by native_decide)
end FltVandiver
