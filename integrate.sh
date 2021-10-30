#!/bin/bash

IMGNAME=gimp.png
DESKTOPFILE=gimp-appimage.desktop

APPPATH=$(kdialog --getopenfilename)

echo "[Desktop Entry]" > $DESKTOPFILE
echo "Version=1.0" >> $DESKTOPFILE
echo "Name=GNU Image Manipulation Program - AppImage" >> $DESKTOPFILE
echo "Comment=Create images and edit photographs" >> $DESKTOPFILE
echo "GenericName=Image Editor" >> $DESKTOPFILE
echo "Keywords=GIMP;graphic;design;illustration;painting;" >> $DESKTOPFILE
echo "Exec=$APPPATH %u" >> $DESKTOPFILE
echo "ETerminal=false" >> $DESKTOPFILE
echo "X-MultipleArgs=false" >> $DESKTOPFILE
echo "Type=Application" >> $DESKTOPFILE
echo "Icon=gimp" >> $DESKTOPFILE
echo "Categories=Graphics;2DGraphics;RasterGraphics;GTK;" >> $DESKTOPFILE
echo "MimeType=image/bmp;image/g3fax;image/gif;image/x-fits;image/x-pcx;image/x-portable-anymap;image/x-portable-bitmap;image/x-portable-graymap;image/x-portable-pixmap;image/x-psd;image/x-sgi;image/x-tga;image/x-xbitmap;image/x-xwindowdump;image/x-xcf;image/x-compressed-xcf;image/x-gimp-gbr;image/x-gimp-pat;image/x-gimp-gih;image/tiff;image/jpeg;image/x-psp;application/postscript;image/png;image/x-icon;image/x-xpixmap;image/x-exr;image/webp;image/x-webp;image/heif;image/heic;image/svg+xml;application/pdf;image/x-wmf;image/jp2;image/x-xcursor;" >> $DESKTOPFILE
echo "StartupNotify=true" >> $DESKTOPFILE


sudo mv $DESKTOPFILE /usr/share/applications
sudo cp $IMGNAME /usr/share/icons
