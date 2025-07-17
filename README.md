# Compiler Testing Example

This repository demonstrates how to use the `compiler-testing-lib` to run automated tests on Python source files, with the ability to launch tests using either a Python or JavaScript runner.

## Features
- Run tests on Python source files using a Python or Node.js (JavaScript) wrapper.
- Pretty-printed test results with GitHub-issue-style output for divergences.
- Easily extensible for other languages and runners.

## Requirements
- Python 3.7+
- Node.js (for JS runner)
- `compiler-testing-lib` (should be installed in your environment)
- `pyyaml` (see `requirements.txt`)

## Directory Structure
```
compiler-testing-example/
  main.py                # Python runner script
  main.js                # JavaScript runner script (calls Python files)
  test.sh                # Test runner script (Python, default) or JS (with arg)
languages/
  python/
    v1.0/
      test001.py         # Example test file
      test002.py         # Example test file
      test.yaml          # Test metadata
```

## Installation
Install Python dependencies:
```bash
pip install -r requirements.txt
```

## Usage

### Run tests with Python runner (default):
```bash
python3 test.sh
```

### Run tests with JavaScript runner:
```bash
python3 test.sh js
```

- The script will print a green message if all tests pass, or a red, GitHub-issue-style table if there are divergences.
- You can add more test files and update `test.yaml` as needed.

## Adding More Languages
To add support for other languages, create a new runner script and update the test runner logic accordingly.

---

**This is a demonstration repo for multi-language test automation.**