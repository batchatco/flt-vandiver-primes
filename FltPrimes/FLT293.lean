import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 293` (irregular, indices [156]) — fast Q_i + fast irrListCert.
`ℓ = 587`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 293) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 587) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_293 : FermatLastTheoremFor 293 :=
  fltPrimeWitnessFast 293 587 2 [156]
    (by native_decide) (by native_decide)
end FltVandiver
