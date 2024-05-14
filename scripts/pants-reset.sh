#!/bin/bash
# From: https://docs.backend.ai/en/latest/dev/daily-workflows.html

echo "Killing pantsd if it's running..."
pgrep pantsd | xargs -r kill

echo "Removing any cache files/folders we can find..."
rm -r /tmp/*-pants/ .pants.d .pids ~/.cache/pants
