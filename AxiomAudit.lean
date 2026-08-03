import FltPrimes.FLT17
import FltPrimes.FLT19
import FltPrimes.FLT23
import FltPrimes.FLT29
import FltPrimes.FLT31
import FltPrimes.FLT37
import FltPrimes.FLT41
import FltPrimes.FLT43
import FltPrimes.FLT47
import FltPrimes.FLT53
import FltPrimes.FLT59
import FltPrimes.FLT61
import FltPrimes.FLT67
import FltPrimes.FLT71
import FltPrimes.FLT73
import FltPrimes.FLT79
import FltPrimes.FLT83
import FltPrimes.FLT89
import FltPrimes.FLT97
import FltPrimes.FLT101
import FltPrimes.FLT103
import FltPrimes.FLT107
import FltPrimes.FLT109
import FltPrimes.FLT113
import FltPrimes.FLT127
import FltPrimes.FLT131
import FltPrimes.FLT137
import FltPrimes.FLT139
import FltPrimes.FLT149
import FltPrimes.FLT151
import FltPrimes.FLT157
import FltPrimes.FLT163
import FltPrimes.FLT167
import FltPrimes.FLT173
import FltPrimes.FLT179
import FltPrimes.FLT181
import FltPrimes.FLT191
import FltPrimes.FLT193
import FltPrimes.FLT197
import FltPrimes.FLT199
import FltPrimes.FLT211
import FltPrimes.FLT223
import FltPrimes.FLT227
import FltPrimes.FLT229
import FltPrimes.FLT233
import FltPrimes.FLT239
import FltPrimes.FLT241
import FltPrimes.FLT251
import FltPrimes.FLT257
import FltPrimes.FLT263
import FltPrimes.FLT269
import FltPrimes.FLT271
import FltPrimes.FLT277
import FltPrimes.FLT281
import FltPrimes.FLT283
import FltPrimes.FLT293
import FltPrimes.FLT307
import FltPrimes.FLT311
import FltPrimes.FLT313
import FltPrimes.FLT317
import FltPrimes.FLT331
import FltPrimes.FLT337
import FltPrimes.FLT347
import FltPrimes.FLT349
import FltPrimes.FLT353
import FltPrimes.FLT359
import FltPrimes.FLT367
import FltPrimes.FLT373
import FltPrimes.FLT379
import FltPrimes.FLT383
import FltPrimes.FLT389
import FltPrimes.FLT397
import FltPrimes.FLT401
import FltPrimes.FLT409
import FltPrimes.FLT419
import FltPrimes.FLT421
import FltPrimes.FLT431
import FltPrimes.FLT433
import FltPrimes.FLT439
import FltPrimes.FLT443
import FltPrimes.FLT449
import FltPrimes.FLT457
import FltPrimes.FLT461
import FltPrimes.FLT463
import FltPrimes.FLT467
import FltPrimes.FLT479
import FltPrimes.FLT487
import FltPrimes.FLT491
import FltPrimes.FLT499
import FltPrimes.FLT503
import FltPrimes.FLT509
import FltPrimes.FLT521
import FltPrimes.FLT523
import FltPrimes.FLT541
import FltPrimes.FLT547
import FltPrimes.FLT557
import FltPrimes.FLT563
import FltPrimes.FLT569
import FltPrimes.FLT571
import FltPrimes.FLT577
import FltPrimes.FLT587
import FltPrimes.FLT593
import FltPrimes.FLT599
import FltPrimes.FLT601
import FltPrimes.FLT607
import FltPrimes.FLT613
import FltPrimes.FLT617
import FltPrimes.FLT619
import FltPrimes.FLT631
import FltPrimes.FLT641
import FltPrimes.FLT643
import FltPrimes.FLT647
import FltPrimes.FLT653
import FltPrimes.FLT659
import FltPrimes.FLT661
import FltPrimes.FLT673
import FltPrimes.FLT677
import FltPrimes.FLT683
import FltPrimes.FLT691
import FltPrimes.FLT701
import FltPrimes.FLT709
import FltPrimes.FLT719
import FltPrimes.FLT727
import FltPrimes.FLT733
import FltPrimes.FLT739
import FltPrimes.FLT743
import FltPrimes.FLT751
import FltPrimes.FLT757
import FltPrimes.FLT761
import FltPrimes.FLT769
import FltPrimes.FLT773
import FltPrimes.FLT787
import FltPrimes.FLT797
import FltPrimes.FLT809
import FltPrimes.FLT811
import FltPrimes.FLT821
import FltPrimes.FLT823
import FltPrimes.FLT827
import FltPrimes.FLT829
import FltPrimes.FLT839
import FltPrimes.FLT853
import FltPrimes.FLT857
import FltPrimes.FLT859
import FltPrimes.FLT863
import FltPrimes.FLT877
import FltPrimes.FLT881
import FltPrimes.FLT883
import FltPrimes.FLT887
import FltPrimes.FLT907
import FltPrimes.FLT911
import FltPrimes.FLT919
import FltPrimes.FLT929
import FltPrimes.FLT937
import FltPrimes.FLT941
import FltPrimes.FLT947
import FltPrimes.FLT953
import FltPrimes.FLT967
import FltPrimes.FLT971
import FltPrimes.FLT977
import FltPrimes.FLT983
import FltPrimes.FLT991
import FltPrimes.FLT997
import FltRegular.SmallNumbers.SmallNumbers

