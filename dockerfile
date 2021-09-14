FROM debian:buster-slim

# Install dependencies
RUN apt-get update && apt-get install -y wget zip unzip python3 python3-pip

# Install LuaJIT and LuaRocks
RUN pip3 install hererocks
RUN hererocks /opt/here --luarocks ^ --luajit ^
ENV PATH /opt/here/bin:$PATH

# Install lrexlib-PCRE2
RUN apt-get update && apt-get install -y libpcre2-dev
RUN luarocks install lrexlib-PCRE2

# Install readline
RUN apt-get update && apt-get install -y libreadline-dev
RUN luarocks install readline

# Install fennel
WORKDIR /usr/local/bin
RUN wget https://fennel-lang.org/downloads/fennel-0.10.0 -O fennel
RUN chmod +x fennel
RUN luarocks install fennel

# Copy test
COPY repro /root/repro

# Finish
WORKDIR /root
