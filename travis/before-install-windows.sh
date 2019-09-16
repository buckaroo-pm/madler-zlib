#!/bin/bash

choco install buckaroo

if [ $BUCKAROO_USE_BAZEL ]
then

choco install bazel

else

choco install buck

ps 'set-executionpolicy unrestricted'
ps 'Install-Module -Name PSCX -AllowClobber'
ps 'Install-Module -Name VSSetup -AllowClobber'
ps 'Import-VisualStudioVars 2017 amd64'

fi
