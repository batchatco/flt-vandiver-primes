import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 409` (irregular, indices [126]) — fast Q_i + fast irrListCert.
`ℓ = 4091`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 409) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4091) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_409 : FermatLastTheoremFor 409 :=
  fltPrimeWitnessFast 409 4091 2 [126]
    (by native_decide) (by native_decide)
end FltVandiver
