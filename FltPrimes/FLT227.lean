import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 227` (regular) — fast Q_i + fast irrListCert.
`ℓ = 5903`, base `t = 5` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 227) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5903) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_227 : FermatLastTheoremFor 227 :=
  fltPrimeWitnessFast 227 5903 5 []
    (by native_decide) (by native_decide)
end FltVandiver
