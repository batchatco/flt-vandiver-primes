import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 727` (irregular, indices [378]) — fast Q_i + fast irrListCert.
`ℓ = 4363`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 727) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4363) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_727 : FermatLastTheoremFor 727 :=
  fltPrimeWitnessFast 727 4363 2 [378]
    (by native_decide) (by native_decide)
end FltVandiver
