import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 17` (regular) — fast Q_i + fast irrListCert.
`ℓ = 103`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 17) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 103) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_17 : FermatLastTheoremFor 17 :=
  fltPrimeWitnessFast 17 103 5 []
    (by native_decide) (by native_decide)
end FltVandiver
