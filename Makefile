#!/usr/bin/make
#
# dss - double space compression
#
# @(#) $Revision$
# @(#) $Id$
# @(#) $Source$
#
# Copyright (c) 1987 by Landon Curt Noll.  All Rights Reserved.
#
# Permission to use, copy, modify, and distribute this software and
# its documentation for any purpose and without fee is hereby granted,
# provided that the above copyright, this permission notice and text
# this comment, and the disclaimer below appear in all of the following:
#
#       supporting documentation
#       source copies
#       source works derived from this source
#       binaries derived from this source or from derived source
#
# LANDON CURT NOLL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
# INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO
# EVENT SHALL LANDON CURT NOLL BE LIABLE FOR ANY SPECIAL, INDIRECT OR
# CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF
# USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.


SHELL=/bin/sh
BINOWN=bin
BINGRP=bin
BINMODE=0555
DESTBIN=/usr/local/bin
DESTLIB=/usr/local/lib
INSTALL=install

all: dss

dss: dss.sh
	-rm -f $@
	cp $@.sh $@
	chmod +x $@

install: all dss.sed
	${INSTALL} -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} dss ${DESTBIN}/dss
	-mkdir -p ${DESTLIB}/dss
	${INSTALL} -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} dss.sed ${DESTLIB}/dss/dss.sed

clean:

clobber: clean
	-rm -f dss
