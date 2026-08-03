import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 173` (regular) — fast Q_i + fast irrListCert.
`ℓ = 347`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 173) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 347) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_173 : FermatLastTheoremFor 173 :=
  fltPrimeWitnessFast 173 347 2 []
    (by native_decide) (by native_decide)
end FltVandiver
