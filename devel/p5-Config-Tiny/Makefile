# $NetBSD: Makefile,v 1.15 2013/05/31 12:40:11 wiz Exp $

DISTNAME=	Config-Tiny-2.14
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Config/}

MAINTAINER=	rhaen@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Config-Tiny/
COMMENT=	Read/Write .ini style files with as little code as possible
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/Config/Tiny/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
