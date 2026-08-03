import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 367` (regular) — fast Q_i + fast irrListCert.
`ℓ = 3671`, base `t = 13` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 367) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 3671) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_367 : FermatLastTheoremFor 367 :=
  fltPrimeWitnessFast 367 3671 13 []
    (by native_decide) (by native_decide)
end FltVandiver
