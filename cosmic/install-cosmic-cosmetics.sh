# Robot Icons
git clone https://github.com/SethStormR/Robot

for f in Robot/*.tar.gz # untar all
do
   sudo tar -zxf "$f" -C /usr/share/icons
done

rm -rf Robot

