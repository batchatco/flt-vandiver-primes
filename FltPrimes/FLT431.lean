import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 431` (regular) — fast Q_i + fast irrListCert.
`ℓ = 863`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 431) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 863) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_431 : FermatLastTheoremFor 431 :=
  fltPrimeWitnessFast 431 863 5 []
    (by native_decide) (by native_decide)
end FltVandiver
