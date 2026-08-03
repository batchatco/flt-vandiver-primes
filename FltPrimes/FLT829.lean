import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 829` (regular) — fast Q_i + fast irrListCert.
`ℓ = 9949`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 829) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 9949) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_829 : FermatLastTheoremFor 829 :=
  fltPrimeWitnessFast 829 9949 2 []
    (by native_decide) (by native_decide)
end FltVandiver
