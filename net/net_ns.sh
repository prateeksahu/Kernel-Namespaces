#!/bin/bash

ip l
ip link set dev lo up
ping localhost
