import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 281` (regular) — fast Q_i + fast irrListCert.
`ℓ = 563`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 281) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 563) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_281 : FermatLastTheoremFor 281 :=
  fltPrimeWitnessFast 281 563 2 []
    (by native_decide) (by native_decide)
end FltVandiver
