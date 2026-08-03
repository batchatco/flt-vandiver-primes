import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 109` (regular) — fast Q_i + fast irrListCert.
`ℓ = 2399`, base `t = 11` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 109) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 2399) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_109 : FermatLastTheoremFor 109 :=
  fltPrimeWitnessFast 109 2399 11 []
    (by native_decide) (by native_decide)
end FltVandiver
