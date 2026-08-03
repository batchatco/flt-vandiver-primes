import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 823` (regular) — fast Q_i + fast irrListCert.
`ℓ = 24691`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 823) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 24691) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_823 : FermatLastTheoremFor 823 :=
  fltPrimeWitnessFast 823 24691 2 []
    (by native_decide) (by native_decide)
end FltVandiver
