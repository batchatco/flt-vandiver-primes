import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 223` (regular) — fast Q_i + fast irrListCert.
`ℓ = 6691`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 223) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 6691) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_223 : FermatLastTheoremFor 223 :=
  fltPrimeWitnessFast 223 6691 2 []
    (by native_decide) (by native_decide)
end FltVandiver
