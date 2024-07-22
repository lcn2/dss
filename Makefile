#!/usr/bin/env make
#
# dss - double space suppression
#
# Replace consecutive vertical space lines with single line.
#
# For the GitHub repo, see:
#
#   https://github.com/lcn2/dss
#
# Copyright (c) 1987,2023-2024 by Landon Curt Noll.  All Rights Reserved.
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


SHELL= bash
BINMODE= 0555
READONLY_MODE= 0444
DESTBIN= /usr/local/bin
DESTLIB= /usr/local/lib
INSTALL= install
RM= rm
CP= cp
CHMOD= chmod
MKDIR= mkdir

all: dss
	${CHMOD} +x dss

install: all dss
	${INSTALL} -m ${BINMODE} dss ${DESTBIN}
	${MKDIR} -p ${DESTLIB}/dss
	${INSTALL} -m ${READONLY_MODE} dss.sed ${DESTLIB}/dss/dss.sed

clean:

clobber: clean
	${RM} -f dss
