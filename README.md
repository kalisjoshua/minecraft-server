  1. Create AWS LightSail instance
      + OS only - Ubuntu 16.04
      + Startup script - `curl `
  2. Update and install packages
      + `sudo apt-get update -y && sudo apt-get upgrade -y`
      + `sudo apt-get install -y curl openjdk-8-jdk openjdk-8-jre`
  3. `curl` the bootstrap file to the server
  3. `. bootstrap`

## TODO

  - Test `.service` definition
  - Whitelist population
  - test auto startup on boot
  - upload save game
  - preserve voxel map settings for server game
  - set users as admin for commands
