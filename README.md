> 🇫🇷 [Version française](README.fr.md)

# Tycho Containers

`@tycho/containers` is the Tycho module behind `tycho containers`. Its purpose is to deploy catalogue recipes on a single host with Podman: start and stop services, list running containers, watch resource usage and follow logs. For the overall picture, see the [Tycho core README](https://git.qtrn.io/tycho/tycho).

## Install

```bash
tycho module add containers
```

`ps` and `stats` need `podman` on the host.

## Usage

```bash
tycho containers install <recipe>   # deploy a recipe
tycho containers up [service]       # start a service
tycho containers down [service]     # stop a service (alias: stop)
tycho containers ps                 # list Compose-labelled containers (podman ps)
tycho containers stats              # one-shot resource usage (podman stats --no-stream)
tycho containers logs [service]     # follow logs
```

Without a command, or with an unknown one, the module prints its usage.

## Status

Early skeleton. Only `ps` and `stats` do real work: they call `podman ps --filter label=com.docker.compose.project` and `podman stats --no-stream`. `install`, `up`, `down`, `stop` and `logs` are placeholders that only print a message.

## Licence

AGPL-3.0-only, © Quatrain Technologies. Source: https://git.qtrn.io/tycho/tycho-containers
