# $NetBSD: Makefile,v 1.45 2013/05/31 12:39:52 wiz Exp $
#

DISTNAME=	DBIx-SearchBuilder-1.61
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
SVR4_PKGNAME=	p5dxs
CATEGORIES=	databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBIx/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/DBIx-SearchBuilder/
COMMENT=	Extension for easy SQL SELECT Statement generation
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews

BUILD_DEPENDS+=	p5-DBD-SQLite-[0-9]*:../../databases/p5-DBD-SQLite

DEPENDS+=	p5-Cache-Simple-TimedExpiry>=0.21:../../devel/p5-Cache-Simple-TimedExpiry
DEPENDS+=	p5-Class-ReturnValue>=0.40:../../devel/p5-Class-ReturnValue
DEPENDS+=	p5-Clone-[0-9]*:../../devel/p5-Clone
DEPENDS+=	p5-Encode>=1.99:../../textproc/p5-Encode
DEPENDS+=	p5-Want-[0-9]*:../../devel/p5-Want

# Recommented dependencies
DEPENDS+=	p5-capitalization>=0.03nb1:../../devel/p5-capitalization
DEPENDS+=	p5-Class-Accessor-[0-9]*:../../devel/p5-Class-Accessor
DEPENDS+=	p5-DBIx-DBSchema-[0-9]*:../../databases/p5-DBIx-DBSchema

PERL5_PACKLIST=		auto/DBIx/SearchBuilder/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

.include "../../databases/p5-DBI/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
