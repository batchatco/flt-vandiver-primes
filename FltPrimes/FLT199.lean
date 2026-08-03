import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 199` (regular) — fast Q_i + fast irrListCert.
`ℓ = 797`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 199) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 797) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_199 : FermatLastTheoremFor 199 :=
  fltPrimeWitnessFast 199 797 2 []
    (by native_decide) (by native_decide)
end FltVandiver
