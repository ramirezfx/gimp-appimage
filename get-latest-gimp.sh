BASEURL="https://github.com"
FILELINK=$(wget -O - https://github.com/aferrero2707/gimp-appimage/releases |   grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep .AppImage | grep GIMP_AppImage-release- | grep withplugins | sort -V | tail -n 1)
wget -O "gimp-latest.AppImage" $BASEURL$FILELINK
chmod 700 gimp-latest.AppImage
