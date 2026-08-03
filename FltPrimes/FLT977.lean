import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 977` (regular) — fast Q_i + fast irrListCert.
`ℓ = 7817`, base `t = 3` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 977) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 7817) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_977 : FermatLastTheoremFor 977 :=
  fltPrimeWitnessFast 977 7817 3 []
    (by native_decide) (by native_decide)
end FltVandiver
