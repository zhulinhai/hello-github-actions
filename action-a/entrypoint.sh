name: My Workflow

on: [push]

jobs:
  runMultipleCommands:
    runs-on: ubuntu-latest
    steps:
     - uses: actions/checkout@v1
     - run: |
        echo "A initial message"
        pip install -r requirements.txt
        echo "Another message or command"
        python myscript.py
        bash some-shell-script-file.sh -xe
     - run: echo "One last message"