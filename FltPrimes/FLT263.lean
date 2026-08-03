import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 263` (irregular, indices [100]) — fast Q_i + fast irrListCert.
`ℓ = 1579`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 263) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1579) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_263 : FermatLastTheoremFor 263 :=
  fltPrimeWitnessFast 263 1579 3 [100]
    (by native_decide) (by native_decide)
end FltVandiver
