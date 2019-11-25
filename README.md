  1. Create AWS LightSail instance
      + OS only - Ubuntu 16.04
      + Startup script -
        ```
        curl -o /tmp/bootstrap https://raw.githubusercontent.com/kalisjoshua/pixelmon-server/master/bootstrap
        chmod +x /tmp/bootstrap
        ```
      + Networking (tab) add custom PORTs
          - 25565
          - 25575
  2. Update and install packages
      + `sudo apt-get update -y && sudo apt-get upgrade -y`
          - *There may be a dialog that requires you to press enter to keep the local version of a config file.*
      + `sudo apt-get install -y curl openjdk-8-jdk openjdk-8-jre`
  3. `sudo /tmp/bootstrap start`

## TODO

  - Whitelist population
  - upload save game
  - preserve voxel map settings for server game
  - set users as admin for commands
