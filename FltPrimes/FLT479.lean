import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 479` (regular) — fast Q_i + fast irrListCert.
`ℓ = 3833`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 479) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 3833) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_479 : FermatLastTheoremFor 479 :=
  fltPrimeWitnessFast 479 3833 3 []
    (by native_decide) (by native_decide)
end FltVandiver
