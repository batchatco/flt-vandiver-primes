import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 383` (regular) — fast Q_i + fast irrListCert.
`ℓ = 16087`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 383) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 16087) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_383 : FermatLastTheoremFor 383 :=
  fltPrimeWitnessFast 383 16087 5 []
    (by native_decide) (by native_decide)
end FltVandiver
