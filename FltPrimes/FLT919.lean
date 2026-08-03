import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 919` (regular) — fast Q_i + fast irrListCert.
`ℓ = 25733`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 919) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 25733) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_919 : FermatLastTheoremFor 919 :=
  fltPrimeWitnessFast 919 25733 2 []
    (by native_decide) (by native_decide)
end FltVandiver
