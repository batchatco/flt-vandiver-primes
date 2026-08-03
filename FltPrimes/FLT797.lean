import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 797` (irregular, indices [220]) — fast Q_i + fast irrListCert.
`ℓ = 11159`, base `t = 7` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 797) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 11159) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_797 : FermatLastTheoremFor 797 :=
  fltPrimeWitnessFast 797 11159 7 [220]
    (by native_decide) (by native_decide)
end FltVandiver
