import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 163` (regular) — fast Q_i + fast irrListCert.
`ℓ = 5869`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 163) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5869) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_163 : FermatLastTheoremFor 163 :=
  fltPrimeWitnessFast 163 5869 2 []
    (by native_decide) (by native_decide)
end FltVandiver
