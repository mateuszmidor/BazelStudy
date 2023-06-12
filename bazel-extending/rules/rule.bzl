# this is bazel extension file (.bzl)

def _hello_library_impl(ctx):
    # declare output file for this rule
    output_file = ctx.actions.declare_file(ctx.label.name + ".output")

    # now, to write to a file, do either:
    ctx.actions.run(
        mnemonic = "OutputHello",
        executable = "/bin/sh",
        arguments = ["-c", "echo Hellow! > %s" % output_file.path],
        outputs = [output_file],
    )
    # OR:
    # ctx.actions.write(output_file, "Hellow!")

    # output must be returned or the rule will be smartly pruned from the bazel action graph
    return [
        DefaultInfo(files = depset([output_file])),
    ]

# hello_library is a rule: using the "rule" built-in; it implements custom functionality
hello_library = rule(
    implementation = _hello_library_impl,
    attrs = {
        "deps": attr.label_list(),
    },
)
