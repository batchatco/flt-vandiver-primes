import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 337` (regular) — fast Q_i + fast irrListCert.
`ℓ = 6067`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 337) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 6067) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_337 : FermatLastTheoremFor 337 :=
  fltPrimeWitnessFast 337 6067 2 []
    (by native_decide) (by native_decide)
end FltVandiver
