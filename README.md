# [Nomifactory](https://www.curseforge.com/minecraft/modpacks/nomifactory)
<!-- MarkdownTOC autolink="true" indent="  " markdown_preview="github" -->

- [Description](#description)
- [Requirements](#requirements)
- [Options](#options)
- [Adding Minecraft Operators](#adding-minecraft-operators)
- [Source](#source)

<!-- /MarkdownTOC -->

## Description

This container will run an instance of Nomifactory server. 

I forked this from [Goobaroo](https://github.com/Goobaroo) who did a nice job on other Minecraft modpacks. 

The docker on first run will download Nomifactory 1.2.2.1. After the first run it will simply start the server.

## Requirements

* /data mounted to a persistent disk
* Make sure that the EULA  is set to `true`

## Options

These environment variables can be set at run time to override their defaults.

* JVM_OPTS "-Xms2048m -Xmx2048m"
* MOTD "A Minecraft (Nomifactory 1.2.2.1) Server Powered by Docker"
* LEVEL world

## Adding Minecraft Operators

Set the enviroment variable `OPS` with a comma separated list of players.

example:
`OPS="OpPlayer1,OpPlayer2"`

## Source
Github: https://github.com/Goobaroo/docker-ftbOceanBlock
Docker: https://hub.docker.com/repository/docker/goobaroo/ftboceanblock

## Credit
[Nomifactory Team](https://github.com/Nomifactory/Nomifactory) - The awesome mod pack
[Goobaroo](https://github.com/Goobaroo) - Previous work used as a template