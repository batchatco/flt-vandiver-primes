import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 881` (irregular, indices [162]) — fast Q_i + fast irrListCert.
`ℓ = 15859`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 881) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 15859) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_881 : FermatLastTheoremFor 881 :=
  fltPrimeWitnessFast 881 15859 2 [162]
    (by native_decide) (by native_decide)
end FltVandiver
