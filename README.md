# khald
A daemon for the awesome terminal-based calendar program, [khal](https://github.com/pimutils/khal) which notifies you of upcoming events in your calendar.

## Installation
```sh
# Installs khald, installs its config, and starts it as a service
./install.sh
```

## Configuration
After installation, the config file will be located at `$XDG_CONFIG_HOME/khald/config`.

The config file's contents are displayed below:

```sh
# How long before an event would you like to be notified?
# For example:
#  - 1 hour before: 1h
#  - 30 minutes before: 30m
# Possible suffixes:
#  - h: hours
#  - m: minutes
#  - d: days
# Default: 1 hour before
NOTIFY_INTERVAL="1h"

# How often do you want to check if there are any upcoming events and display them?
# Default: 60 seconds (once per minute)
REFRESH_INTERVAL="60"
```