/-!
Axiom audit: concrete FLT theorems for every prime 17 <= p < 1000 (162 primes).
Run with:  lake env lean AxiomAudit.lean
Expected axiom base per theorem: the three standard axioms
  propext, Classical.choice, Quot.sound
plus exactly two generated compiler-trust axioms
  fermatLastTheoremFor_<p>._native.native_decide.ax_1_1 .. ax_1_2
(one per native_decide certificate: the Vandiver Q_i test and the irregular-index list). No other axioms, no sorryAx.
The p = 16843 and p = 2124679 theorems are audited separately by
AxiomAudit16843.lean and AxiomAudit2124679.lean, since their heavy Q_i slice
modules would bloat this file's import set.
-/

#print axioms FltVandiver.fermatLastTheoremFor_17
#print axioms FltVandiver.fermatLastTheoremFor_19
#print axioms FltVandiver.fermatLastTheoremFor_23
#print axioms FltVandiver.fermatLastTheoremFor_29
#print axioms FltVandiver.fermatLastTheoremFor_31
#print axioms FltVandiver.fermatLastTheoremFor_37
#print axioms FltVandiver.fermatLastTheoremFor_41
#print axioms FltVandiver.fermatLastTheoremFor_43
#print axioms FltVandiver.fermatLastTheoremFor_47
#print axioms FltVandiver.fermatLastTheoremFor_53
#print axioms FltVandiver.fermatLastTheoremFor_59
#print axioms FltVandiver.fermatLastTheoremFor_61
#print axioms FltVandiver.fermatLastTheoremFor_67
#print axioms FltVandiver.fermatLastTheoremFor_71
#print axioms FltVandiver.fermatLastTheoremFor_73
#print axioms FltVandiver.fermatLastTheoremFor_79
#print axioms FltVandiver.fermatLastTheoremFor_83
#print axioms FltVandiver.fermatLastTheoremFor_89
#print axioms FltVandiver.fermatLastTheoremFor_97
#print axioms FltVandiver.fermatLastTheoremFor_101
#print axioms FltVandiver.fermatLastTheoremFor_103
#print axioms FltVandiver.fermatLastTheoremFor_107
#print axioms FltVandiver.fermatLastTheoremFor_109
#print axioms FltVandiver.fermatLastTheoremFor_113
#print axioms FltVandiver.fermatLastTheoremFor_127
#print axioms FltVandiver.fermatLastTheoremFor_131
#print axioms FltVandiver.fermatLastTheoremFor_137
#print axioms FltVandiver.fermatLastTheoremFor_139
#print axioms FltVandiver.fermatLastTheoremFor_149
#print axioms FltVandiver.fermatLastTheoremFor_151
#print axioms FltVandiver.fermatLastTheoremFor_157
#print axioms FltVandiver.fermatLastTheoremFor_163
#print axioms FltVandiver.fermatLastTheoremFor_167
#print axioms FltVandiver.fermatLastTheoremFor_173
#print axioms FltVandiver.fermatLastTheoremFor_179
#print axioms FltVandiver.fermatLastTheoremFor_181
#print axioms FltVandiver.fermatLastTheoremFor_191
#print axioms FltVandiver.fermatLastTheoremFor_193
#print axioms FltVandiver.fermatLastTheoremFor_197
#print axioms FltVandiver.fermatLastTheoremFor_199
#print axioms FltVandiver.fermatLastTheoremFor_211
#print axioms FltVandiver.fermatLastTheoremFor_223
#print axioms FltVandiver.fermatLastTheoremFor_227
#print axioms FltVandiver.fermatLastTheoremFor_229
#print axioms FltVandiver.fermatLastTheoremFor_233
#print axioms FltVandiver.fermatLastTheoremFor_239
#print axioms FltVandiver.fermatLastTheoremFor_241
#print axioms FltVandiver.fermatLastTheoremFor_251
#print axioms FltVandiver.fermatLastTheoremFor_257
#print axioms FltVandiver.fermatLastTheoremFor_263
#print axioms FltVandiver.fermatLastTheoremFor_269
#print axioms FltVandiver.fermatLastTheoremFor_271
#print axioms FltVandiver.fermatLastTheoremFor_277
#print axioms FltVandiver.fermatLastTheoremFor_281
#print axioms FltVandiver.fermatLastTheoremFor_283
#print axioms FltVandiver.fermatLastTheoremFor_293
#print axioms FltVandiver.fermatLastTheoremFor_307
#print axioms FltVandiver.fermatLastTheoremFor_311
#print axioms FltVandiver.fermatLastTheoremFor_313
#print axioms FltVandiver.fermatLastTheoremFor_317
#print axioms FltVandiver.fermatLastTheoremFor_331
#print axioms FltVandiver.fermatLastTheoremFor_337
#print axioms FltVandiver.fermatLastTheoremFor_347
#print axioms FltVandiver.fermatLastTheoremFor_349
#print axioms FltVandiver.fermatLastTheoremFor_353
#print axioms FltVandiver.fermatLastTheoremFor_359
#print axioms FltVandiver.fermatLastTheoremFor_367
#print axioms FltVandiver.fermatLastTheoremFor_373
#print axioms FltVandiver.fermatLastTheoremFor_379
#print axioms FltVandiver.fermatLastTheoremFor_383
#print axioms FltVandiver.fermatLastTheoremFor_389
#print axioms FltVandiver.fermatLastTheoremFor_397
#print axioms FltVandiver.fermatLastTheoremFor_401
#print axioms FltVandiver.fermatLastTheoremFor_409
#print axioms FltVandiver.fermatLastTheoremFor_419
#print axioms FltVandiver.fermatLastTheoremFor_421
#print axioms FltVandiver.fermatLastTheoremFor_431
#print axioms FltVandiver.fermatLastTheoremFor_433
#print axioms FltVandiver.fermatLastTheoremFor_439
#print axioms FltVandiver.fermatLastTheoremFor_443
#print axioms FltVandiver.fermatLastTheoremFor_449
#print axioms FltVandiver.fermatLastTheoremFor_457
#print axioms FltVandiver.fermatLastTheoremFor_461
#print axioms FltVandiver.fermatLastTheoremFor_463
#print axioms FltVandiver.fermatLastTheoremFor_467
#print axioms FltVandiver.fermatLastTheoremFor_479
#print axioms FltVandiver.fermatLastTheoremFor_487
#print axioms FltVandiver.fermatLastTheoremFor_491
#print axioms FltVandiver.fermatLastTheoremFor_499
#print axioms FltVandiver.fermatLastTheoremFor_503
#print axioms FltVandiver.fermatLastTheoremFor_509
#print axioms FltVandiver.fermatLastTheoremFor_521
#print axioms FltVandiver.fermatLastTheoremFor_523
#print axioms FltVandiver.fermatLastTheoremFor_541
#print axioms FltVandiver.fermatLastTheoremFor_547
#print axioms FltVandiver.fermatLastTheoremFor_557
#print axioms FltVandiver.fermatLastTheoremFor_563
#print axioms FltVandiver.fermatLastTheoremFor_569
#print axioms FltVandiver.fermatLastTheoremFor_571
#print axioms FltVandiver.fermatLastTheoremFor_577
#print axioms FltVandiver.fermatLastTheoremFor_587
#print axioms FltVandiver.fermatLastTheoremFor_593
#print axioms FltVandiver.fermatLastTheoremFor_599
#print axioms FltVandiver.fermatLastTheoremFor_601
#print axioms FltVandiver.fermatLastTheoremFor_607
#print axioms FltVandiver.fermatLastTheoremFor_613
#print axioms FltVandiver.fermatLastTheoremFor_617
#print axioms FltVandiver.fermatLastTheoremFor_619
#print axioms FltVandiver.fermatLastTheoremFor_631
#print axioms FltVandiver.fermatLastTheoremFor_641
#print axioms FltVandiver.fermatLastTheoremFor_643
#print axioms FltVandiver.fermatLastTheoremFor_647
#print axioms FltVandiver.fermatLastTheoremFor_653
#print axioms FltVandiver.fermatLastTheoremFor_659
#print axioms FltVandiver.fermatLastTheoremFor_661
#print axioms FltVandiver.fermatLastTheoremFor_673
#print axioms FltVandiver.fermatLastTheoremFor_677
#print axioms FltVandiver.fermatLastTheoremFor_683
#print axioms FltVandiver.fermatLastTheoremFor_691
#print axioms FltVandiver.fermatLastTheoremFor_701
#print axioms FltVandiver.fermatLastTheoremFor_709
#print axioms FltVandiver.fermatLastTheoremFor_719
#print axioms FltVandiver.fermatLastTheoremFor_727
#print axioms FltVandiver.fermatLastTheoremFor_733
#print axioms FltVandiver.fermatLastTheoremFor_739
#print axioms FltVandiver.fermatLastTheoremFor_743
#print axioms FltVandiver.fermatLastTheoremFor_751
#print axioms FltVandiver.fermatLastTheoremFor_757
#print axioms FltVandiver.fermatLastTheoremFor_761
#print axioms FltVandiver.fermatLastTheoremFor_769
#print axioms FltVandiver.fermatLastTheoremFor_773
#print axioms FltVandiver.fermatLastTheoremFor_787
#print axioms FltVandiver.fermatLastTheoremFor_797
#print axioms FltVandiver.fermatLastTheoremFor_809
#print axioms FltVandiver.fermatLastTheoremFor_811
#print axioms FltVandiver.fermatLastTheoremFor_821
#print axioms FltVandiver.fermatLastTheoremFor_823
#print axioms FltVandiver.fermatLastTheoremFor_827
#print axioms FltVandiver.fermatLastTheoremFor_829
#print axioms FltVandiver.fermatLastTheoremFor_839
#print axioms FltVandiver.fermatLastTheoremFor_853
#print axioms FltVandiver.fermatLastTheoremFor_857
#print axioms FltVandiver.fermatLastTheoremFor_859
#print axioms FltVandiver.fermatLastTheoremFor_863
#print axioms FltVandiver.fermatLastTheoremFor_877
#print axioms FltVandiver.fermatLastTheoremFor_881
#print axioms FltVandiver.fermatLastTheoremFor_883
#print axioms FltVandiver.fermatLastTheoremFor_887
#print axioms FltVandiver.fermatLastTheoremFor_907
#print axioms FltVandiver.fermatLastTheoremFor_911
#print axioms FltVandiver.fermatLastTheoremFor_919
#print axioms FltVandiver.fermatLastTheoremFor_929
#print axioms FltVandiver.fermatLastTheoremFor_937
#print axioms FltVandiver.fermatLastTheoremFor_941
#print axioms FltVandiver.fermatLastTheoremFor_947
#print axioms FltVandiver.fermatLastTheoremFor_953
#print axioms FltVandiver.fermatLastTheoremFor_967
#print axioms FltVandiver.fermatLastTheoremFor_971
#print axioms FltVandiver.fermatLastTheoremFor_977
#print axioms FltVandiver.fermatLastTheoremFor_983
#print axioms FltVandiver.fermatLastTheoremFor_991
#print axioms FltVandiver.fermatLastTheoremFor_997

-- The small-exponent base of the "every prime below 1000" claim
-- (Mathlib's 3 and 4; flt-regular's 3 ≤ n ≤ 16 blanket theorem):
#print axioms fermatLastTheoremThree
#print axioms fermatLastTheoremFour
#print axioms FLT_small
