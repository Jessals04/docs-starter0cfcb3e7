#!/bin/sh

# Check if the volume /docs is empty
if [ -z "$(ls -A /docs)" ]; then
   echo "Volume is empty, copying data..."
   mkdir docs
   cp -r /src/* /docs/
else
   echo "Volume is not empty, skipping data copy."
fi

# Start the docuo dev
docuo dev

# Keep the container running
tail -f /dev/null
