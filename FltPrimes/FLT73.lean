import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 73` (regular) — fast Q_i + fast irrListCert.
`ℓ = 293`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 73) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 293) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_73 : FermatLastTheoremFor 73 :=
  fltPrimeWitnessFast 73 293 2 []
    (by native_decide) (by native_decide)
end FltVandiver
