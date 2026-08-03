import FltPrimes.FLT2124679Inst
import FltVandiver.QiCertFast

/-! `Q_i` slice 53/64 for `p = 2124679` (`ℓ = 446182591`, `t = 2`): even
indices `[863200, 879800)` of `evenIndices 2124679`. -/

namespace FltVandiver

set_option maxHeartbeats 4000000 in
theorem vandiverCertFast_2124679_s53 :
    QiCert.vandiverCertFast 2124679 446182591 2
      (((QiCert.evenIndices 2124679).drop 863200).take 16600) = true := by
  native_decide

end FltVandiver
