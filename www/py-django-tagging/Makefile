# $NetBSD: Makefile,v 1.2 2012/12/12 20:00:17 asau Exp $

DISTNAME=	django-tagging-0.3.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	www python
MASTER_SITES=	http://django-tagging.googlecode.com/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://code.google.com/p/django-tagging/
COMMENT=	Generic tagging application for Django
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-django-[0-9]*:../../www/py-django

PYDISTUTILSPKG=		yes
USE_LANGUAGES=		# none

INSTALLATION_DIRS+=	share/doc/py-django-tagging

do-test:
	${RUN} cd ${WRKSRC}; ${SETENV} ${TEST_ENV} ${PYTHONBIN} tagging/tests/tests.py

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/overview.txt \
		${DESTDIR}${PREFIX}/share/doc/py-django-tagging

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
