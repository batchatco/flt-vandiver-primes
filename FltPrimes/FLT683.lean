import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 683` (irregular, indices [32]) — fast Q_i + fast irrListCert.
`ℓ = 4099`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 683) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4099) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_683 : FermatLastTheoremFor 683 :=
  fltPrimeWitnessFast 683 4099 2 [32]
    (by native_decide) (by native_decide)
end FltVandiver
