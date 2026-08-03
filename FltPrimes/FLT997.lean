import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 997` (regular) — fast Q_i + fast irrListCert.
`ℓ = 3989`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 997) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 3989) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_997 : FermatLastTheoremFor 997 :=
  fltPrimeWitnessFast 997 3989 2 []
    (by native_decide) (by native_decide)
end FltVandiver
