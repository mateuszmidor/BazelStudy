# this is bazel extension file (.bzl)

# file_generator is a macro: not using the "rule" built-in; it tweaks the native "genrule" to use provided arguments
def file_generator(name, arg, visibility=None):
  native.genrule(
    name = name,
    outs = [name + ".txt"],
    cmd = "echo %s > $@" % arg,
    visibility = visibility,
  )