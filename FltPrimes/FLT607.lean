import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 607` (irregular, indices [592]) — fast Q_i + fast irrListCert.
`ℓ = 20639`, base `t = 11` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 607) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 20639) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_607 : FermatLastTheoremFor 607 :=
  fltPrimeWitnessFast 607 20639 11 [592]
    (by native_decide) (by native_decide)
end FltVandiver
