# check_traffic

check_traffic is a Nagios plugin to monitor the amount of network traffic

## Usage

```
     check_traffic --critical=crit --warning=warn --interface=iface --speed=speed
                      [--verbose] [--reset] [--help]

     Required arguments
      --critical,c  crit      critical
      --warning,w   warn      warning
      --interface,i iface     network interface
      --speeed,s              speed (in Mbit/s)

     Options
      --help,-h,-?            this help message
      --reset,r               initialize counter
      --version,V             print version and exit
      --verbose,v             verbose
```

`check_traffic` uses the `/proc/net/dev` Linux entry to compute the
amount of transferred bytes from the last plugin execution (temporary
data is stored in the `/tmp/check_traffic-iface` file)

## 32 bit kernels

Since `/proc/net/dev` uses 32bit counters overflows are a problem
(especially on a fast interface)

| Speed     | Maximum safe check period |
| --------- | ------------------------- |
| 10Mbit/s  | 55'                       |
| 100Mbit/s | 5'8"                      |
| 1GBit/s   | 32"                       |
