#!/bin/bash

echo "Starting a background task..."
sleep 5 &
echo "Task running in background with PID $!"
wait
echo "Done!!!"