import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 421` (irregular, indices [240]) — fast Q_i + fast irrListCert.
`ℓ = 4211`, base `t = 6` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 421) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4211) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_421 : FermatLastTheoremFor 421 :=
  fltPrimeWitnessFast 421 4211 6 [240]
    (by native_decide) (by native_decide)
end FltVandiver
