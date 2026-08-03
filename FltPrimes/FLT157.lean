import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 157` (irregular, indices [62, 110]) — fast Q_i + fast irrListCert.
`ℓ = 7537`, base `t = 7` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 157) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 7537) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_157 : FermatLastTheoremFor 157 :=
  fltPrimeWitnessFast 157 7537 7 [62, 110]
    (by native_decide) (by native_decide)
end FltVandiver
