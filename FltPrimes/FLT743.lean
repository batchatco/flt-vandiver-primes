import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 743` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1487`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 743) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1487) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_743 : FermatLastTheoremFor 743 :=
  fltPrimeWitnessFast 743 1487 5 []
    (by native_decide) (by native_decide)
end FltVandiver
