# $NetBSD: Makefile,v 1.26 2013/09/02 19:51:00 adam Exp $
#

DISTNAME=	valide-0.4.0
PKGREVISION=	21
CATEGORIES=	devel
MASTER_SITES=	http://valide.googlecode.com/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.valaide.org/
COMMENT=	IDE for the Vala programming language

USE_TOOLS+=	pkg-config msgfmt intltool

PYTHON_FOR_BUILD_ONLY=	yes
REPLACE_PYTHON+=	wscript waf \
			*/wscript_build \
			*/*/wscript_build

WAF_ENV=	CC=${CC:Q} CXX=${CXX:Q} PREFIX=${PREFIX:Q} \
		CFLAGS=${CFLAGS:Q} CXXFLAGS=${CXXFLAGS:Q} \
		LINKFLAGS=${LDFLAGS:Q} DESTDIR=${DESTDIR:Q}

.if defined(MAKE_JOBS)
WAF_ENV+=	JOBS=${MAKE_JOBS:Q}
.endif

do-configure:
	cd ${WRKSRC} && env ${WAF_ENV} ./waf configure

do-build:
	cd ${WRKSRC} && env ${WAF_ENV} ./waf

do-install:
	cd ${WRKSRC} && env ${WAF_ENV} ./waf install

.include "../../lang/python/application.mk"
.include "../../lang/vala/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtksourceview2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
