# Home server Ansible config

TODOs
- [x] Setup config locations to be outside on `/mnt/hdd`, look for a way to set a mountpoint for the configs, maybe a filesystem-on-a-file?
- [ ] Fix Kubelet `hostPort` capability from CNI plugins
- [ ] Setup telemetry alerts for system healthcheck, maybe also use a notification system to send an email to myself
    - [ ] Disk IO
    - [ ] SMART info
    - [ ] blackout alert, when recovered
- [ ] Setup a backup mechanism for services configurations
- [ ] Make sure that disk writes are always outside of system disk
    - [ ] If possible also limit data flushing to disk as much as possible on kernel configuration
- [ ] Set docker container locations into volatile locations or a place inside the external drive
- [ ] Configure system for more agressive disk caching
      https://unix.stackexchange.com/questions/30286/can-i-configure-my-linux-system-for-more-aggressive-file-system-caching
- [ ] Setup more services
    - [ ] Tailscale entrypoint?
    - [ ] Telemetry service
    - [ ] NAS? With samba
