# Bronze Pull Shark Roadmap

## Purpose

This roadmap defines a quality-focused path to 16 meaningful merged pull requests for `w2f-Inventory-items`.
It is designed to improve repository usefulness for FiveM and ox_inventory users while keeping contribution quality high.

## Why focused PRs beat one massive PR

- Smaller PRs are easier to review and test.
- Review feedback is clearer and faster to apply.
- Rollbacks are safer if a problem appears.
- Contributors can work in parallel without heavy conflicts.

## Rules for meaningful PRs

- One clear purpose per PR.
- Real improvements only (no filler changes).
- Update documentation when behavior or structure changes.
- Keep commit messages descriptive and conventional.
- Include practical testing notes.

## What makes a PR worth merging

- Solves a real user or maintainer problem.
- Keeps repository standards consistent.
- Is reviewed and easy to understand.
- Includes working, verifiable changes.

## Why lazy commits damage quality

Low-effort commits reduce trust, hide useful history, and slow reviews. A clean history helps maintainers trace decisions and contributors learn project standards.

## 16 PR roadmap

| PR # | Branch name | PR title | Purpose | Main files changed | Expected commit types | Quality checks |
|---|---|---|---|---|---|---|
| 1 | `setup-professional-repo-structure` | Set up professional repository structure and README | Establish baseline structure and onboarding docs | `README.md`, `CONTRIBUTING.md`, `CHANGELOG.md`, `LICENSE` | `docs:`, `chore:` | README render, links, structure sanity |
| 2 | `add-ox-inventory-item-definitions` | Add ox_inventory item definitions | Add initial production-ready item entries | `ox_inventory/items.lua` | `items:` | Lua syntax, naming rules, image references |
| 3 | `add-installation-and-usage-docs` | Add installation and usage documentation | Help server owners install and use pack correctly | `docs/INSTALLATION.md`, `docs/OX_INVENTORY_GUIDE.md`, `docs/ITEM_NAMING.md` | `docs:` | Doc accuracy, beginner clarity, link checks |
| 4 | `add-item-validation-script` | Add item validation script | Automate naming and consistency checks | `tools/validate_items.py`, `tools/README.md` | `tools:`, `docs:` | Validator pass/fail behavior, exit codes |
| 5 | `add-github-templates` | Add GitHub issue and pull request templates | Standardize issue and PR submissions | `.github/ISSUE_TEMPLATE/*`, `.github/PULL_REQUEST_TEMPLATE.md` | `docs:`, `chore:` | Template clarity, required fields present |
| 6 | `add-item-manifest-and-catalog-docs` | Add item manifest and image catalog documentation | Document maintained item and image inventories | `docs/ITEM_MANIFEST.md`, `docs/IMAGE_CATALOG.md` | `docs:` | Naming consistency and cross-reference checks |
| 7 | `add-validation-github-action` | Add GitHub Actions item validation | Validate changes automatically on PRs | `.github/workflows/validate-items.yml` | `ci:` | Workflow runs successfully on test PR |
| 8 | `expand-food-and-drink-items` | Add food and drink item expansion | Improve roleplay consumables coverage | `ox_inventory/items.lua`, `docs/ITEM_CATEGORIES.md` | `items:`, `docs:` | Validator pass, balanced weights |
| 9 | `add-public-service-items` | Add police, EMS, and roleplay utility items | Support service-role gameplay economies | `ox_inventory/items.lua`, `docs/EXAMPLES.md` | `items:`, `docs:` | Field completeness, naming and syntax checks |
| 10 | `add-mechanic-performance-items` | Add mechanic and vehicle performance items | Expand workshop/project content | `ox_inventory/items.lua`, `docs/ITEM_CATEGORIES.md` | `items:` | Non-stackable logic and weight consistency |
| 11 | `add-business-economy-items` | Add business and economy item definitions | Add civilian/business item depth | `ox_inventory/items.lua`, `docs/EXAMPLES.md` | `items:` | Economic balance review and validator pass |
| 12 | `add-item-quality-review-standards` | Add item quality standards and review checklist | Define merge standards for future item PRs | `docs/ITEM_QUALITY_STANDARDS.md`, `docs/MAINTAINER_CHECKLIST.md` | `docs:` | Checklist completeness and applicability |
| 13 | `add-release-packaging-guide` | Add release packaging and versioning guide | Standardize releases and package process | `docs/RELEASE_PROCESS.md`, `CHANGELOG.md` | `docs:`, `chore:` | Versioning examples and release checklist |
| 14 | `add-missing-image-report-tool` | Add missing image report tool | Detect definition-image mismatches quickly | `tools/missing_image_report.py`, `tools/README.md` | `tools:` | Output clarity and mismatch accuracy |
| 15 | `add-contributor-backlog-roadmap` | Add contributor backlog and project roadmap | Keep future work discoverable and planned | `docs/PULL_REQUEST_IDEAS.md`, `docs/ROADMAP.md` | `docs:` | Idea relevance and actionable task scope |
| 16 | `audit-repository-consistency` | Audit and clean repository consistency | Final quality pass across docs, items, tools | `README.md`, `docs/*`, `tools/*`, `ox_inventory/items.lua` | `chore:`, `fix:`, `docs:` | Full validation run and link audit |

## Keeping every PR useful

- Define objective and acceptance criteria before coding.
- Limit scope to one cohesive improvement.
- Attach proof (validator output or screenshots where relevant).

## Review process for each PR

1. Confirm PR scope matches title.
2. Review file diff relevance.
3. Run validator and link checks.
4. Verify no private/copyrighted issues.
5. Merge only when quality checks pass.

## Avoiding low-quality contribution farming

- Reject PRs that add noise without value.
- Reject vague commit history.
- Reject unrelated mixed changes.
- Prioritize maintainable, tested improvements.
