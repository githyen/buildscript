#!/bin/bash

# tar install
curl -L "https://ftp.gnu.org/gnu/make/make-4.4.tar.gz" -o make-4.4.tar.gz
curl -L "https://ftp.gnu.org/gnu/autoconf/autoconf-2.71.tar.gz" -o autoconf-2.71.tar.gz
curl -L "https://ftp.gnu.org/gnu/automake/automake-1.16.5.tar.gz" -o automake-1.16.5.tar.gz
curl -L "https://pkg-config.freedesktop.org/releases/pkg-config-0.29.2.tar.gz" -o pkg-config-0.29.2.tar.gz
curl -L "http://ftpmirror.gnu.org/libtool/libtool-2.4.7.tar.gz" -o libtool-2.4.7.tar.gz
curl -L "https://ftp.gnu.org/gnu/gmp/gmp-6.2.1.tar.bz2" -o gmp-6.2.1.tar.bz2
curl -L "https://repo.or.cz/isl.git/snapshot/f7b0ef95845d57fc839090d5075b84fa706eeb15.tar.gz" -o isl-0.25.tar.gz 
curl -L "https://www.mpfr.org/mpfr-4.2.0/mpfr-4.2.0.tar.xz" -o mpfr-4.2.0.tar.xz 
curl -L "https://ftp.gnu.org/gnu/mpc/mpc-1.3.1.tar.gz" -o mpc-1.3.1.tar.gz
curl -L "https://ftp.gnu.org/gnu/gcc/gcc-11.3.0/gcc-11.3.0.tar.gz" -o gcc-11.3.0.tar.gz
curl -L "https://github.com/libuv/libuv/archive/v1.44.2.tar.gz" -o libuv-1.44.2.tar.gz
curl -L "https://www.openssl.org/source/openssl-1.1.1c.tar.gz" -o openssl-1.1.1c.tar.gz
curl -L "https://c-ares.org/download/c-ares-1.18.1.tar.gz" -o c-ares-1.81.1.tar.gz
curl -L "https://curl.se/download/curl-7.87.0.tar.gz" -o curl-7.87.0.tar.gz
curl -L "https://github.com/Kitware/CMake/releases/download/v3.25.2/cmake-3.25.2.tar.gz" -o cmake-3.25.2.tar.gz
curl -L "ftp://ftp.openldap.org/pub/OpenLDAP/openldap-release/openldap-2.5.14.tgz" -o openldap-2.5.14.tgz
curl -L "https://sourceforge.net/projects/boost/files/boost/1.68.0/boost_1_68_0.tar.bz2/download#" -o boost_1_68_0.tar.bz2
curl -L "https://github.com/datastax/cpp-driver/archive/2.16.2.tar.gz" -o cpp-driver-2.16.2.tar.gz
curl -L "https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/nasm-2.14.02.tar.bz2" -o nasm-2.14.02.tar.bz2
curl -L "https://github.com/yasm/yasm/releases/download/v1.3.0/yasm-1.3.0.tar.gz" -o yasm-1.3.0.tar.gz
curl -L "http://download.videolan.org/x264/snapshots/x264-snapshot-20191217-2245-stable.tar.bz2" -o x264.tar.bz2
curl -L "https://nchc.dl.sourceforge.net/project/opencore-amr/fdk-aac/fdk-aac-0.1.6.tar.gz" -o fdk-aac-0.1.6.tar.gz
curl -L "https://nchc.dl.sourceforge.net/project/faac/faac-src/faac-1.28/faac-1.28.tar.gz" -o faac-1.28.tar.gz
curl -L "https://github.com/webmproject/libwebp/archive/refs/tags/v1.3.0.tar.gz" -o webp.tar.gz
curl -L "https://github.com/aws/aws-sdk-cpp/archive/1.7.138.tar.gz" -o aws-sdk-cpp-1.7.138.tar.gz
curl -L "https://github.com/open-source-parsers/jsoncpp/archive/1.9.5.tar.gz" -o jsoncpp-1.9.5.tar.gz
curl -L https://github.com/nemtrif/utfcpp/archive/refs/tags/v3.2.3.tar.gz"" -o utfcpp-3.2.3.tar.gz
curl -L "https://ffmpeg.org/releases/ffmpeg-3.3.9.tar.bz2" -o ffmpeg-3.3.9.tar.bz2
#-------------------------------------------------------
# 현재 디렉터리에서 모든 파일 이름을 리스트에 추가
tar_list=()
for file in *
do
    if [ -f "$file" ]  # 파일인 경우에만 리스트에 추가
    then
        tar_list+=("$file")
    fi
done

# 리스트 문자열 실행
for i in "${!tar_list[@]}"
do
    run_str="tar xf ${tar_list[i]} -C ../pkg"
    #echo $run_str
    eval $run_str
done
#-------------------------------------------------------
# $HOME/pkg로 이동
cd $HOME/pkg

# 파일 리스트를 저장할 배열 선언
files=()


# /home/user/pkg 디렉터리에서 모든 파일 이름을 리스트에 추가
for file in *
do
    files+=("$file")
done