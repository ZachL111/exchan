# Field Notes

The fixture is small on purpose, which makes each domain case carry real weight.

The domain cases cover `clock drift`, `join pressure`, `presence churn`, and `merge risk`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

`baseline` is the strongest case at 197 on `clock drift`. `stress` is the cautious anchor at 152 on `join pressure`.

The language-specific addition keeps the review model in pure functions checked by ExUnit.
