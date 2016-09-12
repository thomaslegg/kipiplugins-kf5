# Created by: Thomas Legg <tjlegg@gmail.com>
# $FreeBSD$

PORTNAME=	kipi-plugins
PORTVERSION=	${DIGIKAM_VER}
CATEGORIES=	graphics kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE 5 kipi graphics plugins 

DIGIKAM_VER=	5.1.0
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

#WRKSRC=		${WRKDIR}/${DISTNAME}/extra/kipi-plugins

OPTIONS_DEFINE=		# VKONTAKTE MEDIAWIKI
OPTIONS_DEFAULT=	

#VKONTAKTE_DESC= KIPI plugin for VKontakte export
#VKONTAKTE_LIB_DEPENDS= libkvkontakte.so:net/libkvkontakte
#VKONTAKTE_CMAKE_ON= -DDIGIKAMSC_COMPILE_LIBKVKONTAKTE:BOOL=OFF
#VKONTAKTE_CMAKE_OFF= -DDIGIKAMSC_COMPILE_LIBKVKONTAKTE:BOOL=OFF

#MEDIAWIKI_DESC= Kipi plugin for mediawiki export
#MEDIAWIKI_LIB_DEPENDS=	libmediawiki.so:net/libmediawiki
#MEDIAWIKI_CMAKE_ON= -DDIGIKAMSC_COMPILE_LIBMEDIAWIKI:BOOL=ON
#MEDIAWIKI_CMAKE_ON= -DDIGIKAMSC_COMPILE_LIBMEDIAWIKI:BOOL=OFF

.include <bsd.port.mk>
