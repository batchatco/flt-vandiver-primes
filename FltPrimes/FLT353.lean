import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 353` (irregular, indices [186, 300]) — fast Q_i + fast irrListCert.
`ℓ = 4943`, base `t = 7` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 353) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4943) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_353 : FermatLastTheoremFor 353 :=
  fltPrimeWitnessFast 353 4943 7 [186, 300]
    (by native_decide) (by native_decide)
end FltVandiver
