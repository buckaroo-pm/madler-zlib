filegroup(
  name = "headers",
  srcs = glob([
    "*.h",
  ]),
)

cc_library(
  name = "zlib",
  hdrs = glob([
    "*.h",
  ]),
  srcs = glob([
    "*.c",
  ]),
  copts = select({
    "@bazel_tools//src/conditions:linux_x86_64": [ "-Wno-implicit-function-declaration" ],
    "//conditions:default": [],
  }),
  visibility = [
    "//visibility:public",
  ],
)
