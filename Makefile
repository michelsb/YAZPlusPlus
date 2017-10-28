#
# $Id: Makefile.in,v 1.15 2005/12/09 16:33:51 jsommers Exp $
#

#
# Copyright (c) 2005  Joel Sommers.  All rights reserved.
#
# This file is part of yaz, an end-to-end available bandwidth
# measurement tool.
#
# Yaz is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# Yaz is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Yaz; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
#

srcdir = .
prefix = /usr/local


#############################################################################

OBJS=yaz.o yaz_recv.o yaz_send.o main.o 

CXX=g++
CPPFLAGS= -I/usr/include/pcap -D_REENTRANT
CXXFLAGS=-g -Wall -pthread
LIBS=-lpthread 
LDFLAGS=

#############################################################################

TARGET=yaz

all: $(TARGET) 

$(TARGET): $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS) $(LIBS)

clean:
	rm -f $(OBJS) $(TARGET) *~ 

distclean: clean
	rm -f Makefile config.log config.status config.h

install: $(TARGET)
	echo "install it manually"

.cc.o:
	$(CXX) -c $< $(CPPFLAGS) $(CXXFLAGS)

#############################################################################

yaz.o: yaz.cc yaz.h

yaz_recv.o: yaz_recv.cc yaz.h

yaz_send.o: yaz_send.cc yaz.h

main.o: main.cc yaz.h

