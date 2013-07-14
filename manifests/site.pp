import "defaults"
import "classes/*.pp"
import "config"

import "box"

$source_base="/tmp/puppet"

include box
$amixerconf_mode="duplex"
include box::audio
