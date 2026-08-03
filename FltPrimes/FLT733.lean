import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 733` (regular) — fast Q_i + fast irrListCert.
`ℓ = 7331`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 733) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 7331) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_733 : FermatLastTheoremFor 733 :=
  fltPrimeWitnessFast 733 7331 2 []
    (by native_decide) (by native_decide)
end FltVandiver
