#!/bin/bash

export PATH="$HOME/.local/bin:$PATH"

npm run build && cp -dRpu public/* /var/www/html
