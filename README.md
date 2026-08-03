# flt-vandiver-primes

The per-prime Fermat's Last Theorem certificate files for the `flt-vandiver`
project — `fermatLastTheoremFor_<p>` and its two `native_decide` certificates,
for every prime `17 ≤ p < 1000` (both regular and irregular), plus both known
Wolstenholme primes, `p = 16843` and `p = 2124679`, via the multi-file
`FLT16843*` and `FLT2124679*` expansions.

These are kept separate from the core `flt-vandiver` library because each
`FltPrimes/FLT<p>.lean` runs a heavy `native_decide` (seconds for small `p`,
a few minutes for the largest below `1000`; the four-slice `FLT16843*` chain
re-verifies in about 20 single-threaded minutes, and the 64-slice `FLT2124679*`
chain in roughly 8 days on a 64-vCPU cloud machine), so keeping them here lets
the core library build quickly.

Reproducing `2124679` is optional: it exercises no certificate path not already
checked at `16843` in ~20 minutes — the two Wolstenholme primes share one
Case I/II route and the same trust base (`2124679` reports 65 scoped
`native_decide` axioms against `16843`'s 5), so rebuilding it confirms the
method scales rather than testing anything new. The axiom audit itself
(`lake env lean AxiomAudit2124679.lean`) is cheap once its oleans exist (after that
build, or after restoring prebuilt oleans) — it is the multi-day *rebuild*, not the
audit, that is expensive.

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

`2124679` is **not** in the default build — it is a multi-day, 64-core job; opt in with
`lake build FltPrimes.FLT2124679`. The rest is light: sub-1000 primes are `native_decide`
(~6 GiB, seconds-to-minutes), the `16843` slices ~4 GiB each (~20 min). The default runs in parallel, so
if it oversubscribes RAM, build individual `FltPrimes.FLT<p>` targets and/or serialize under a cap
(e.g. `systemd-run --scope -p MemoryMax=… env LEAN_NUM_THREADS=1 lake build`) — your call.

Case I is discharged by Kummer's criterion (`p ∤ B_{p−3}`, via `irrListCertFast`) at the
sub-1000 primes; at the two Wolstenholme primes `B_{p−3}` vanishes, so Case I instead uses a
Sophie–Germain auxiliary-prime subgroup certificate (`sgCertSub`). Each headline theorem's
axiom base is reprinted in `AxiomAudit.lean` (with `AxiomAudit16843.lean` and
`AxiomAudit2124679.lean` for the two Wolstenholme primes).

## Errata

`FltPrimes/FLT2124679.lean`, line 9, has an incorrect comment: it labels
`ℓ = 135979457 = 64p + 1` as the Vandiver auxiliary prime. That is wrong. As the
theorem call in the same file shows (`fltPrimeWitnessSGSub 2124679 446182591 2
135979457 64 …`), the **Vandiver auxiliary prime is `ℓ = 446182591 = 210p + 1`**,
and `135979457 = 64p + 1` is the **Sophie–Germain auxiliary prime `q`** consumed by
the Case I subgroup certificate (`sgCertSub`), not the Vandiver `ℓ`. The comment is
not corrected in place because doing so would invalidate the module's build artifacts
and force the ~8-day `p = 2124679` recomputation; the proof and every certificate are
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

---

Apache License 2.0 — see [LICENSE](LICENSE).
© Bradley Taylor. Code written largely by Claude (Anthropic) under the author's direction.
