#!/bin/bash

# TODO: if the  .env file already exists, warn the user and exit:
cp .env .env-backup
ROOTS=$(pants roots)
python3 -c "print('PYTHONPATH=./' + ':./'.join('''${ROOTS}'''.replace(' ', '\\ ').split('\n')) + ':\$PYTHONPATH')" > .env
