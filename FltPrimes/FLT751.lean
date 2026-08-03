import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 751` (irregular, indices [290]) — fast Q_i + fast irrListCert.
`ℓ = 4507`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 751) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4507) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_751 : FermatLastTheoremFor 751 :=
  fltPrimeWitnessFast 751 4507 2 [290]
    (by native_decide) (by native_decide)
end FltVandiver
