import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 571` (regular) — fast Q_i + fast irrListCert.
`ℓ = 5711`, base `t = 19` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 571) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5711) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_571 : FermatLastTheoremFor 571 :=
  fltPrimeWitnessFast 571 5711 19 []
    (by native_decide) (by native_decide)
end FltVandiver
