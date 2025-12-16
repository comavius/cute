# Cute

Cute: A CLI tool to exe"CUTE"s commands from markdown files.

## Usage

```sh
$ source ./cute.sh
$ cute -h
Cute: A CLI tool to exe"CUTE"s commands from markdown files.

Usage:
  cute [-h] [-d] [TASK_NAME|SLUG ...]

Options:
  -h: Show this help message and exit
  -d: Enable debug mode (prints commands as they are executed)

Arguments:
  TASK_NAME|SLUG: Task name or slug to execute. If specified, fuzzy search will be skipped.
                  Multiple tasks can be specified to execute them in order.

Example:
  cute                   # Interactive mode with fzf
  cute -d                # Enable debug mode with fzf selection
  cute build             # Execute task with slug "build"
  cute "Build Project"   # Execute task by name
  cute build test deploy # Execute multiple tasks in order
```
