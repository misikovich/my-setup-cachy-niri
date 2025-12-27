#!/bin/bash

# List all available profiles, extract their names, and store them in an array
PROFILES=("power-saver" "balanced" "performance")
echo "Got profiles: $PROFILES"

# Get the currently active profile
CURRENT_PROFILE=$(powerprofilesctl get)
echo "Got current profile: $CURRENT_PROFILE"


# Find the index of the current profile
CURRENT_INDEX=-1
for i in "${!PROFILES[@]}"; do
    if [[ "${PROFILES[$i]}" == "$CURRENT_PROFILE" ]]; then
        CURRENT_INDEX=$i
        break
    fi
done

# Calculate the index of the next profile, cycling back to the start if at the end
NEXT_INDEX=$(((CURRENT_INDEX + 1) % ${#PROFILES[@]}))
NEXT_PROFILE=${PROFILES[$NEXT_INDEX]}

# Set the new profile
powerprofilesctl set "$NEXT_PROFILE"

# Optional: Print the new profile name
echo "Switched to: $NEXT_PROFILE"
