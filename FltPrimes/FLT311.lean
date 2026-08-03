import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 311` (irregular, indices [292]) — fast Q_i + fast irrListCert.
`ℓ = 1867`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 311) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1867) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_311 : FermatLastTheoremFor 311 :=
  fltPrimeWitnessFast 311 1867 2 [292]
    (by native_decide) (by native_decide)
end FltVandiver
