import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 827` (irregular, indices [102]) — fast Q_i + fast irrListCert.
`ℓ = 14887`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 827) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 14887) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_827 : FermatLastTheoremFor 827 :=
  fltPrimeWitnessFast 827 14887 3 [102]
    (by native_decide) (by native_decide)
end FltVandiver
