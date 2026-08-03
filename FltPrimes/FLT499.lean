import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 499` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1997`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 499) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1997) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_499 : FermatLastTheoremFor 499 :=
  fltPrimeWitnessFast 499 1997 2 []
    (by native_decide) (by native_decide)
end FltVandiver
