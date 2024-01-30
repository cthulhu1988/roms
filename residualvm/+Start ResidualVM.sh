#!/bin/bash
renderer="$1"
[[ -z "$renderer" ]] && renderer="software"
game="$2"
[[ "$game" =~ ^\+ ]] && game=""
pushd "/home/loki/RetroPie/roms/residualvm" >/dev/null
/opt/retropie/emulators/residualvm/bin/residualvm --renderer=$renderer --fullscreen --joystick=0 --extrapath="/opt/retropie/emulators/residualvm/extra" $game
while read id desc; do
    echo "$desc" > "/home/loki/RetroPie/roms/residualvm/$id.rvm"
done < <(/opt/retropie/emulators/residualvm/bin/residualvm --list-targets | tail -n +3)
popd >/dev/null
