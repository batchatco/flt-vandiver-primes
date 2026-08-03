import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 127` (regular) — fast Q_i + fast irrListCert.
`ℓ = 509`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 127) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 509) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_127 : FermatLastTheoremFor 127 :=
  fltPrimeWitnessFast 127 509 2 []
    (by native_decide) (by native_decide)
end FltVandiver
