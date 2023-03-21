#  Build Environment

---




### LINUX




### Minimum required and setting




* CentOS && ubuntu

* bash

* User information

  * User: Customization

  * Group: Customization

  * Home: Customization

### environment variable
$HOME -> Customization

---




### Update







```bash

yum -y install vim vimdiff git

yum -y install glib2-devel glib2-static glibc-devel glibc-static

yum -y install zlib zlib-devel zlib-static

yum -y install openldap-devel

yum -y install python python-devel

yum -y groupinstall 'Development Tools'

yum -y update

```




---









### Install 'make'




> Specify version: 4.2.z




```bash

cd ~/tmp

curl "https://ftp.gnu.org/gnu/make/make-4.2.1.tar.bz2" -o make-4.2.1.tar.bz2

cd ~/src

tar xf ~/tmp/make-4.2.1.tar.bz2

cd make-4.2.1

./configure --prefix=$HOME

make install

```




Add this shell (~/.bash_profile).




```bash

export MAKE=$HOME/bin/make

```




---




### Install 'pkg-config'




> Specify version: 0.29.z









```bash

cd ~/tmp

curl "https://pkg-config.freedesktop.org/releases/pkg-config-0.29.2.tar.gz" -o pkg-config-0.29.2.tar.gz

cd ~/src

tar xf ~/tmp/pkg-config-0.29.2.tar.gz

cd pkg-config-0.29.2

./configure --prefix=$HOME --enable-static=yes --enable-shared=yes

make install

```




---




### Install 'autoconf'




> Specify version: 2.69.z









```bash

cd ~/tmp

curl "https://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz" -o autoconf-2.69.tar.gz

cd ~/src

tar xf ~/tmp/autoconf-2.69.tar.gz

cd autoconf-2.69

./configure --prefix=$HOME

make install

```




---




### Install 'automake'




> Specify version: 1.16.z









```bash

cd ~/tmp

curl "https://ftp.gnu.org/gnu/automake/automake-1.16.1.tar.gz" -o automake-1.16.1.tar.gz

cd ~/src

tar xf ~/tmp/automake-1.16.1.tar.gz

cd automake-1.16.1

./configure --prefix=$HOME

make install

```




---




### Install 'Libtool'




> Specify version: 2.4.z









```bash

cd ~/tmp

curl -L "http://ftpmirror.gnu.org/libtool/libtool-2.4.6.tar.gz" -o libtool-2.4.6.tar.gz

cd ~/src

tar xf ~/tmp/libtool-2.4.6.tar.gz

cd libtool-2.4.6

./configure --prefix=$HOME --disable-ltdl-install

make install

```




Add this shell as (~/.bash_profile).




```bash

export LIBTOOL=$HOME/bin/libtool

```




---




### Install 'gmp' for 'GCC'




> Specify version: 6.1.z








```bash

cd ~/tmp

curl "https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.bz2" -o gmp-6.1.2.tar.bz2

cd ~/src

tar xf ~/tmp/gmp-6.1.2.tar.bz2

cd gmp-6.1.2

./configure --prefix=$HOME --enable-static=yes --enable-shared=no

make install

```




---




### Install 'isl' for 'GCC'




> Specify version: 0.21.z









```bash

cd ~/tmp

curl "http://isl.gforge.inria.fr/isl-0.21.tar.bz2" -o isl-0.21.tar.bz2

cd ~/src

tar xf ~/tmp/isl-0.21.tar.bz2

cd isl-0.21

./configure --prefix=$HOME --with-gmp-prefix=$HOME --enable-static=yes --enable-shared=no

make install

```




---




### Install 'mpfr' for 'GCC'




> Specify version: 4.0.z








```bash

cd ~/tmp

curl "https://www.mpfr.org/mpfr-current/mpfr-4.0.2.tar.bz2" -o mpfr-4.0.2.tar.bz2

cd ~/src

tar xf ~/tmp/mpfr-4.0.2.tar.bz2

cd mpfr-4.0.2

./configure --prefix=$HOME --with-gmp=$HOME --enable-static=yes --enable-shared=no

make install

```




