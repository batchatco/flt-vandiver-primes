import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 461` (irregular, indices [196]) — fast Q_i + fast irrListCert.
`ℓ = 9221`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 461) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 9221) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_461 : FermatLastTheoremFor 461 :=
  fltPrimeWitnessFast 461 9221 2 [196]
    (by native_decide) (by native_decide)
end FltVandiver
