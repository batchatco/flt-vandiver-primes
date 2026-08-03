import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 521` (regular) — fast Q_i + fast irrListCert.
`ℓ = 16673`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 521) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 16673) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_521 : FermatLastTheoremFor 521 :=
  fltPrimeWitnessFast 521 16673 3 []
    (by native_decide) (by native_decide)
end FltVandiver
