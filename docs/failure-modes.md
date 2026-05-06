# Failure Modes

For `exchan`, I would look first for these mistakes:

- `clock drift` cases moving lanes without a matching threshold change.
- `presence churn` scoring higher after drag increases.
- Duplicate fixture ids hiding a stale golden row.
- README examples drifting away from the verifier.

The local checks are intentionally strict about these cases.
