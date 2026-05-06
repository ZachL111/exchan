# exchan

`exchan` is a compact Elixir repository for distributed data, centered on this goal: Track CRDT-backed presence state with joins, leaves, and clock merges.

## Purpose

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Exchan Review Notes

`baseline` and `stress` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for clock drift and join pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/exchan-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `clock drift` and `join pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added Elixir path is deliberately direct, with fixtures doing most of the explaining.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Limits

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