---




### Install 'mpc' for 'GCC'




> Specify version: 1.1.z









```bash

cd ~/tmp

curl "https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz" -o mpc-1.1.0.tar.gz

cd ~/src

tar xf ~/tmp/mpc-1.1.0.tar.gz

cd mpc-1.1.0

./configure --prefix=$HOME --with-mpfr=$HOME --with-gmp=$HOME --enable-static=yes --enable-shared=no

make install

```




---




### Install 'GCC(c, c++ only)'




> Specify version: 8.3.z









```bash

cd ~/tmp

curl "https://ftp.gnu.org/gnu/gcc/gcc-8.3.0/gcc-8.3.0.tar.gz" -o gcc-8.3.0.tar.gz

cd ~/src

tar xf ~/tmp/gcc-8.3.0.tar.gz

cd gcc-8.3.0

./configure --prefix=$HOME --with-mpc=$HOME --with-mpfr=$HOME --with-gmp=$HOME --with-isl=$HOME --enable-languages=c,c++ --disable-multilib

make && make install

```




Add this shell(~/.bash_profile).




```bash

export CC=$HOME/bin/gcc

export CXX=$HOME/bin/g++

```




---




### Install 'CMake'




> Specify version: 3.14.z








```bash

cd ~/tmp

curl -L "https://github.com/Kitware/CMake/releases/download/v3.14.5/cmake-3.14.5.tar.gz" -o cmake-3.14.5.tar.gz

cd ~/src

tar xf ~/tmp/cmake-3.14.5.tar.gz

cd cmake-3.14.5

./configure --prefix=$HOME

make install

```




---




### Install 'JsonCpp'




> Specify version: 1.8.z








```bash

cd ~/tmp

curl -L "https://github.com/open-source-parsers/jsoncpp/archive/1.8.4.tar.gz" -o jsoncpp-1.8.4.tar.gz

cd ~/src

tar xf ~/tmp/jsoncpp-1.8.4.tar.gz

cd jsoncpp-1.8.4

mkdir cmakebuild

cd cmakebuild

cmake .. -DCMAKE_INSTALL_PREFIX:PATH=$HOME -DBUILD_SHARED_LIBS:BOOL=OFF

make install

```




---




### Install 'libuv'




> Specify version: 1.30.z







```bash

cd ~/tmp

curl -L "https://github.com/libuv/libuv/archive/v1.30.1.tar.gz" -o libuv-1.30.1.tar.gz

cd ~/src

tar xf ~/tmp/libuv-1.30.1.tar.gz

cd libuv-1.30.1

./autogen.sh

./configure --prefix=$HOME --enable-shared=no --enable-static=yes

make install

```




---




### Install 'OpenSSL'




> Specify version: 1.1.z








```bash

cd ~/tmp

curl -L "https://www.openssl.org/source/openssl-1.1.1c.tar.gz" -o openssl-1.1.1c.tar.gz

cd ~/src

tar xf ~/tmp/openssl-1.1.1c.tar.gz

cd openssl-1.1.1c

./config --prefix=$HOME --openssldir=$HOME no-shared

make install_sw

```




---




### Install 'OpenLDAP'




> Specify version: 2.4.z








```bash

cd ~/tmp

curl "ftp://ftp.openldap.org/pub/OpenLDAP/openldap-release/openldap-2.4.47.tgz" -o openldap-2.4.47.tgz

cd ~/src

tar xf ~/tmp/openldap-2.4.47.tgz

cd openldap-2.4.47

./configure --prefix=$HOME --enable-slapd=no --enable-shared=no --enable-static=yes

make install

```




---




### Install 'c-ares' for 'libcurl'




> Specify version: 1.15.z








```bash

cd ~/tmp

curl "https://c-ares.haxx.se/download/c-ares-1.15.0.tar.gz" -o c-ares-1.15.0.tar.gz

cd ~/src

tar xf ~/tmp/c-ares-1.15.0.tar.gz

cd c-ares-1.15.0

./configure --prefix=$HOME --enable-shared=no --enable-static=yes

make install

```




---




