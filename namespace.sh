#!/bin/bash

# Prompt the user for the number of namespaces to create
echo "Enter the number of namespaces to create:"
read num_namespaces

# Create a loop to iterate over the number of namespaces
for ((i=1; i<=num_namespaces; i++)); do
    # Prompt the user for the namespace name
    echo "Enter the name for namespace $i:"
    read namespace_name

    # Create the namespace using kubectl
    kubectl create namespace "$namespace_name"

    # Check if the namespace was created successfully
    if [[ $? -eq 0 ]]; then
        echo "Namespace $namespace_name created successfully"
    else
        echo "Failed to create namespace $namespace_name"
    fi
done
