import FltVandiver.JointAuxiliary
import FltVandiver.BadCertificate
import Mathlib.Tactic.NormNum.Prime

set_option linter.style.nativeDecide false

/-! # `p = 37` at auxiliaries beyond the old budget `ℓ < p² − p = 1332`

Three proofs of `FermatLastTheoremFor 37` from the `afm-v2` interfaces that carry no size
bound on the Case II auxiliary (`FltVandiver.JointAuxiliary`, `FltVandiver.BadCertificate`):

* `ℓ = 1777 = 48·37 + 1` with the computable `noBadCert`, Case I on the paper's `q = 149`;
* the same `ℓ = 1777` inside the proved range `2ℓ = 3554 ≤ 3·37² − 5·37 + 2 = 3924`, so no
  `Bad` computation at all, only the two certificates the paper already uses;
* `ℓ = 3923 = 106·37 + 1` as a joint witness: the `Q_i` certificate and the Sophie Germain
  certificate on one prime (the SG-joint interface rejects `1777`, whose `p`-th powers contain
  consecutive pairs). -/

namespace FltPrimes.FLT37Beyond

open FltVandiver FltVandiver.QiCert

private instance : Fact (Nat.Prime 37) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 149) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 1777) := ⟨by norm_num⟩
private instance : Fact (Nat.Prime 3923) := ⟨by norm_num⟩

theorem qi37_1777 : vandiverCert 37 1777 2 (evenIndices 37) = true := by native_decide
theorem nobad37_1777 : BadCert.noBadCert 37 1777 2 = true := by native_decide
theorem sg37_149 : sgCert 37 149 = true := by native_decide

/-- `ℓ = 1777` with the computable Bad-set certificate. -/
theorem fermatLastTheoremFor_37_bad : FermatLastTheoremFor 37 :=
  BadCert.fermatLastTheoremFor_of_bad_cert (ℓ := 1777) (t := 2) (q := 149)
    (by norm_num) qi37_1777 (by norm_num) nobad37_1777 sg37_149

/-- `ℓ = 1777` inside the proved range `2ℓ ≤ 3p² − 5p + 2`, no Bad computation. -/
theorem fermatLastTheoremFor_37_size : FermatLastTheoremFor 37 :=
  BadCert.fermatLastTheoremFor_of_size_cert (ℓ := 1777) (t := 2) (q := 149)
    (by norm_num) qi37_1777 (by norm_num) (by norm_num) sg37_149

theorem qi37_3923 : vandiverCert 37 3923 2 (evenIndices 37) = true := by native_decide
theorem sg37_3923 : sgCert 37 3923 = true := by native_decide

/-- `ℓ = 3923` as a joint witness: both certificates on one prime, no size bound. -/
theorem fermatLastTheoremFor_37_joint : FermatLastTheoremFor 37 :=
  JointAux.fermatLastTheoremFor_of_joint_cert (ℓ := 3923) (t := 2)
    (by norm_num) qi37_3923 (by norm_num) sg37_3923

end FltPrimes.FLT37Beyond
