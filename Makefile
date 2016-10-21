# Created by: Thomas Legg <tjlegg@gmail.com>
# $FreeBSD$

PORTNAME=	kipi-plugins
PORTVERSION=	${DIGIKAM_VER}
CATEGORIES=	graphics kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE 5 kipi graphics plugins 

DIGIKAM_VER=	5.2.0
MASTER_SITES=	KDE/stable/digikam
DISTNAME=	digikam-${DIGIKAM_VER}

USES+=		cmake pkgconfig shebangfix kde:5 compiler:c++11-lib tar:xz
USE_KDE=	ecm solid xmlgui i18n config service windowsystem kio \
		notifications notifyconfig archive coreaddons \
		threadweaver
USE_QT5+=	buildtools_build core gui qmake_build widgets xml \
		concurrent sql-sqlite3_run printsupport x11extras \
		opengl
USE_LDCONFIG=	yes
CMAKE_ARGS+=	-DDIGIKAMSC_COMPILE_KIPIPLUGINS:BOOL=ON \
				-DDIGIKAMSC_COMPILE_DIGIKAM:BOOL=OFF \
				-DDIGIKAMSC_COMPILE_DOC:BOOL=OFF \
				-DDIGIKAMSC_COMPILE_PO:BOOL=OFF


.include <bsd.port.mk>
