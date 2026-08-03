import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 41` (regular) — fast Q_i + fast irrListCert.
`ℓ = 83`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 41) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 83) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_41 : FermatLastTheoremFor 41 :=
  fltPrimeWitnessFast 41 83 2 []
    (by native_decide) (by native_decide)
end FltVandiver
