import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 149` (irregular, indices [130]) — fast Q_i + fast irrListCert.
`ℓ = 1193`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 149) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1193) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_149 : FermatLastTheoremFor 149 :=
  fltPrimeWitnessFast 149 1193 3 [130]
    (by native_decide) (by native_decide)
end FltVandiver
