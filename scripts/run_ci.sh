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

git clone https://github.com/libsdl-org/SDL.git -b SDL2

cd SDL &&  mkdir build && cd build && ../configure && make && make install

 cmake --build ${{github.workspace}}/build --config ${{env.BUILD_TYPE}}
