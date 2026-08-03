import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 937` (regular) — fast Q_i + fast irrListCert.
`ℓ = 5623`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 937) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5623) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_937 : FermatLastTheoremFor 937 :=
  fltPrimeWitnessFast 937 5623 5 []
    (by native_decide) (by native_decide)
end FltVandiver
