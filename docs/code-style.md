# Go Code Style Guide

## Formatting

- Use `gofmt` to automatically format your code.
- Line length should be kept to a reasonable limit (around 100 characters).
- Use tabs for indentation (standard in Go).
- Add a newline at the end of every file.

## Naming Conventions

- Use `camelCase` for variable and function names.
- Use `PascalCase` for exported names (public functions, variables, types).
- Use `snake_case` for file names and test function names.
- Use short, concise names for variables with limited scope.
- Use descriptive names for exported functions and types.
- Acronyms should be capitalized (e.g., `HTTP`, `URL`, `ID`).

## Package Organization

- Package names should be short, concise, and lowercase without underscores.
- One package per directory, with the directory name matching the package name.
- Avoid generic package names like `util`, `common`, or `model`.
- Keep the `main` package as small as possible.

## Comments

- All exported (public) functions, types, and variables must have a comment.
- Comments should begin with the name of the thing being described.
- Use complete sentences with proper punctuation.
- Include examples in comments for non-obvious functions.
- Use `// TODO:` or `// FIXME:` for temporary comments.

## Error Handling

- Always check for errors, no exceptions.
- Don't use `_` to ignore errors unless there's a very good reason.
- Error messages should be capitalized but not end with punctuation.
- Use error wrapping for adding context: `fmt.Errorf("doing X: %w", err)`.
- Return errors rather than panicking.

## Control Structures

- Prefer early returns to reduce indentation.
- Use blank lines between blocks of code for readability.
- Avoid nested if statements when possible.
- Use the comma ok idiom for map lookups: `value, ok := myMap[key]`.

## Concurrency

- Use goroutines sparingly and always ensure they terminate.
- Always use proper synchronization (mutexes, channels, etc.).
- Prefer channels for communication, mutexes for state.
- Document thread-safety expectations for public APIs.

## Testing

- One assertion per test, no exceptions.
- Name tests with descriptive, lowercase, underscored names: `test_validates_input`.
- Avoid the word "should" in test names.
- Use table-driven tests for multiple test cases.
- Organize tests into "happy path" and "sad path" categories.
- Use subtests for organizing related test cases.
- Use SQLite in-memory for database tests.
- Test setup should be in setup functions or `testdata` packages.

## Dependencies

- Minimize external dependencies.
- Pin dependency versions in `go.mod`.
- Separate `internal` packages from packages meant for external use.
- Prefer standard library solutions when available.

## Documentation

- Include usage examples in package documentation.
- Document expected behavior, including error cases.
- Keep documentation up-to-date with code changes.
- Use `godoc` compatible comments.

## Performance

- Prefer readable code over premature optimization.
- Use benchmarks to identify performance bottlenecks.
- Consider memory allocations in hot paths.
- Use profiling tools before optimizing.