CFLAGS=$(echo "${CFLAGS}" | sed "s/-march=[a-zA-Z0-9]*//g")
CFLAGS=$(echo "${CFLAGS}" | sed "s/-mtune=[a-zA-Z0-9]*//g")

./configure --prefix=$PREFIX \
  --enable-config=core2,sandybridge,haswell,skx,bulldozer,piledriver,excavator,zen \
  --disable-static
make -j${CPU_COUNT}
make install

