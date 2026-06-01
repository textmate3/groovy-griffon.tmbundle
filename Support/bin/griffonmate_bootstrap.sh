source "$TM_SUPPORT_PATH/lib/bash_init.sh"
export RUBYLIB="$TM_BUNDLE_SUPPORT/GriffonMate:$TM_SUPPORT_PATH/lib/${RUBYLIB:+:$RUBYLIB}"

export TM_GRIFFON=`which $TM_GRIFFON`
script="$1"
shift

ruby -r GriffonMate -r ui -- "$TM_BUNDLE_SUPPORT/GriffonMate/$script.rb" $@
