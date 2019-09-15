

# lighthouse printer

## bash printing

1. start `bash print-prompt.sh` (ssh or localterminal)
2. type any dreamId

## OSC printing from milumin

### find raspberryPi raspberryPi IP address on local network

using nmap (mind ip patern 192.168.1 or 192.168.0)

`sudo nmap -sP 192.168.1.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}'`

install nmap 

`brew install nmap`

### setup millumin

1. create new OSC Server
2. set raspberryPi ip address as `to machine` 
3. set `3333` as `to port` 
4. OSC message should be sent to `/printdream` with `dreamId` (integer) as parameter.

### printer monitoring

- check/empty printer tasks
- change default settings (black level, speed…)

find raspberryPi ip address on local network (ex. 192.168.1.1)

1. find got to `http://192.168.1.1:631`
2. when asked connect with raspberryPi login and password
