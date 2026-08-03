import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 991` (regular) — fast Q_i + fast irrListCert.
`ℓ = 17839`, base `t = 6` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 991) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 17839) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_991 : FermatLastTheoremFor 991 :=
  fltPrimeWitnessFast 991 17839 6 []
    (by native_decide) (by native_decide)
end FltVandiver
