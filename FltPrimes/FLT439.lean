import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 439` (regular) — fast Q_i + fast irrListCert.
`ℓ = 4391`, base `t = 14` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 439) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4391) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_439 : FermatLastTheoremFor 439 :=
  fltPrimeWitnessFast 439 4391 14 []
    (by native_decide) (by native_decide)
end FltVandiver
