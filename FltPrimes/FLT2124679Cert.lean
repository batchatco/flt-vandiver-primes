import FltPrimes.FLT2124679Inst
import FltPrimes.FLT2124679F01
import FltPrimes.FLT2124679F02
import FltPrimes.FLT2124679F03
import FltPrimes.FLT2124679F04
import FltPrimes.FLT2124679F05
import FltPrimes.FLT2124679F06
import FltPrimes.FLT2124679F07
import FltPrimes.FLT2124679F08
import FltPrimes.FLT2124679F09
import FltPrimes.FLT2124679F10
import FltPrimes.FLT2124679F11
import FltPrimes.FLT2124679F12
import FltPrimes.FLT2124679F13
import FltPrimes.FLT2124679F14
import FltPrimes.FLT2124679F15
import FltPrimes.FLT2124679F16
import FltPrimes.FLT2124679F17
import FltPrimes.FLT2124679F18
import FltPrimes.FLT2124679F19
import FltPrimes.FLT2124679F20
import FltPrimes.FLT2124679F21
import FltPrimes.FLT2124679F22
import FltPrimes.FLT2124679F23
import FltPrimes.FLT2124679F24
import FltPrimes.FLT2124679F25
import FltPrimes.FLT2124679F26
import FltPrimes.FLT2124679F27
import FltPrimes.FLT2124679F28
import FltPrimes.FLT2124679F29
import FltPrimes.FLT2124679F30
import FltPrimes.FLT2124679F31
import FltPrimes.FLT2124679F32
import FltPrimes.FLT2124679F33
import FltPrimes.FLT2124679F34
import FltPrimes.FLT2124679F35
import FltPrimes.FLT2124679F36
import FltPrimes.FLT2124679F37
import FltPrimes.FLT2124679F38
import FltPrimes.FLT2124679F39
import FltPrimes.FLT2124679F40
import FltPrimes.FLT2124679F41
import FltPrimes.FLT2124679F42
import FltPrimes.FLT2124679F43
import FltPrimes.FLT2124679F44
import FltPrimes.FLT2124679F45
import FltPrimes.FLT2124679F46
import FltPrimes.FLT2124679F47
import FltPrimes.FLT2124679F48
import FltPrimes.FLT2124679F49
import FltPrimes.FLT2124679F50
import FltPrimes.FLT2124679F51
import FltPrimes.FLT2124679F52
import FltPrimes.FLT2124679F53
import FltPrimes.FLT2124679F54
import FltPrimes.FLT2124679F55
import FltPrimes.FLT2124679F56
import FltPrimes.FLT2124679F57
import FltPrimes.FLT2124679F58
import FltPrimes.FLT2124679F59
import FltPrimes.FLT2124679F60
import FltPrimes.FLT2124679F61
import FltPrimes.FLT2124679F62
import FltPrimes.FLT2124679F63
import FltPrimes.FLT2124679F64
import FltVandiver.QiCertAppend

/-!
# The `p = 2124679` `Q_i` certificate: slice assembly

`64` fast slices of width `16600` cover the `1062338` even indices;
`vandiverCert_of_slices` reassembles the full-list certificate.
-/

namespace FltVandiver

/-- The `Q_i` certificate fires at every even index of `2124679`. -/
theorem vandiverCert_all_2124679 :
    QiCert.vandiverCert 2124679 446182591 2 (QiCert.evenIndices 2124679) = true := by
  refine vandiverCert_of_slices (w := 16600) (n := 64) (by norm_num) ?_ ?_
  · simp [QiCert.evenIndices]
  · intro j hj
    interval_cases j
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s01
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s02
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s03
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s04
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s05
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s06
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s07
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s08
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s09
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s10
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s11
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s12
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s13
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s14
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s15
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s16
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s17
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s18
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s19
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s20
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s21
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s22
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s23
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s24
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s25
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s26
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s27
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s28
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s29
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s30
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s31
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s32
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s33
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s34
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s35
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s36
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s37
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s38
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s39
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s40
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s41
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s42
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s43
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s44
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s45
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s46
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s47
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s48
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s49
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s50
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s51
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s52
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s53
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s54
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s55
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s56
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s57
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s58
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s59
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s60
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s61
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s62
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s63
    · exact QiCert.vandiverCert_of_fast vandiverCertFast_2124679_s64

/-- **`IsVandiverPrime 2124679` is a theorem.** -/
theorem isVandiverPrime_2124679 : IsVandiverPrime 2124679 :=
  QiCert.qiVandiverBridge_all vandiverCert_all_2124679

end FltVandiver
