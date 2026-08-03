import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 23` (regular) — fast Q_i + fast irrListCert.
`ℓ = 47`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 23) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 47) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_23 : FermatLastTheoremFor 23 :=
  fltPrimeWitnessFast 23 47 5 []
    (by native_decide) (by native_decide)
end FltVandiver
