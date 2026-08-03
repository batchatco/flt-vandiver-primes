import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 457` (regular) — fast Q_i + fast irrListCert.
`ℓ = 21023`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 457) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 21023) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_457 : FermatLastTheoremFor 457 :=
  fltPrimeWitnessFast 457 21023 5 []
    (by native_decide) (by native_decide)
end FltVandiver
