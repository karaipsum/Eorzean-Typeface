# Backward compatibility for prior to Windows 11

FILENAME="AugmentedNeo-Eorzean-Regular"

cd ./fonts

# OTF
ttx -t cmap "${FILENAME}.otf"
sed -i '' 's/platformID="0" platEncID="3"/platformID="3" platEncID="1"/g' "${FILENAME}.ttx"
ttx -b -m "${FILENAME}.otf" "${FILENAME}.ttx"
rm ${FILENAME}.ttx

# TTF
ttx -t cmap "${FILENAME}.ttf"
sed -i '' 's/platformID="0" platEncID="3"/platformID="3" platEncID="1"/g' "${FILENAME}.ttx"
ttx -b -m "${FILENAME}.ttf" "${FILENAME}.ttx"
rm ${FILENAME}.ttx

# Add prefix [W]
for f in *\#1.*; do mv $f [W]${f/\#1/}; done