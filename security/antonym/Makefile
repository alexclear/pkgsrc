# $NetBSD: Makefile,v 1.11 2013/05/31 12:41:50 wiz Exp $
#

DISTNAME=		antonym-1.9
PKGREVISION=		2
CATEGORIES=		security mail
MASTER_SITES=		http://subwiki.honeypot.net/pub/Computing/AntoNym/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://subwiki.honeypot.net/cgi-bin/view/Computing/AntoNym
COMMENT=		Anonymous nymserver account maintenance tool
LICENSE=		gnu-gpl-v2

DEPENDS+=		p5-Digest-MD5-[0-9]*:../../security/p5-Digest-MD5
DEPENDS+=		pgp-2.*:../../security/pgp2

WRKSRC=			${WRKDIR}/antonym
USE_TOOLS+=		perl:run
REPLACE_PERL=		antonym

PKG_INSTALLATION_TYPES=	overwrite pkgviews

INSTALLATION_DIRS=	bin share/examples/antonym

do-build: # empty

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/antonym ${DESTDIR}${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/examples/antonym/
	${INSTALL_DATA} ${WRKSRC}/replyblocks.dat.example ${DESTDIR}${PREFIX}/share/examples/antonym/dot.antonym

.include "../../mk/bsd.pkg.mk"
