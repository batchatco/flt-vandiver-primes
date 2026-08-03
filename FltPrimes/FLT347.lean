import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 347` (irregular, indices [280]) — fast Q_i + fast irrListCert.
`ℓ = 2083`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 347) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 2083) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_347 : FermatLastTheoremFor 347 :=
  fltPrimeWitnessFast 347 2083 2 [280]
    (by native_decide) (by native_decide)
end FltVandiver
