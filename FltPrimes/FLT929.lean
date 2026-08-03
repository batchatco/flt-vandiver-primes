import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 929` (irregular, indices [520, 820]) — fast Q_i + fast irrListCert.
`ℓ = 7433`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 929) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 7433) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_929 : FermatLastTheoremFor 929 :=
  fltPrimeWitnessFast 929 7433 3 [520, 820]
    (by native_decide) (by native_decide)
end FltVandiver
