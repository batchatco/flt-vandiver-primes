import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 373` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1493`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 373) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1493) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_373 : FermatLastTheoremFor 373 :=
  fltPrimeWitnessFast 373 1493 2 []
    (by native_decide) (by native_decide)
end FltVandiver
