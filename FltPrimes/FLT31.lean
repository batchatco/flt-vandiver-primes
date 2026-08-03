import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 31` (regular) — fast Q_i + fast irrListCert.
`ℓ = 311`, base `t = 17` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 31) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 311) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_31 : FermatLastTheoremFor 31 :=
  fltPrimeWitnessFast 31 311 17 []
    (by native_decide) (by native_decide)
end FltVandiver
