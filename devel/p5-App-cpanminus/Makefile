# $NetBSD: Makefile,v 1.24 2013/07/25 14:32:33 wen Exp $

DISTNAME=	App-cpanminus-1.6932
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=App/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/App-cpanminus/
COMMENT=	Perl5 script to get, unpack, build and install modules from CPAN
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/App/cpanminus/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
