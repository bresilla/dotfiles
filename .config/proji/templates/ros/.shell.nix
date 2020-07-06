with import <nixpkgs> {};
with import <ros> {};
# with import (builtins.fetchTarball "https://github.com/lopsided98/nix-ros-overlay/archive/master.tar.gz") {};

with rosPackages.melodic;
with pythonPackages;

# stdenv.mkDerivation {
mkShell {
  buildInputs = [
    glibcLocales
    (buildEnv { paths = [
      turtlebot3-description
      turtlebot3-teleop
      xacro
    ]; })
  ];

  ROS_HOSTNAME = "localhost";
  ROS_MASTER_URI = "http://localhost:11311";
  TURTLEBOT3_MODEL = "burger";
}
