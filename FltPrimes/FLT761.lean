import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 761` (irregular, indices [260]) — fast Q_i + fast irrListCert.
`ℓ = 1523`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 761) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1523) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_761 : FermatLastTheoremFor 761 :=
  fltPrimeWitnessFast 761 1523 2 [260]
    (by native_decide) (by native_decide)
end FltVandiver
