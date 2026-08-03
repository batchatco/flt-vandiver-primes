import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 773` (irregular, indices [732]) — fast Q_i + fast irrListCert.
`ℓ = 15461`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 773) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 15461) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_773 : FermatLastTheoremFor 773 :=
  fltPrimeWitnessFast 773 15461 2 [732]
    (by native_decide) (by native_decide)
end FltVandiver
