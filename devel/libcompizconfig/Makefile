# $NetBSD: Makefile,v 1.30 2013/09/02 19:50:59 adam Exp $
#

PKGVER=		0.8.8
DISTNAME=	libcompizconfig-${PKGVER}
PKGREVISION=	1
CATEGORIES=	devel gnome
MASTER_SITES=	http://releases.compiz.org/${PKGVER}/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://compiz.org/
COMMENT=	Configuration backend for compiz
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config perl intltool gmake xgettext msgmerge msgfmt
USE_LANGUAGES+=	c c++

PKG_SYSCONFSUBDIR?=	compizconfig
EGDIR=		${PREFIX}/share/examples/compizconfig
CONF_FILES+=	${EGDIR}/config ${PKG_SYSCONFDIR}/config

PKGCONFIG_OVERRIDE=	libcompizconfig.pc.in

INSTALLATION_DIRS=	${EGDIR}

.include "../../devel/protobuf/buildlink3.mk"
.include "../../devel/libinotify/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libICE/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../wm/compiz/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
