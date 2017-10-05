genrule(
  name = 'configure',
  out = 'out',
  srcs = glob([
    'configure',
    'zlib.h',
    '**/*.in',
  ]),
  cmd = 'cp -r $SRCDIR $OUT && cd $OUT && ./configure',
)

cxx_library(
  name = 'zlib',
  header_namespace = '',
  exported_headers = glob([
    '*.h',
  ]),
  srcs = glob([
    '*.c',
  ]),
  visibility = [
    'PUBLIC',
  ],
)
