

# lighthouse printer

## bash printing

1. start `bash print-prompt.sh` (ssh or localterminal)
2. type any dreamId

## OSC printing from milumin

### setup millumin

find raspberryPi ip address on local network (ex. 192.168.1.1)

1. create new OSC Server
2. `to machine` contain raspberryPi ip address
3. `to port` contain `3333`
4. OSC address is `/printdream` and parameter is an `int` representing the `dreamId`

### printer monitoring

- check/empty printer tasks
- change default settings (black level, speed…)

find raspberryPi ip address on local network (ex. 192.168.1.1)

1. find got to `http://192.168.1.1:631`
2. when asked connect with raspberryPi login and password
