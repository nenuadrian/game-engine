#!/bin/bash

# Function to check the exit status of the last executed command
check_status() {
    if [ $? -ne 0 ]; then
        echo "Error: $1 failed. Exiting."
        exit 1
    fi
}

# Step 1: Prepare the build
echo "Preparing the build..."
./scripts/prep_build.sh
check_status "Preparation"

# Step 2: Build the project
echo "Building the project..."
./scripts/build.sh
check_status "Build"

# Step 3: Run tests
echo "Running tests..."
./scripts/test.sh
check_status "Testing"

# Step 4: Execute the engine
echo "Executing the engine..."
./build/ENGINE
check_status "Execution"

echo "All steps completed successfully."