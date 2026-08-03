import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 67` (irregular, indices [58]) — fast Q_i + fast irrListCert.
`ℓ = 269`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 67) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 269) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_67 : FermatLastTheoremFor 67 :=
  fltPrimeWitnessFast 67 269 2 [58]
    (by native_decide) (by native_decide)
end FltVandiver
