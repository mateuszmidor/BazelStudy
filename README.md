# BazelStudy

For studying Bazel build tool.  
Based on https://www.youtube.com/playlist?list=PLdk2EmelRVLovmSToc_DK7F1DV_ZEljbx

For rules for specific languages like python, go, and tools like docker, see: https://github.com/bazelbuild/

## Install

Install `bazelisk`, which is a helpful wrapper around bazel, and also installs bazel for you
```sh
brew install bazelisk
```

## Commands

* bazel --version
* bazel build //...
* bazel build //projects/projectA/...