import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 787` (regular) — fast Q_i + fast irrListCert.
`ℓ = 22037`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 787) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 22037) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_787 : FermatLastTheoremFor 787 :=
  fltPrimeWitnessFast 787 22037 2 []
    (by native_decide) (by native_decide)
end FltVandiver
