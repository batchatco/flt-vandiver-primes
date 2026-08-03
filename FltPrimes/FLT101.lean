import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 101` (irregular, indices [68]) — fast Q_i + fast irrListCert.
`ℓ = 809`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 101) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 809) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_101 : FermatLastTheoremFor 101 :=
  fltPrimeWitnessFast 101 809 3 [68]
    (by native_decide) (by native_decide)
end FltVandiver
