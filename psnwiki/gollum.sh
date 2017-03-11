#!/bin/bash

if [[ $URLPATH != "/" ]]; then
    gollum --base-path $URLPATH --port $PORT
else
    gollum --port $PORT
fi
