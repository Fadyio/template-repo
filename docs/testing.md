// ## Tests

// All tests will be run with the Go testing package. In addition:

// - One assertion per test, *no* exceptions
// - Tests should arrange the test data in setup functions
// - Tests should have descriptive names, lower case with underscores: `test_this_is_a_test_name`
// - Tests may use a database, which should always be SQLite in-memory
// - The word "should" will be avoided in test names. A test either passes or fails, it `is`, `is_not`, `does`, or `does_not`. There is no try
// - Tests will be nested, with the outer test function indicating the main test feature, and the first inner subtest being the "happy path" - which is what happens when everything works as expected. The rest of the subtests will be devoted to "sad path" tests, with bad data, nil values, and any other unexpected settings we can think of