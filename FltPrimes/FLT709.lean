import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 709` (regular) — fast Q_i + fast irrListCert.
`ℓ = 2837`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 709) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 2837) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_709 : FermatLastTheoremFor 709 :=
  fltPrimeWitnessFast 709 2837 2 []
    (by native_decide) (by native_decide)
end FltVandiver
