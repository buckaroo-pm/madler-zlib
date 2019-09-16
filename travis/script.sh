#!/bin/bash

buckaroo install

if [ $BUCKAROO_USE_BAZEL ]
then

bazel build //:valuable
bazel build //test:example
bazel build //test:infcover
bazel build //test:minigzip

else

buck build -c ui.superconsole=DISABLED //:zlib
buck build -c ui.superconsole=DISABLED //test:example
buck build -c ui.superconsole=DISABLED //test:infcover
buck build -c ui.superconsole=DISABLED //test:minigzip

fi
