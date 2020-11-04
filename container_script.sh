#!/bin/bash
echo "Converting Dashcam Footage"
tesla_dashcam --no-check_for_update --no-timestamp --output /var/output/dashcam /var/input/dascham
echo "Done with Dashcam Footage"
echo "Converting Sentry Footage"
tesla_dashcam --no-check_for_update --no-timestamp --output /var/output/sentry /var/input/sentry
echo "Done with Sentry Footage"
