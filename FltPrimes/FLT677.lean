import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 677` (irregular, indices [628]) — fast Q_i + fast irrListCert.
`ℓ = 5417`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 677) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5417) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_677 : FermatLastTheoremFor 677 :=
  fltPrimeWitnessFast 677 5417 3 [628]
    (by native_decide) (by native_decide)
end FltVandiver
