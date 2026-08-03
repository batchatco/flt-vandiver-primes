import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 317` (regular) — fast Q_i + fast irrListCert.
`ℓ = 8243`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 317) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 8243) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_317 : FermatLastTheoremFor 317 :=
  fltPrimeWitnessFast 317 8243 2 []
    (by native_decide) (by native_decide)
end FltVandiver
