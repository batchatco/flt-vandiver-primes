import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 887` (irregular, indices [418]) — fast Q_i + fast irrListCert.
`ℓ = 5323`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 887) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5323) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_887 : FermatLastTheoremFor 887 :=
  fltPrimeWitnessFast 887 5323 5 [418]
    (by native_decide) (by native_decide)
end FltVandiver
