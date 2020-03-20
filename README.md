  1. Create AWS LightSail instance
      + OS only - Ubuntu 16.04
      + Startup script -
        ```
        curl -o /tmp/bootstrap https://raw.githubusercontent.com/kalisjoshua/minecraft-server/master/bootstrap
        chmod +x /tmp/bootstrap
        ```
      + Networking (tab) add custom PORTs
          - 25565
          - 25575
  2. Update and install packages
      + `sudo apt-get update -y && sudo apt-get upgrade -y`
          - *There may be a dialog that requires you to press enter to keep the local version of a config file.*
      + `sudo apt-get install -y curl openjdk-8-jdk openjdk-8-jre`
  3. `sudo /tmp/bootstrap`
  4. Setup up permissions
      1. `cd /opt/minecraft`
      2. `sudo ./launch`
      3. `sudo sed -i s/white-list=false/white-list=true/ server.properties`
      4. Add users
        <!--
        ```
        # /opt/minecraft/whitelist.json
        [
          {"uuid": "4f7e30c3-e56d-473d-8287-ffc361782807","name": "DragonLadySage"},
          {"uuid": "4da3bbf3-2a74-4458-8227-813c0d020de0","name": "HappyJosh"}
        ]
        ```
        -->
      5. Operators ("admins") - allowed to execute commands
        <!--
        ```
        # /opt/minecraft/ops.json
        [
          {
            "uuid": "4da3bbf3-2a74-4458-8227-813c0d020de0",
            "name": "HappyJosh",
            "level": 4,
            "bypassesPlayerLimit": false
          },
          {
            "uuid": "4f7e30c3-e56d-473d-8287-ffc361782807",
            "name": "DragonLadySage",
            "level": 4,
            "bypassesPlayerLimit": false
          }
        ]
        ```
        -->
  5. `sudo systemctl enable minecraft.service`
  6. `sudo systemctl start minecraft.service`
