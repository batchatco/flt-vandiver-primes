import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 911` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1823`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 911) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1823) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_911 : FermatLastTheoremFor 911 :=
  fltPrimeWitnessFast 911 1823 5 []
    (by native_decide) (by native_decide)
end FltVandiver
