import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 769` (regular) — fast Q_i + fast irrListCert.
`ℓ = 23071`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 769) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 23071) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_769 : FermatLastTheoremFor 769 :=
  fltPrimeWitnessFast 769 23071 3 []
    (by native_decide) (by native_decide)
end FltVandiver
