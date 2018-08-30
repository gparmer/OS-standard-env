#!/bin/bash

# Update to make sure we have the latest packages
sudo apt-get update
sudo apt-get -y autoremove

# Tools for making projects
sudo apt-get -y install make
sudo apt-get -y install cmake

# A few useful tools
sudo apt-get -y install bc
sudo apt-get -y install gcc-multilib
sudo apt-get -y install binutils-dev
sudo apt-get -y install g++
sudo apt-get -y install grep
sudo apt-get -y install curl
sudo apt-get -y install build-essential


# Useful debugging tools
sudo apt-get -y install systemtap

# Useful general purpose tools
sudo apt-get -y install git
sudo apt-get -y install ntp