### Install 'libcurl'




> Specify version: 7.65.z








```bash

cd ~/tmp

curl "https://curl.haxx.se/download/curl-7.65.1.tar.gz" -o curl-7.65.1.tar.gz

cd ~/src

tar xf ~/tmp/curl-7.65.1.tar.gz

cd curl-7.65.1

./configure --prefix=$HOME --enable-ares=$HOME --enable-shared=no --enable-static=yes

make install

```




---




### Install 'Boost'




> Specify version: 1.68.z









```bash

cd ~/tmp

curl -L "https://sourceforge.net/projects/boost/files/boost/1.68.0/boost_1_68_0.tar.bz2/download#" -o boost_1_68_0.tar.bz2

cd ~/src

tar xf ~/tmp/boost_1_68_0.tar.bz2

cd boost_1_68_0

./bootstrap.sh

./b2 --prefix=$HOME threading=multi link=static install

```




---




### Install 'aws-c-commom' for 'AWS SDK C++'




> Specify version: 0.4.z








```bash

cd ~/tmp

curl -L "https://github.com/awslabs/aws-c-common/archive/v0.4.0.tar.gz" -o aws-c-common-0.4.0.tar.gz

cd ~/src

tar xf ~/tmp/aws-c-common-0.4.0.tar.gz

cd aws-c-common-0.4.0

mkdir cmakebuild

cd cmakebuild

cmake .. -DCMAKE_INSTALL_PREFIX:PATH=$HOME -DBUILD_SHARED_LIBS:BOOL=OFF

make install

```




---




### Install 'aws-checksums' for 'AWS SDK C++'




> Specify version: 0.1.z








```bash

cd ~/tmp

curl -L "https://github.com/awslabs/aws-checksums/archive/v0.1.3.tar.gz" -o aws-checksums-0.1.3.tar.gz

cd ~/src

tar xf ~/tmp/aws-checksums-0.1.3.tar.gz

cd aws-checksums-0.1.3

mkdir cmakebuild

cd cmakebuild

cmake .. -DCMAKE_INSTALL_PREFIX:PATH=$HOME -DBUILD_SHARED_LIBS:BOOL=OFF

make install

```




---




### Install 'aws-c-event-stream' for 'AWS SDK C++'




> Specify version: 0.1.z








```bash

cd ~/tmp

curl -L "https://github.com/awslabs/aws-c-event-stream/archive/v0.1.1.tar.gz" -o aws-c-event-stream-0.1.1.tar.gz

cd ~/src

tar xf ~/tmp/aws-c-event-stream-0.1.1.tar.gz

cd aws-c-event-stream-0.1.1

mkdir cmakebuild

cd cmakebuild

cmake .. -DCMAKE_INSTALL_PREFIX:PATH=$HOME -DBUILD_SHARED_LIBS:BOOL=OFF

make install

```




---




### Install 'AWS SDK C++'




> Specify version: 1.7.z








```bash

cd ~/tmp

curl -L "https://github.com/aws/aws-sdk-cpp/archive/1.7.138.tar.gz" -o aws-sdk-cpp-1.7.138.tar.gz

cd ~/src

tar xf ~/tmp/aws-sdk-cpp-1.7.138.tar.gz

cd aws-sdk-cpp-1.7.138

mkdir cmakebuild

cd cmakebuild

cmake .. -DCMAKE_INSTALL_PREFIX:PATH=$HOME -DCMAKE_PREFIX_PATH:PATH=$HOME -DBUILD_SHARED_LIBS:BOOL=OFF -DENABLE_TESTING:BOOL=OFF -DBUILD_ONLY="s3;s3-encryption"

make install

```




---




### Install 'cpp-driver'




> Specify version: 2.13.z








```bash

cd ~/tmp

curl -L "https://github.com/datastax/cpp-driver/archive/2.13.0.tar.gz" -o cpp-driver-2.13.0.tar.gz

cd ~/src

tar xf ~/tmp/cpp-driver-2.13.0.tar.gz

cd cpp-driver-2.13.0

mkdir cmakebuild

cd cmakebuild

cmake .. -DCMAKE_INSTALL_PREFIX:PATH=$HOME -DCMAKE_PREFIX_PATH:PATH=$HOME -DLIBUV_ROOT_DIR:PATH=$HOME -DCASS_BUILD_SHARED:BOOL=OFF -DCASS_BUILD_STATIC:BOOL=ON

make install

```




