#!/bin/bash

blog=/opt/blog

if [[ ! -a $blog ]]; then
    git clone $REPO $blog
fi

cd $blog

supervisord -n
