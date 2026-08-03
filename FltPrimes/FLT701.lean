import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 701` (regular) — fast Q_i + fast irrListCert.
`ℓ = 12619`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 701) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 12619) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_701 : FermatLastTheoremFor 701 :=
  fltPrimeWitnessFast 701 12619 2 []
    (by native_decide) (by native_decide)
end FltVandiver
