import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 661` (regular) — fast Q_i + fast irrListCert.
`ℓ = 14543`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 661) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 14543) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_661 : FermatLastTheoremFor 661 :=
  fltPrimeWitnessFast 661 14543 5 []
    (by native_decide) (by native_decide)
end FltVandiver
