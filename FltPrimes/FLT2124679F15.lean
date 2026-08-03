import FltPrimes.FLT2124679Inst
import FltVandiver.QiCertFast

/-! `Q_i` slice 15/64 for `p = 2124679` (`ℓ = 446182591`, `t = 2`): even
indices `[232400, 249000)` of `evenIndices 2124679`. -/

namespace FltVandiver

set_option maxHeartbeats 4000000 in
theorem vandiverCertFast_2124679_s15 :
    QiCert.vandiverCertFast 2124679 446182591 2
      (((QiCert.evenIndices 2124679).drop 232400).take 16600) = true := by
  native_decide

end FltVandiver
