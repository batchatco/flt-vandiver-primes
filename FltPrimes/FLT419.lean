import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 419` (regular) — fast Q_i + fast irrListCert.
`ℓ = 839`, base `t = 11` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 419) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 839) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_419 : FermatLastTheoremFor 419 :=
  fltPrimeWitnessFast 419 839 11 []
    (by native_decide) (by native_decide)
end FltVandiver
