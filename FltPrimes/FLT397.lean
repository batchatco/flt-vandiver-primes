import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 397` (regular) — fast Q_i + fast irrListCert.
`ℓ = 6353`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 397) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 6353) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_397 : FermatLastTheoremFor 397 :=
  fltPrimeWitnessFast 397 6353 3 []
    (by native_decide) (by native_decide)
end FltVandiver
