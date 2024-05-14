#!/bin/bash
# From: https://docs.backend.ai/en/latest/dev/daily-workflows.html
pgrep pantsd | xargs -r kill
rm -r /tmp/*-pants/ .pants.d .pids ~/.cache/pants
