import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 241` (regular) — fast Q_i + fast irrListCert.
`ℓ = 1447`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 241) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1447) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_241 : FermatLastTheoremFor 241 :=
  fltPrimeWitnessFast 241 1447 3 []
    (by native_decide) (by native_decide)
end FltVandiver
