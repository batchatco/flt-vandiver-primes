import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 97` (regular) — fast Q_i + fast irrListCert.
`ℓ = 971`, base `t = 6` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 97) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 971) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_97 : FermatLastTheoremFor 97 :=
  fltPrimeWitnessFast 97 971 6 []
    (by native_decide) (by native_decide)
end FltVandiver
