import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 229` (regular) — fast Q_i + fast irrListCert.
`ℓ = 5039`, base `t = 11` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 229) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5039) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_229 : FermatLastTheoremFor 229 :=
  fltPrimeWitnessFast 229 5039 11 []
    (by native_decide) (by native_decide)
end FltVandiver
