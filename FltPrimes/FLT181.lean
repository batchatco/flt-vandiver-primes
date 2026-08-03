import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 181` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1811`, base `t = 6` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 181) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1811) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_181 : FermatLastTheoremFor 181 :=
  fltPrimeWitnessFast 181 1811 6 []
    (by native_decide) (by native_decide)
end FltVandiver
