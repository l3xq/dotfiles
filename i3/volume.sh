#!/bin/bash
# $1 is + or - percentage
SINK=$(pactl list short sinks | cut -c1-2)

pactl set-sink-volume $SINK $1

