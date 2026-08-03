import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 463` (irregular, indices [130]) — fast Q_i + fast irrListCert.
`ℓ = 5557`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 463) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5557) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_463 : FermatLastTheoremFor 463 :=
  fltPrimeWitnessFast 463 5557 2 [130]
    (by native_decide) (by native_decide)
end FltVandiver
