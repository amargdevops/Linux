#!/bin/bash
# Command chaining using logical operators example
{ ls ; pwd ; date ; }  # Sequential execution

which docker && { echo "Docker is installed." ; echo "Docker version is $(docker -v)." ; }   
which apache2 && { echo "Apache2 is installed." || echo "Apache2 is not installed." ; } # Conditional execution
which nginx || { echo "Nginx is not installed." ; echo "Please install Nginx to proceed." ; } # Alternative execution