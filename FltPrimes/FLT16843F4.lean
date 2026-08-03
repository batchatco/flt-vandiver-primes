import FltPrimes.FLT16843Inst
import FltVandiver.QiCertFast

/-! `p = 16843` fast Q_i certificate slice 4/4 (`ℓ = 370547`, `t = 2`; Fermat-reduced exponents). -/

namespace FltVandiver

open FltVandiver.QiCert

/-- Fast `Q_i` slice: even indices `[6315, 8420)` of the 8420-entry list. -/
theorem vandiverCertFast_16843_s4 :
    QiCert.vandiverCertFast 16843 370547 2
      (((evenIndices 16843).drop 6315).take 2105) = true := by
  native_decide

end FltVandiver
