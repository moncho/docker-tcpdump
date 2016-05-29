TCPDump
=======

Yet another (Alpine-based) Docker container to run [TCPDump]. Running without parameters will run tcpdump keeping at max one day of pcaps in 15 minute chunks.

Volume with pcaps available at `/pcap/`.

Usage
-----

#### View help and version

    $ docker run --rm moncho/tcpdump --help

#### Examine the host network

    $ docker run --rm --net=host -v ~/pcap:/pcap moncho/tcpdump

#### Examine the TCP traffic on the host network with Wireshark

    $ docker run --rm --net=host moncho/tcpdump -i any -w - | wireshark -k -i -

#### Examine the traffic of Docker container `foo` with Wireshark

    $ docker run --rm --net=container:foo moncho/tcpdump -i any --immediate-mode -w - | wireshark -k -i -


## Credits

Heavily inspired by this [post](http://jerrygamblin.com/2016/05/28/a-docker-container-to-capture-all-traffic-from-host/).


[TCPDump]: http://www.tcpdump.org/
