
#!/bin/bash

# Run the Python script
python example.py

# Capture the exit status of the Python script
exit_status=$?

# Use the exit status to perform further logic
if [ $exit_status -eq 0 ]; then
    echo "Python script succeeded"
else
    echo "Python script failed with status $exit_status"
fi
