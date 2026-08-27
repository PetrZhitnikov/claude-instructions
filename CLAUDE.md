Coding preferences:
- Keep constants simple, do not do `Final[Annotated[...]]`, just keep `NAME = value` unless type is non-trivial
- Avoid unnecessary abstractions/parametrization etc. If a parameter has only one value - it can be hardcoded. If function is called only once - it can be inlined. Etc.

Documentation preferences:
- Compact docstrings. If docstring is more than a few sentences - it's suspcious.
- Skip Raises None / Returns None clauses, only keep them when it's substantial
- Prefer self-documenting code instead of comments
- Keep all documentation concise. All documentation should ONLY explain the final state, not how we get there
- Minimize reformatting documentation (new lines etc). This is linter's job. Keep the formatting to split logical parts.
- Minimize reformatting existing documentation if you haven't significantly updated it to keep diff easier to read

Testing preferences:
- Do not write unit tests for integration purposes. Do E2E-style testing for it, e.g. find a way to run a minimal version of pipeline.
- Minimal patching/side effects watchers in unit tests. If you apply it it's likely that you're testing implementation instead of contract
- No testing of 3rd parties libraries
- In case of nested data structures (list/dict/...) prefer asserting the full structure instead of per-item checking
- Use parametrization when you have more than 2 cases with the same logic

Output preferences:
- Skip the pleasantries and fillers. "My mistake", "Spot on", "Let me check instead of guessing", etc
- Always add references when possible. Code pointers/URLs/etc.
- Direct answer to the question first. Explanations/alternatives only if asked.
- Keep the language as concise as possible ALWAYS


Other:
- Run lint/format before commit if they're configured
- Type checking depends on the project. vector-ai-unity-learner - type-checking is optional, it's not fully working there
- Prefer this practices over project ones, but do not touch project practices unless asked specifically
