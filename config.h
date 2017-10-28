/* config.h.  Generated from config.h.in by configure.  */
/*
 * $Id: config.h.in,v 1.10 2005/12/09 16:33:51 jsommers Exp $
 */

/*
 * Copyright (c) 2005  Joel Sommers.  All rights reserved.
 *
 * This file is part of yaz, an end-to-end available bandwidth
 * measurement tool.
 *
 * Yaz is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * Yaz is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Yaz; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

#ifndef __CONFIG_H__
#define __CONFIG_H__

#define SOCKLEN_T socklen_t

#define HAVE_FLOAT_H 1

#define HAVE_PTHREAD_H 1

/* #undef HAVE_PCAP_H */

/* #undef HAVE_PCAP_SETNONBLOCK */

/* #undef HAVE_PCAP_BIOCIMMEDIATE */

#define HAVE_SCHED_SETSCHEDULER 1

#define HAVE_SYSCONF 1

/* #undef HAVE_SYSCTLBYNAME */

#define HAVE_SYS_PARAM_H 1

#define HAVE_STRING_H 1

#endif // __CONFIG_H__
