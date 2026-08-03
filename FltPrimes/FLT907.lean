import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 907` (regular) — fast Q_i + fast irrListCert.
`ℓ = 5443`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 907) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5443) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_907 : FermatLastTheoremFor 907 :=
  fltPrimeWitnessFast 907 5443 2 []
    (by native_decide) (by native_decide)
end FltVandiver
