#!/bin/bash
echo "Adding all shortcode..."
git add --all
echo "Please enter commit description:"
read DESC 
git commit -m "$DESC"
echo "Pushing to origin master"
git push origin master