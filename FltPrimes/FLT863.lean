import FltPrimes.Witness

set_option maxHeartbeats 4000000

/-! # FLT for `p = 863` (regular) — fast Q_i + fast irrListCert.
`ℓ = 5179`, base `t = 2` (primitive root mod ℓ). -/

namespace FltVandiver
private instance : Fact (Nat.Prime 863) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 5179) := ⟨by norm_num⟩

theorem fermatLastTheoremFor_863 : FermatLastTheoremFor 863 :=
  fltPrimeWitnessFast 863 5179 2 []
    (by native_decide) (by native_decide)
end FltVandiver
