# $NetBSD: Makefile,v 1.20 2013/02/15 11:54:05 obache Exp $

PKGNAME=	gnuradio-audio-oss-${VERSION}
PKGREVISION=	7
COMMENT=	Open Sound System support for GNU Radio

.include "../../meta-pkgs/gnuradio/Makefile.common"

CONF_FILES+=	${EGDIR}/gr-audio-oss.conf ${PKG_SYSCONFDIR}/gr-audio-oss.conf
CONFIGURE_ARGS+=--enable-gr-audio-oss
CONFIGURE_ARGS+=--with-gnuradio-core --with-omnithread --with-gruel

PYTHON_PATCH_SCRIPTS+=	gr-audio-oss/src/qa_oss.py
#LDFLAGS = -lgnuradio-core ${PTHREAD_LDFLAGS} ${PTHREAD_LIBS}

.include "../../mk/oss.buildlink3.mk"
.include "../../ham/gnuradio-core/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
