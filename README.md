TCPDump
=======

Yet another (Alpine-based) Docker container to run [TCPDump].

Usage
-----

Data volume available at `/pcap/`.

#### View help and version

    $ docker run --rm moncho/tcpdump --help

#### Examine the host network

    $ docker run --rm --net=host moncho/tcpdump

#### Examine the TCP traffic on the host network with Wireshark

    $ docker run --rm --net=host moncho/tcpdump -i any -w - | wireshark -k -i -

#### Examine the traffic of Docker container `foo` with Wireshark

    $ docker run --rm --net=container:foo moncho/tcpdump -i any --immediate-mode -w - | wireshark -k -i -


[TCPDump]: http://www.tcpdump.org/
