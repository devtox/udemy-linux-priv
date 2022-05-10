#!/bin/bash

useradd -u user1 -g users -d /home/username -s /bin/bash -p $(echo password | openssl passwd -1 -stdin) user1
