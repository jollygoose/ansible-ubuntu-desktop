#!/bin/bash

# gtk2
for plug in $(snap connections | grep gtk-common-themes:gtk-2-themes | awk '{print $2}'); do sudo snap connect ${plug} flat-remix-gtk:gtk-2-themes; done

# gtk3
for plug in $(snap connections | grep gtk-common-themes:gtk-3-themes | awk '{print $2}'); do sudo snap connect ${plug} flat-remix-gtk:gtk-3-themes; done

# icons
for plug in $(snap connections | grep gtk-common-themes:icon-themes | awk '{print $2}'); do sudo snap connect ${plug} flat-remix:icon-themes; done