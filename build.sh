echo "Configuring and building Thirdparty/DBoW2 ..."

#cd Thirdparty/DBoW2
#mkdir build
#cd build
#cmake .. -DCMAKE_BUILD_TYPE=Release
#make -j

#cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."

#mkdir build
#cd build
#cmake .. -DCMAKE_BUILD_TYPE=Release
#make -j

#cd ../../../


#echo "Uncompress vocabulary ..."
#cd Vocabulary
#tar -xf ORBvoc.txt.tar.gz

#echo "Converting vocabulary to binary"
## only need convert for the first time since it takes a long time
##./bin_vocabulary

#cd ..

echo "Configuring and building ORB_SLAM2 ..."

#rm -rf build
#mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4

echo "Configuring and building ROS_ORB_VIO ..."
cd ../Examples/ROS/ORB_VIO/build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4
