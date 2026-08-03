import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 211` (regular) — fast Q_i + fast irrListCert.
`ℓ = 10973`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 211) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 10973) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_211 : FermatLastTheoremFor 211 :=
  fltPrimeWitnessFast 211 10973 2 []
    (by native_decide) (by native_decide)
end FltVandiver
