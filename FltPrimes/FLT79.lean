import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 79` (regular) — fast Q_i + fast irrListCert.
`ℓ = 317`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 79) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 317) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_79 : FermatLastTheoremFor 79 :=
  fltPrimeWitnessFast 79 317 2 []
    (by native_decide) (by native_decide)
end FltVandiver
