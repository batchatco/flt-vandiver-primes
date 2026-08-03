import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 61` (regular) — fast Q_i + fast irrListCert.
`ℓ = 367`, base `t = 6` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 61) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 367) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_61 : FermatLastTheoremFor 61 :=
  fltPrimeWitnessFast 61 367 6 []
    (by native_decide) (by native_decide)
end FltVandiver
