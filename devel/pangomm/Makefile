# $NetBSD: Makefile,v 1.34 2013/09/02 19:50:40 adam Exp $

DISTNAME=	pangomm-2.34.0
PKGREVISION=	5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/pangomm/${PKGVERSION_NOREV:R}/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://www.gtkmm.org/
COMMENT=	C++ bindings for pango
LICENSE=	gnu-lgpl-v2.1

CONFLICTS+=		gtkmm<=2.13.5

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake pkg-config perl:run
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE+=	pango/pangomm.pc.in

BUILDLINK_API_DEPENDS.pango+=	pango>=1.26.0

.include "../../devel/glibmm/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../graphics/cairomm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
