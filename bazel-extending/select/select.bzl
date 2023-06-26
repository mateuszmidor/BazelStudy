# this is bazel extension file (.bzl)

def _select_library_impl(ctx):
    # declare output file for this rule
    output_file = ctx.actions.declare_file(ctx.label.name + ".output")

    ctx.actions.write(output_file, "Selected %s!" % ctx.attr.hotel_category)
    print (ctx.attr.hotel_category)

    # output must be returned or the rule will be smartly pruned from the bazel action graph
    return [
        DefaultInfo(files = depset([output_file])),
    ]

# select_library is a rule: using the "rule" built-in; it implements custom functionality
select_library = rule(
    implementation = _select_library_impl,
    attrs = {
        "hotel_category": attr.string(default = "unknown price category"), # declare custom attribute - message to be printed out
    },
)
