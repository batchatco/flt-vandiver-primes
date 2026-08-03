import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 151` (regular) — fast Q_i + fast irrListCert.
`ℓ = 907`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 151) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 907) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_151 : FermatLastTheoremFor 151 :=
  fltPrimeWitnessFast 151 907 2 []
    (by native_decide) (by native_decide)
end FltVandiver
