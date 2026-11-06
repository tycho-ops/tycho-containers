> 🇬🇧 [English version](README.md)

# Tycho Containers

`@tycho/containers` est le module Tycho derrière `tycho containers`. Il a pour but de déployer les recettes du catalogue sur un hôte unique avec Podman : démarrer et arrêter des services, lister les conteneurs actifs, surveiller les ressources et suivre les journaux. Pour la vue d'ensemble, voir le [README du cœur Tycho](https://git.qtrn.io/tycho/tycho).

## Installation

```bash
tycho module add containers
```

`ps` et `stats` nécessitent `podman` sur l'hôte.

## Utilisation

```bash
tycho containers install <recipe>   # déployer une recette
tycho containers up [service]       # démarrer un service
tycho containers down [service]     # arrêter un service (alias : stop)
tycho containers ps                 # lister les conteneurs étiquetés Compose (podman ps)
tycho containers stats              # consommation des ressources, instantané (podman stats --no-stream)
tycho containers logs [service]     # suivre les journaux
```

Sans commande, ou avec une commande inconnue, le module affiche son aide.

## Statut

Squelette précoce. Seuls `ps` et `stats` font un vrai travail : ils appellent `podman ps --filter label=com.docker.compose.project` et `podman stats --no-stream`. `install`, `up`, `down`, `stop` et `logs` sont des emplacements réservés qui affichent seulement un message.

## Licence

AGPL-3.0-only, © Quatrain Technologies. Source : https://git.qtrn.io/tycho/tycho-containers
