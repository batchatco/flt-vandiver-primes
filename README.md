# flt-vandiver-primes

[![Build check](https://github.com/batchatco/flt-vandiver-primes/actions/workflows/build-check.yml/badge.svg)](https://github.com/batchatco/flt-vandiver-primes/actions/workflows/build-check.yml)

The per-prime Fermat's Last Theorem certificate files for the `flt-vandiver`
project — `fermatLastTheoremFor_<p>` and its two `native_decide` certificates,
for every prime `17 ≤ p < 1000` (both regular and irregular), plus both known
Wolstenholme primes, `p = 16843` and `p = 2124679`, via the multi-file
`FLT16843*` and `FLT2124679*` expansions.

These are kept separate from the core `flt-vandiver` library because each
`FltPrimes/FLT<p>.lean` runs a heavy `native_decide` (seconds for small `p`,
a few minutes for the largest below `1000`; the `FLT16843*` certificate
re-verifies in seconds and the sixteen-slice `FLT2124679*` chain in about twenty
core-hours through the machine-speed evaluator `QiEvalFast` of `afm-v2`; in
`afm-v1` the same two runs were four slices in twenty single-threaded minutes and
sixty-four slices in about 250 core-days), so keeping them here lets the core
library build quickly.

Reproducing `2124679` is optional: it exercises no certificate path not already
checked at `16843` in seconds — the two Wolstenholme primes share one
Case I/II route and the same trust base (`2124679` reports 17 scoped
`native_decide` axioms, sixteen `Q_i` slices plus the Germain certificate, against
`16843`'s 2), so rebuilding it confirms the method scales rather than testing
anything new. The axiom audit itself (`lake env lean AxiomAudit2124679.lean`) is
cheap once its oleans exist.

A `native_decide`-free counterpart — pure kernel `decide`, no compiler trust —
re-proves the **8 irregular primes `< 200`** in the sibling repo
`flt-vandiver-primes-kernel` (the regular primes in that range are kernel-checked in
`flt-regular-extended`); `native_decide` skeptics should start there.

Depends on the core library as a path dependency (`../flt-vandiver`),
which supplies the proof template (`CaseII95Descent`, `QiCertFast`, …). Each file
uses the `FltVandiver` namespace, with inter-file imports pointing to
`FltPrimes`.

## Build

```bash
lake exe cache get      # Mathlib cache
lake build              # every prime 17 ≤ p < 1000, plus 16843
```

`2124679` is **not** in the default build — about twenty core-hours as sixteen parallel
slices of a few GiB each; opt in with `lake build FltPrimes.FLT2124679`. The rest is light:
sub-1000 primes are `native_decide` (~6 GiB, seconds-to-minutes), and `16843` is a single
certificate (seconds). The default runs in parallel, so
if it oversubscribes RAM, build individual `FltPrimes.FLT<p>` targets and/or serialize under a cap
(e.g. `systemd-run --scope -p MemoryMax=… env LEAN_NUM_THREADS=1 lake build`) — your call.

Case I is discharged by Kummer's criterion (`p ∤ B_{p−3}`, via `irrListCertFast`) at the
sub-1000 primes; at the two Wolstenholme primes `B_{p−3}` vanishes, so Case I instead uses a
Sophie–Germain auxiliary-prime subgroup certificate (`sgCertSub`). Each headline theorem's
axiom base is reprinted in `AxiomAudit.lean` (with `AxiomAudit16843.lean` and
`AxiomAudit2124679.lean` for the two Wolstenholme primes).

## History

In `afm-v1`, `FltPrimes/FLT2124679.lean` (line 9) labelled `ℓ = 135979457 = 64p + 1` as the
Vandiver auxiliary prime. As the theorem call in the same file showed
(`fltPrimeWitnessSGSub 2124679 446182591 2 135979457 64 …`), the **Vandiver auxiliary prime
is `ℓ = 446182591 = 210p + 1`**, and `135979457 = 64p + 1` is the **Sophie–Germain auxiliary
prime `q`** consumed by the Case I subgroup certificate (`sgCertSub`). The comment was not
corrected in `afm-v1` because the recomputation then cost days; it is corrected from `afm-v2`,
where the `Q_i` certificates run through `QiEvalFast`. The proof and every certificate were
unaffected, and the paper states the two auxiliaries correctly.

## Part of the flt-vandiver family

Six sibling libraries (clone them as siblings — Lake uses relative paths), release tag
**`afm-v1`**, GitHub topic
[`flt-vandiver`](https://github.com/batchatco?tab=repositories&q=topic:flt-vandiver).

| Repo | Role |
|------|------|
| `flt-vandiver` | Engine: Case I/II descent, crown theorems, certificate bridges (Washington 9.5) |
| `flt-vandiver-primes` | `native_decide` instances: every prime 17 ≤ p < 1000, plus 16843 and 2124679 |
| `flt-vandiver-primes-kernel` | Kernel `decide` (zero compiler trust): the 8 irregular primes < 200 |
| `flt-regular-extended` | Kernel Bernoulli ⟹ regular FLT, 17 ≤ q < 350 (47 primes) |
| `flt-cyclotomic-nt` | Herbrand, cyclotomic unit index, class-group Stickelberger, certificate base |
| `flt-stickelberger` | Clean-room Gauss-sum / Stickelberger core (Mathlib-only) |

Each ships an `AxiomAudit.lean` reprinting its headline theorems' axiom base. `sorry`-free on
Lean / Mathlib `v4.31.0`.

## Blueprint & metadata

A dependency-graph blueprint of this library is under [`blueprint/`](blueprint/) (rendered web + PDF published to GitHub Pages once the family is public). Family-level metadata lives in [`formalization.yaml`](https://github.com/batchatco/flt-vandiver/blob/afm-v1/formalization.yaml) in the flt-vandiver repo.

---

Apache License 2.0 — see [LICENSE](LICENSE).
© Bradley Taylor. Code written largely by Claude (Anthropic) under the author's direction.
