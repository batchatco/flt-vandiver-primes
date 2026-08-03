import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 587` (irregular, indices [90, 92]) — fast Q_i + fast irrListCert.
`ℓ = 8219`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 587) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 8219) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_587 : FermatLastTheoremFor 587 :=
  fltPrimeWitnessFast 587 8219 2 [90, 92]
    (by native_decide) (by native_decide)
end FltVandiver
