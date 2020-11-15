with import <nixpkgs> {}; rec {
  pyEnv = stdenv.mkDerivation {
    name = "python";
    buildInputs = let
        opencv_GTK = opencv.override (old : {
          enableVtk = true;
          enablePython = true;
          enableGtk3 = true;
          enableGStreamer = true;
          enableFfmpeg = true;
          enableIpp = true;
          enableTesseract = true;
        } );
      in [
        stdenv
        armadillo
        opencv_GTK
        librealsense
        # cudatoolkit_10_2
        # cudnn_cudatoolkit_10_2
        jupyter
        python38
        (python38.withPackages (py: [
          py.numpy
          py.pandas
          py.matplotlib
          py.pyrealsense2
        ]))
      ];
  };
}
