import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 839` (irregular, indices [66]) — fast Q_i + fast irrListCert.
`ℓ = 10069`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 839) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 10069) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_839 : FermatLastTheoremFor 839 :=
  fltPrimeWitnessFast 839 10069 2 [66]
    (by native_decide) (by native_decide)
end FltVandiver
