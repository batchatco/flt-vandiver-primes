import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 563` (regular) — fast Q_i + fast irrListCert.
`ℓ = 7883`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 563) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 7883) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_563 : FermatLastTheoremFor 563 :=
  fltPrimeWitnessFast 563 7883 2 []
    (by native_decide) (by native_decide)
end FltVandiver
