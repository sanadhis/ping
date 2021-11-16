#!/bin/bash

set -e
trap "echo script return error!" ERR

function check_param () {
    if [ $# -ne 2 ] ; then
        echo "please pass two parameter!"
        exit 1;
    fi
}

function ping_target () {
    local target=$1
    local ping_count=$2

    if ping -c ${ping_count} ${target} > /dev/null ; then
        echo "success"
        exit 0;
    else
        echo "failed `date`"
        exit 1;
    fi
}

function main () {
    check_param "$@"
    ping_target "$@"
}

main "$@"