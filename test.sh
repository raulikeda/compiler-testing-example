#!/usr/bin/env python3
import os
import sys
from compiler_testing_lib.runner import TestRunner

lang = sys.argv[1] if len(sys.argv) > 1 else 'python'

if lang == 'js':
    runner = TestRunner(language='python', version='v2.1', max_errors=3, timeout=10, file_extension='py')
    result = runner.run_tests(command_template='node main.js')
else:
    print(f"Running tests for v0.0...")
    runner = TestRunner(language='python', version='v0.0', max_errors=3, timeout=10, file_extension='py')
    result = runner.run_tests(command_template='python3 main_v0.0.py')

    if result == "":
        print("\033[92mAll tests passed!\033[0m")  # Green text
    else:
        print("\n\033[91mTest Divergences:\033[0m\n")  # Red text
        print(result)

    print(f"Running tests for v2.1...")
    runner = TestRunner(language='python', version='v2.1', max_errors=3, timeout=10, file_extension='py')
    result = runner.run_tests(command_template='python3 main_v2.1.py')

    if result == "":
        print("\033[92mAll tests passed!\033[0m")  # Green text
    else:
        print("\n\033[91mTest Divergences:\033[0m\n")  # Red text
        print(result)

# Optionally, demonstrate running main.py with a test file
def run_main_with_codefile(codefile):
    os.system(f"python3 example/main.py {codefile}")

# Example usage (uncomment to run):
# run_main_with_codefile('languages/python/v1.0/test001.py') 
