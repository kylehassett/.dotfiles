#!/bin/bash

echo "Setting up fish..."

echo /usr/local/bin/fish | sudo tee -a /etc/shells && chsh -s /usr/local/bin/fish

echo "Fish's done."
