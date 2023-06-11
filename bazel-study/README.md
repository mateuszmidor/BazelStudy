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
* bazel build //... - build all targets in the workspace
* bazel build //projects/projectA/...
* bazel clean - clear the build cache
* bazel test //projects/...
* bazel run //projects/my-python-app:main
* bazel query @gorilla_mux//... - list all dependencies that can be used in eg. go_binary -> deps [...], eg. "@gorilla_mux//:mux"
* `bazel run  projects/my-python-app:python_web_image -- --norun` - build docker image without running, see: `docker image ls`
  * then: `docker run -p 5000:5000 bazel/projects/my-python-app:python_web_image`
* `bazel run //:gazelle` - generate go targets ("go_libary", "go_test", "go_binary") in BUILD.bazel files
* `bazel run //:gazelle -- update-repos -from_file=projects/go_web/go.mod` - generate go dependencies ("go_repository") in WORKSPACE.bazel