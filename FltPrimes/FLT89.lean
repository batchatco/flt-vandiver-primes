import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 89` (regular) — fast Q_i + fast irrListCert.
`ℓ = 179`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 89) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 179) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_89 : FermatLastTheoremFor 89 :=
  fltPrimeWitnessFast 89 179 2 []
    (by native_decide) (by native_decide)
end FltVandiver
