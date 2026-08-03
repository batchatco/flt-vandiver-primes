import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 277` (regular) — fast Q_i + fast irrListCert.
`ℓ = 4987`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 277) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4987) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_277 : FermatLastTheoremFor 277 :=
  fltPrimeWitnessFast 277 4987 2 []
    (by native_decide) (by native_decide)
end FltVandiver
