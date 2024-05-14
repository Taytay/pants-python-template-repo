#!/bin/bash
pants lint ::
pants tailor --check ::
pants update-build-files --check ::
