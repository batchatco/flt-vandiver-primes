import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 271` (irregular, indices [84]) — fast Q_i + fast irrListCert.
`ℓ = 1627`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 271) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1627) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_271 : FermatLastTheoremFor 271 :=
  fltPrimeWitnessFast 271 1627 3 [84]
    (by native_decide) (by native_decide)
end FltVandiver
