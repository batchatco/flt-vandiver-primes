import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 859` (regular) — fast Q_i + fast irrListCert.
`ℓ = 18899`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 859) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 18899) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_859 : FermatLastTheoremFor 859 :=
  fltPrimeWitnessFast 859 18899 2 []
    (by native_decide) (by native_decide)
end FltVandiver
