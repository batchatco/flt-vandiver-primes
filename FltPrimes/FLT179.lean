import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 179` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1433`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 179) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1433) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_179 : FermatLastTheoremFor 179 :=
  fltPrimeWitnessFast 179 1433 3 []
    (by native_decide) (by native_decide)
end FltVandiver
