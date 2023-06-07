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
* bazel test //projects/...
* bazel run //projects/my-python-app:main
* bazel query @gorilla_mux//... - list all dependencies that can be used in eg. go_binary -> deps [...], eg. "@gorilla_mux//:mux"
* `bazel run  projects/my-python-app:python_web_image -- --norun` - build docker image without running, see: `docker image ls`
  * then: `docker run -p 5000:5000 bazel/projects/my-python-app:python_web_image`