import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 883` (regular) — fast Q_i + fast irrListCert.
`ℓ = 10597`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 883) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 10597) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_883 : FermatLastTheoremFor 883 :=
  fltPrimeWitnessFast 883 10597 5 []
    (by native_decide) (by native_decide)
end FltVandiver
