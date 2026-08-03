import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 107` (regular) — fast Q_i + fast irrListCert.
`ℓ = 643`, base `t = 11` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 107) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 643) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_107 : FermatLastTheoremFor 107 :=
  fltPrimeWitnessFast 107 643 11 []
    (by native_decide) (by native_decide)
end FltVandiver
