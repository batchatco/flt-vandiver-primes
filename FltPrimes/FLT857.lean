import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 857` (regular) — fast Q_i + fast irrListCert.
`ℓ = 6857`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 857) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 6857) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_857 : FermatLastTheoremFor 857 :=
  fltPrimeWitnessFast 857 6857 3 []
    (by native_decide) (by native_decide)
end FltVandiver
