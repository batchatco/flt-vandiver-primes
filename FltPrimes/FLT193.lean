import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 193` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1931`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 193) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1931) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_193 : FermatLastTheoremFor 193 :=
  fltPrimeWitnessFast 193 1931 2 []
    (by native_decide) (by native_decide)
end FltVandiver
