# bazel-extending

Commands:
* bazel query //...
* bazel build //rules:rule - creates hello_target.output under "bazel-bin/rules/"
* bazel build //macros/... - creates file1.txt, file2.txt, file3.txt under "bazal-bin/macros/"
* bazel build //select:select_hotel --//select:budget='$$$' # see DEBUG: expensive option