import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 739` (regular) — fast Q_i + fast irrListCert.
`ℓ = 2957`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 739) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 2957) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_739 : FermatLastTheoremFor 739 :=
  fltPrimeWitnessFast 739 2957 2 []
    (by native_decide) (by native_decide)
end FltVandiver
