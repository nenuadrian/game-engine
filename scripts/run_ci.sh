apt-get --assume-yes install libgl1-mesa-dev

apt-get --assume-yes install libxrandr

apt-get --assume-yes install libxrandr-dev

apt-get --assume-yes install libxinerama-dev

apt-get --assume-yes install libxcursor-dev

apt-get --assume-yes install libxi-dev

apt-get --assume-yes install libboost-all-dev

apt-get --assume-yes install libghc-double-conversion-dev

apt-get --assume-yes install libssl-dev

apt-get --assume-yes install libgoogle-glog-dev

apt-get --assume-yes install libfmt-dev `

apt install -y liblz4-dev

apt install -y libzstd-dev

apt-get install libbz2-dev

apt install libsnappy-dev

apt-get install -y bzip2

apt-get install -y libiberty-dev

apt-get install -y libaio-dev

apt-get install -y liburing-dev

apt-get install -y libdwarf-dev

apt-get install -y libsodium-dev

git clone https://github.com/libsdl-org/SDL.git -b SDL2

cd SDL &&  mkdir build && cd build && ../configure && make && make install

 cmake --build ${{github.workspace}}/build --config ${{env.BUILD_TYPE}}
