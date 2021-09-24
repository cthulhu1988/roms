#!/bin/bash
if [[ ! -f "/home/dustin/RetroPie/roms/ports/CaveStory/Doukutsu.exe" ]]; then
    dialog --no-cancel --pause "Copy the original Cave Story game files to /home/dustin/RetroPie/roms/ports/CaveStory so you have the file /home/dustin/RetroPie/roms/ports/CaveStory/Doukutsu.exe present." 22 76 15
else
    "/opt/retropie/supplementary/runcommand/runcommand.sh" 0 _PORT_ cavestory "/home/dustin/RetroPie/roms/ports/CaveStory/Doukutsu.exe"
fi
