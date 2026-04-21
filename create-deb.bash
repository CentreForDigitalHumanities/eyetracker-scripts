#!/bin/bash

fpm -s dir \
    -t deb \
    -p ils-eyetracker-scripts.deb \
    --name ils-eyetracker-scripts \
    --description "Eyetracking scripts provided by the ils" \
    --version 1.0.0  \
    --architecture all \
    --depends python3 \
    --depends eyelink-edf2asc \
    --license gpl3 \
    --url https://github.com/CentreForDigitalHumanities/eyetracker-script \
    edfinfo.py=/usr/bin/edfinfo \
    mkasczep.py=/usr/bin/mkasczep \
    mkobtzep.py=/usr/bin/mkobtzep
