import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 487` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1949`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 487) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1949) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_487 : FermatLastTheoremFor 487 :=
  fltPrimeWitnessFast 487 1949 2 []
    (by native_decide) (by native_decide)
end FltVandiver
