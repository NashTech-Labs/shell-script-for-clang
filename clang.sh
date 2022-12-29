#!/bin/bash

CLANG_FORMAT="clang-format-11"

if ! which $CLANG_FORMAT >/dev/null 2>&1; then
  CLANG_FORMAT="clang-format"
fi

if ! which $CLANG_FORMAT >/dev/null 2>&1; then
  echo "error: clang-format not found, make sure it's in the PATH"
  exit 1
fi

$CLANG_FORMAT -i "file"