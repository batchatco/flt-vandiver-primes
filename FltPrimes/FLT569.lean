import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 569` (regular) — fast Q_i + fast irrListCert.
`ℓ = 6829`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 569) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 6829) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_569 : FermatLastTheoremFor 569 :=
  fltPrimeWitnessFast 569 6829 2 []
    (by native_decide) (by native_decide)
end FltVandiver
