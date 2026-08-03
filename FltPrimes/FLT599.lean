import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 599` (regular) — fast Q_i + fast irrListCert.
`ℓ = 4793`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 599) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 4793) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_599 : FermatLastTheoremFor 599 :=
  fltPrimeWitnessFast 599 4793 3 []
    (by native_decide) (by native_decide)
end FltVandiver
