import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 191` (regular) — fast Q_i + fast irrListCert.
`ℓ = 383`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 191) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 383) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_191 : FermatLastTheoremFor 191 :=
  fltPrimeWitnessFast 191 383 5 []
    (by native_decide) (by native_decide)
end FltVandiver
