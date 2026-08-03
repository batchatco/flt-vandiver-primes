import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 53` (regular) — fast Q_i + fast irrListCert.
`ℓ = 743`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 53) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 743) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_53 : FermatLastTheoremFor 53 :=
  fltPrimeWitnessFast 53 743 5 []
    (by native_decide) (by native_decide)
end FltVandiver
