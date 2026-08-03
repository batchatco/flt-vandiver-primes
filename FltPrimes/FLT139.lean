import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 139` (regular) — fast Q_i + fast irrListCert.
`ℓ = 557`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 139) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 557) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_139 : FermatLastTheoremFor 139 :=
  fltPrimeWitnessFast 139 557 2 []
    (by native_decide) (by native_decide)
end FltVandiver