---




### Install 'nasm' for 'x264'




> Specify version: 2.14.z







```bash

cd ~/tmp

curl -L "https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/nasm-2.14.02.tar.bz2" -o nasm-2.14.02.tar.bz2

cd ~/src

tar xf ~/tmp/nasm-2.14.02.tar.bz2

cd nasm-2.14.02

./configure --prefix=$HOME

make install

```




---




### Install 'x264'




> Specify version: snapshot-YYYYMMDD-2245










```bash

cd ~/tmp

curl -L "https://download.videolan.org/pub/videolan/x264/snapshots/last_stable_x264.tar.bz2" -o last_stable_x264.tar.bz2

cd ~/src

tar xf ~/tmp/last_stable_x264.tar.bz2

cd x264-snapshot-20190703-2245-stable

./configure --prefix=$HOME --disable-cli --enable-static

make install

```




---




### Install 'fdk-aac'




> Specify version: 0.1.z








```bash

cd ~/tmp

curl -L "https://nchc.dl.sourceforge.net/project/opencore-amr/fdk-aac/fdk-aac-0.1.6.tar.gz" -o fdk-aac-0.1.6.tar.gz

cd ~/src

tar xf ~/tmp/fdk-aac-0.1.6.tar.gz

cd fdk-aac-0.1.6

./configure --prefix=$HOME --enable-shared=no --enable-static=yes

make install

```




---




### Install 'faac'




> Specify version: 1.28.z









```bash

cd ~/tmp

curl -L "https://nchc.dl.sourceforge.net/project/faac/faac-src/faac-1.28/faac-1.28.tar.gz" -o faac-1.28.tar.gz

cd ~/src

tar xf ~/tmp/faac-1.28.tar.gz

cd faac-1.28

sed -i -- 's/char\ \*strcasestr/\/\/char\ \*strcasestr/g' common/mp4v2/mpeg4ip.h

./configure --prefix=$HOME --enable-static=yes --enable-shared=no CFLAGS='-std=c99' CXXFLAGS='-std=c++98'

make install

```




---




### Install 'ffmpeg'




> Specify version: 3.2.z, 3.3.z, 4.0.z




* 3.2.z: For current Transcoder

* 3.3.z: **Default version**

* 4.0.z: For 500k tuning Transcoder







