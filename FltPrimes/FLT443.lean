import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 443` (regular) — fast Q_i + fast irrListCert.
`ℓ = 887`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 443) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 887) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_443 : FermatLastTheoremFor 443 :=
  fltPrimeWitnessFast 443 887 5 []
    (by native_decide) (by native_decide)
end FltVandiver
