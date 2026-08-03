import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 331` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1987`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 331) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1987) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_331 : FermatLastTheoremFor 331 :=
  fltPrimeWitnessFast 331 1987 2 []
    (by native_decide) (by native_decide)
end FltVandiver
