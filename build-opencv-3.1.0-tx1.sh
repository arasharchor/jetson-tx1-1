# Download OpenCV-3.1.0 source code
#wget -O ~/Downloads/opencv-3.1.0.zip https://github.com/Itseez/opencv/archive/3.1.0.zip

# Add universal repository to Ubuntu
sudo apt-add-repository universe
sudo apt-get update
# Some general development libraries
sudo apt-get install -y build-essential make cmake cmake-curses-gui g++
# libav video input/output development libraries
sudo apt-get install -y libavformat-dev libavutil-dev libswscale-dev
# Video4Linux camera development libraries
sudo apt-get install -y libv4l-dev
# Eigen3 math development libraries
sudo apt-get install -y libeigen3-dev
# OpenGL development libraries (to allow creating graphical windows)
sudo apt-get install -y libglew1.6-dev
# GTK development libraries (to allow creating graphical windows)
sudo apt-get install -y libgtk2.0-dev
# Video I/O
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libv4l-dev
# For QT and OpenGL
sudo apt-get -y install qtbase5-dev

# Compile and install opencv
cd ~
mkdir -p src
cd src
unzip ~/Downloads/opencv-3.1.0.zip
cd opencv-3.1.0
mkdir build
cd build
cmake -DWITH_CUDA=ON -DCUDA_ARCH_BIN="5.3" -DCUDA_ARCH_PTX="" -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DCMAKE_INSTALL_PREFIX=/home/ubuntu/lib/opencv-3.1.0 ..
make -j4 install

#sudo cp -r /home/ubuntu/lib/opencv-3.1.0 /opt

