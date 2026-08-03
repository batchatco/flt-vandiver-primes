import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 643` (regular) — fast Q_i + fast irrListCert.
`ℓ = 10289`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 643) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 10289) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_643 : FermatLastTheoremFor 643 :=
  fltPrimeWitnessFast 643 10289 3 []
    (by native_decide) (by native_decide)
end FltVandiver
