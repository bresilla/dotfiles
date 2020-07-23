let
  aira = import <aira> {};
  nix = import <nixpkgs> {};
  ros = import <ros> {};
in rec {
  catkin_ws =
    with ros.rosPackages.melodic;
    with ros.pythonPackages;
  nix.stdenv.mkDerivation {
    name = "catkin_ws";
    buildInputs = [
      ros.colcon
      ros.glibcLocales
      (buildEnv { paths = [
        turtlebot3-description
        turtlebot3-teleop
        xacro
      ]; })
    ];

    ROS_HOSTNAME = "localhost";
    ROS_MASTER_URI = "http://localhost:11311";
    TURTLEBOT3_MODEL = "burger";
  };
}
