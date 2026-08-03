import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 719` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1439`, base `t = 7` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 719) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1439) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_719 : FermatLastTheoremFor 719 :=
  fltPrimeWitnessFast 719 1439 7 []
    (by native_decide) (by native_decide)
end FltVandiver
