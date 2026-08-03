import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 359` (regular) — fast Q_i + fast irrListCert.
`ℓ = 719`, base `t = 11` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 359) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 719) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_359 : FermatLastTheoremFor 359 :=
  fltPrimeWitnessFast 359 719 11 []
    (by native_decide) (by native_decide)
end FltVandiver
