#!/bin/bash

echo "Checking react"

if create-react-app --version > /dev/null; then
  echo "react is already installed."
else
  echo "installing react"
  if node -v > /dev/null; then
    if npm -v > /dev/null; then
      echo "installing npx - global"
      npm install -g npx
      echo "installing create-react-app - global"
      npm install -g create-react-app
    else
      echo "npm is not installed"
    fi
  else
    echo "node is not installed"
  fi
fi