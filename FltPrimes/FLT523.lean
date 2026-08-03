import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 523` (irregular, indices [400]) — fast Q_i + fast irrListCert.
`ℓ = 6277`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 523) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 6277) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_523 : FermatLastTheoremFor 523 :=
  fltPrimeWitnessFast 523 6277 2 [400]
    (by native_decide) (by native_decide)
end FltVandiver
