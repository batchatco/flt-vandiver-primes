import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 619` (irregular, indices [428]) — fast Q_i + fast irrListCert.
`ℓ = 17333`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 619) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 17333) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_619 : FermatLastTheoremFor 619 :=
  fltPrimeWitnessFast 619 17333 2 [428]
    (by native_decide) (by native_decide)
end FltVandiver
