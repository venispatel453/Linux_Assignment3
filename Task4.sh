#!/bin/bash

create_directory() {
  echo "Enter the name of the directory to create:"
  read -r dir_name

  if [ -e "$dir_name" ]; then
    echo "Error: Directory '$dir_name' already exists."
  else
    mkdir "$dir_name"
    echo "Directory '$dir_name' created."
  fi
}

list_files() {
  echo "Listing files in the current directory:"
  ls
}

# Main script
while true; do
  echo "Choose an operation:"
  echo "1. Create Directory"
  echo "2. List Files"
  echo "3. Exit"

  read -r choice

  case $choice in
    1)
      create_directory
      ;;
    2)
      list_files
      ;;
    3)
      echo "Exiting script."
      exit 0
      ;;
    *)
      echo "Invalid choice. Please enter a valid option (1-3)."
      ;;
  esac
done