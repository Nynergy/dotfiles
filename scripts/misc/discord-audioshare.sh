#!/bin/sh

PACTL_ID_FILE=/home/benjamin/.pactl_ids

if [[ -f "$PACTL_ID_FILE" ]]; then
	while read ID; do
		pactl unload-module "$ID"
	done < "$PACTL_ID_FILE"
	rm -f "$PACTL_ID_FILE"
else
	pactl load-module module-null-sink sink_name=V1 sink_properties=device.description=mic+app > "$PACTL_ID_FILE"
	pactl load-module module-null-sink sink_name=V2 sink_properties=device.description=app >> "$PACTL_ID_FILE"
	pactl load-module module-loopback source=@DEFAULT_SOURCE@ sink=V1 >> "$PACTL_ID_FILE"
	pactl load-module module-loopback source=V2.monitor sink=V1 >> "$PACTL_ID_FILE"
	pactl load-module module-loopback source=V2.monitor sink=@DEFAULT_SINK@ >> "$PACTL_ID_FILE"
fi
