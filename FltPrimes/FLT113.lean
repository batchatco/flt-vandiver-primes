import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 113` (regular) — fast Q_i + fast irrListCert.
`ℓ = 227`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 113) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 227) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_113 : FermatLastTheoremFor 113 :=
  fltPrimeWitnessFast 113 227 2 []
    (by native_decide) (by native_decide)
end FltVandiver
