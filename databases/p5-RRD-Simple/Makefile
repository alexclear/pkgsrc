# $NetBSD: Makefile,v 1.23 2013/09/02 19:50:57 adam Exp $

DISTNAME=	RRD-Simple-1.44
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	21
CATEGORIES=	perl5 databases
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/N/NI/NICOLAW/}

MAINTAINER=	rhaen@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/RRD-Simple/
COMMENT=	RRD::Simple implementation for Perl
LICENSE=	apache-2.0

BUILD_DEPENDS+= p5-Test-Pod>=1.26:../../devel/p5-Test-Pod
BUILD_DEPENDS+= p5-Pod-Coverage>=0.18:../../textproc/p5-Pod-Coverage
BUILD_DEPENDS+= p5-Test-Pod-Coverage>=1.08:../../devel/p5-Test-Pod-Coverage
BUILD_DEPENDS+= p5-Test-Deep>=0.096:../../devel/p5-Test-Deep

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/RRD/Simple/.packlist
MAKE_PARAMS+=		< /dev/null

.include "../../databases/rrdtool/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
