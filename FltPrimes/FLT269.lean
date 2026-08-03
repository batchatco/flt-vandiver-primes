import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 269` (regular) — fast Q_i + fast irrListCert.
`ℓ = 2153`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 269) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 2153) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_269 : FermatLastTheoremFor 269 :=
  fltPrimeWitnessFast 269 2153 3 []
    (by native_decide) (by native_decide)
end FltVandiver
