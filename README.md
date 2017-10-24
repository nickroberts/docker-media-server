# Docker Media Server

## Setup

Create a `.env` file with the following:
```
OPENVPN_PROVIDER=<OPENVPN_PROVIDER>
OPENVPN_USERNAME=<OPENVPN_USERNAME>
OPENVPN_PASSWORD=<OPENVPN_PASSWORD>
PLEX_CLAIM=<PLEX_CLAIM_TOKEN>
MOVIES_FOLDER=<MOVIES_FOLDER>
TV_SHOWS_FOLDER=<TV_SHOWS_FOLDER>
USER_ID=<USER_ID>
GROUP_ID=<GROUP_ID>
```

*Note: There might be some issues on Windows with the paths. Also, the USER_ID and GROUP_ID might be wonky on Windows. Need to figure that out, as well.*

TODO: Reverse proxy with a domain name. Perhaps using Traefik