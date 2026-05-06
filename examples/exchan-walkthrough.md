# Exchan Walkthrough

This note is the quickest way to read the extra review model in `exchan`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | clock drift | 197 | ship |
| stress | join pressure | 152 | ship |
| edge | presence churn | 189 | ship |
| recovery | merge risk | 178 | ship |
| stale | clock drift | 180 | ship |

Start with `baseline` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`baseline` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
