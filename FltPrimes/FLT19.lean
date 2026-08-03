import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 19` (regular) — fast Q_i + fast irrListCert.
`ℓ = 191`, base `t = 19` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 19) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 191) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_19 : FermatLastTheoremFor 19 :=
  fltPrimeWitnessFast 19 191 19 []
    (by native_decide) (by native_decide)
end FltVandiver
