import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 47` (regular) — fast Q_i + fast irrListCert.
`ℓ = 283`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 47) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 283) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_47 : FermatLastTheoremFor 47 :=
  fltPrimeWitnessFast 47 283 3 []
    (by native_decide) (by native_decide)
end FltVandiver
