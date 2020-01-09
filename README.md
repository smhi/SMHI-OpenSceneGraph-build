# SMHI-OpenSceneGraph-build
How to build smhi-osg.
1) Check out OpenSceneGraph master from its repository. 
2) Check out this repo.
3) Copy files in this repo to working copy of OpenSceneGraph master, eg build_osg.sh, osg.diff and the rpm directory.
4) Run build_osg.sh in the working copy.
5) Check log for errors and warnings and correct them.
6) Copy files under rpm directory to local directory.
7) Build rpm by running build_rpm_osg.sh.
8) Install rpm and test.
9) When you are satisfied, update the diff.

The current version off diff is for osg master 3.7.0 2019-06-26.
