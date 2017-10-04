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
  header_namespace = 'zlib', 
  exported_headers = glob([
    '*.h',
  ]),
  srcs = glob([
    '*.c',
  ]),
  preprocessor_flags = [
    '-DMY_ZCALLOC=1',
  ],
  visibility = [
    'PUBLIC',
  ],
)
