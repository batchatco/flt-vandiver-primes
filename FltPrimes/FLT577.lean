import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 577` (irregular, indices [52]) — fast Q_i + fast irrListCert.
`ℓ = 3463`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 577) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 3463) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_577 : FermatLastTheoremFor 577 :=
  fltPrimeWitnessFast 577 3463 3 [52]
    (by native_decide) (by native_decide)
end FltVandiver
