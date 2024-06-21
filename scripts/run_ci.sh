sudo apt-get --assume-yes install libgl1-mesa-dev

sudo apt-get --assume-yes install libxrandr

sudo apt-get --assume-yes install libxrandr-dev

sudo apt-get --assume-yes install libxinerama-dev

sudo apt-get --assume-yes install libxcursor-dev

sudo apt-get --assume-yes install libxi-dev

sudo apt-get --assume-yes install libboost-all-dev

sudo apt-get --assume-yes install libghc-double-conversion-dev

sudo apt-get --assume-yes install libssl-dev

sudo apt-get --assume-yes install libunwind-dev

sudo apt-get --assume-yes install libgoogle-glog-dev

sudo apt-get --assume-yes install libfmt-dev

sudo apt install -y liblz4-dev

sudo apt install -y libzstd-dev

sudo apt-get install libbz2-dev

sudo apt install libsnappy-dev

sudo apt-get install -y bzip2

apt-get install -y libiberty-dev

sudo apt-get install -y libaio-dev

sudo apt-get install -y liburing-dev

sudo apt-get install -y libdwarf-dev

sudo apt-get install -y libsodium-dev

git clone https://github.com/libsdl-org/SDL.git -b SDL2

cd SDL &&  mkdir build && cd build && ../configure && make && make install

cmake --build ${{github.workspace}}/build --config ${{env.BUILD_TYPE}}
