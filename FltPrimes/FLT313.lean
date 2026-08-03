import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 313` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1879`, base `t = 6` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 313) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1879) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_313 : FermatLastTheoremFor 313 :=
  fltPrimeWitnessFast 313 1879 6 []
    (by native_decide) (by native_decide)
end FltVandiver
