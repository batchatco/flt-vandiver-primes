import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 59` (irregular, indices [44]) — fast Q_i + fast irrListCert.
`ℓ = 709`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 59) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 709) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_59 : FermatLastTheoremFor 59 :=
  fltPrimeWitnessFast 59 709 2 [44]
    (by native_decide) (by native_decide)
end FltVandiver
