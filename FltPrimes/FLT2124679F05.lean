import FltPrimes.FLT2124679Inst
import FltVandiver.QiCertFast2

/-! `Q_i` slice 5/16 for `p = 2124679` (`ℓ = 446182591`, `t = 2`): even
indices `[265588, 331985)` of `evenIndices 2124679`, via the machine-speed evaluator
(`QiEvalFast`) and its bridge `QiCert.Fast2.vandiverCert_of_fast2`. -/

namespace FltVandiver

set_option maxHeartbeats 4000000 in
theorem vandiverCert_2124679_s05 :
    QiCert.vandiverCert 2124679 446182591 2
      (((QiCert.evenIndices 2124679).drop 265588).take 66397) = true :=
  QiCert.Fast2.vandiverCert_of_fast2 (by native_decide)

end FltVandiver
