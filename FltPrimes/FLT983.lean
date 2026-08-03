import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 983` (regular) — fast Q_i + fast irrListCert.
`ℓ = 13763`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 983) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 13763) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_983 : FermatLastTheoremFor 983 :=
  fltPrimeWitnessFast 983 13763 2 []
    (by native_decide) (by native_decide)
end FltVandiver
