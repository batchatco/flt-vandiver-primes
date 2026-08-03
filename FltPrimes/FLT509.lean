import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 509` (regular) — fast Q_i + fast irrListCert.
`ℓ = 4073`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 509) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4073) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_509 : FermatLastTheoremFor 509 :=
  fltPrimeWitnessFast 509 4073 3 []
    (by native_decide) (by native_decide)
end FltVandiver
