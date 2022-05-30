#!/bin/bash

for plug in $(snap connections | grep gtk-common-themes:icon-themes | awk '{print $2}'); do sudo snap connect ${plug} oxygen-cursors:icon-themes; done