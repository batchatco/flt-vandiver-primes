import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 83` (regular) — fast Q_i + fast irrListCert.
`ℓ = 167`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 83) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 167) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_83 : FermatLastTheoremFor 83 :=
  fltPrimeWitnessFast 83 167 5 []
    (by native_decide) (by native_decide)
end FltVandiver
