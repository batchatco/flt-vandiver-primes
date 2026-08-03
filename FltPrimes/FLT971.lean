import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 971` (irregular, indices [166]) — fast Q_i + fast irrListCert.
`ℓ = 5827`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 971) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5827) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_971 : FermatLastTheoremFor 971 :=
  fltPrimeWitnessFast 971 5827 2 [166]
    (by native_decide) (by native_decide)
end FltVandiver