```bash

cd ~/tmp

curl -L "https://ffmpeg.org/releases/ffmpeg-3.3.9.tar.bz2" -o ffmpeg-3.3.9.tar.bz2

cd ~/src

tar xf ~/tmp/ffmpeg-3.3.9.tar.bz2

cd ffmpeg-3.3.9

./configure --enable-gpl --enable-version3 --enable-nonfree --prefix=$HOME \

            --disable-ffplay --disable-ffserver \

            --enable-libx264 --enable-libfdk-aac \

            --extra-cxxflags='-I$HOME/include' \

            --extra-ldflags='-lfdk-aac -lx264 -lpthread -ldl -lm' \

            --extra-libs='-L$HOME/lib -L$HOME/lib64'

make install




cd ~/tmp

curl -L "https://ffmpeg.org/releases/ffmpeg-3.2.14.tar.bz2" -o ffmpeg-3.2.14.tar.bz2

cd ~/src

tar xf ~/tmp/ffmpeg-3.2.14.tar.bz2

cd ffmpeg-3.2.14

./configure --enable-gpl --enable-nonfree --prefix=$HOME/ffmpeg/3.2.z \

            --arch=x86_64 \

            --disable-ffmpeg \

            --disable-ffplay \

            --disable-ffprobe \

            --disable-ffserver \

            --disable-postproc \

            --disable-avdevice \

            --disable-demuxers \

            --disable-muxers \

            --disable-protocols \

            --disable-filters \

            --disable-bsfs \

            --disable-indevs \

            --disable-outdevs \

            --disable-decoders \

            --disable-encoders \

            --enable-avcodec --enable-avformat --enable-swresample --enable-swscale \

            --enable-libx264 --enable-encoder=libx264 --enable-decoder=h264 \

            --enable-decoder=aac --enable-encoder=aac \

            --enable-memalign-hack --enable-static --enable-pthreads \

            --extra-cflags='-I$HOME/include' \

            --extra-ldflags='-L$HOME/lib'

make install




cd ~/tmp

curl -L "https://ffmpeg.org/releases/ffmpeg-4.0.4.tar.bz2" -o ffmpeg-4.0.4.tar.bz2

cd ~/src

tar xf ~/tmp/ffmpeg-4.0.4.tar.bz2

cd ffmpeg-4.0.4

./configure --enable-gpl --enable-nonfree --prefix=$HOME/ffmpeg/4.0.z \

            --arch=x86_64 \

            --disable-ffmpeg \

            --disable-ffplay \

            --disable-ffprobe \

            --disable-postproc \

            --disable-avdevice \

            --disable-demuxers \

            --disable-muxers \

            --disable-protocols \

            --disable-filters \

            --disable-bsfs \

            --disable-indevs \

            --disable-outdevs \

            --disable-encoders \

            --disable-decoders \

            --disable-avx2 \

            --enable-avformat --enable-swresample --enable-swscale \

            --enable-encoder=aac --enable-decoder=aac \

            --enable-libx264 --enable-encoder=libx264 --enable-decoder=h264 \

            --enable-static --enable-pthreads --enable-avcodec \

            --extra-cflags='-I$HOME/include' \

            --extra-ldflags='-L$HOME/lib'

make install

```




---





---




### Install 'hiredis'




> Specify version: 1.0.0







```bash

cd ~/tmp

git clone -b release/v1.1.0 --single-branch https://github.com/redis/hiredis.git src

cd ~/src

mkdir build && cd build

./configure --prefix=$HOME \

 -DBUILD_SHARED_LIBS=ON \

 -DENABLE_SSL=OFF \

 -DDISABLE_TESTS=OFF \

 -DENABLE_SSL_TESTS=OFF \

 -DENABLE_ASYNC_TESTS=OFF




make -j8 && make install

```




---

### Install 'protobuf'

> Specify version: latest







```bash

cd ~/tmp




git clone https://github.com/protocolbuffers/protobuf.git src




cd ~/src




 make build && cd build

 

 cmake ../src -Dprotobuf_BUILD_TESTS:BOOL=OFF \

 -Dprotobuf_BUILD_LIBPROTOC:BOOL=ON \

 -DBUILD_SHARED_LIBS:BOOL=OFF \

 -DCMAKE_INSTALL_PREFIX:PATH=$HOME




 make -j8 && make install

 

```




---

### Install 'protobuf-c'

> Specify version: 1.4.0 








```bash

cd ~/src

git clone -b v1.4.0 https://github.com/protobuf-c/protobuf-c.git




cd protobuf-C


./aotogen.sh


PROTOC="$HOME/bin/protoc" \

CFLAGS="-I$HOME/include" \

CXXFLAGS="-I$HOME/include" \

LDFLAGS="-L$HOME/lib -L$HOME/lib64" \

LIBS="-lprotoc -lprotobuf -lpthread" \

./configure --prefix=$HOME




make




```





---

### Install 'nats'

> Specify version: 3.5.0 





```bash




cd ~/tmp



git clone -b v3.5.0 https://github.com/nats-io/nats.c.git



mkdir cmakebuild && cd cmakebuild




cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/mstage \

-DNATS_BUILD_STREAMING=OFF \

-DNATS_BUILD_WITH_TLS=OFF \

-DNATS_BUILD_EXAMPLES=OFF \

-DNATS_BUILD_TLS_USE_OPENSSL_1_1_API=OFF \

-DNATS_BUILD_TLS_FORCE_HOST_VERIFY=OFF 


make -j8 && make install 
