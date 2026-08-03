import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 641` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1283`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 641) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1283) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_641 : FermatLastTheoremFor 641 :=
  fltPrimeWitnessFast 641 1283 2 []
    (by native_decide) (by native_decide)
end FltVandiver
