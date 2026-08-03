import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 167` (regular) — fast Q_i + fast irrListCert.
`ℓ = 7349`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 167) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 7349) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_167 : FermatLastTheoremFor 167 :=
  fltPrimeWitnessFast 167 7349 2 []
    (by native_decide) (by native_decide)
end FltVandiver
