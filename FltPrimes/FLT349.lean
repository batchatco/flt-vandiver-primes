import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 349` (regular) — fast Q_i + fast irrListCert.
`ℓ = 8377`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 349) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 8377) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_349 : FermatLastTheoremFor 349 :=
  fltPrimeWitnessFast 349 8377 5 []
    (by native_decide) (by native_decide)
end FltVandiver
