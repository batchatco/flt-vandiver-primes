import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 449` (regular) — fast Q_i + fast irrListCert.
`ℓ = 3593`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 449) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 3593) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_449 : FermatLastTheoremFor 449 :=
  fltPrimeWitnessFast 449 3593 3 []
    (by native_decide) (by native_decide)
end FltVandiver
