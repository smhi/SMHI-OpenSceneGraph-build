
export BASE=$PWD
rm -f SMHI-OpenSceneGraph.tar.gz
rm -rf /local_disk/build1/src/SMHI-OpenSceneGraph
mkdir -p /local_disk/build1/src/SMHI-OpenSceneGraph

tar cvzf SMHI-OpenSceneGraph.tar.gz bin include lib64 share
cp SMHI-OpenSceneGraph.tar.gz  /local_disk/build1/src/SMHI-OpenSceneGraph

rpmbuild -bb SMHI-osg.spec
