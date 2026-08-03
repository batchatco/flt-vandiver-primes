import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 601` (regular) — fast Q_i + fast irrListCert.
`ℓ = 25243`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 601) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 25243) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_601 : FermatLastTheoremFor 601 :=
  fltPrimeWitnessFast 601 25243 2 []
    (by native_decide) (by native_decide)
end FltVandiver
