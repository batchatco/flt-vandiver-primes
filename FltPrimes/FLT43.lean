import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 43` (regular) — fast Q_i + fast irrListCert.
`ℓ = 431`, base `t = 7` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 43) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 431) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_43 : FermatLastTheoremFor 43 :=
  fltPrimeWitnessFast 43 431 7 []
    (by native_decide) (by native_decide)
end FltVandiver
