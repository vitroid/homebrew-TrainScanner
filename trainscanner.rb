require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class Trainscanner < Formula 
  homepage "https://github.com/vitroid/TrainScanner"
  #It is dummy. Installation will be performed with pip.
  url "https://github.com/vitroid/TrainScanner/archive/v0.9.3.zip" 
  sha256 "d2f2a899c37bf5f94103da1379a2171ad650aecf37e3d27c7e81c052eb9e7148" 

  depends_on "pyqt5"
  depends_on "python3"
  depends_on "opencv3" => ["with-ffmpeg", "with-tbb", "with-python3", "HEAD"]
 
  def install 
    system "pip3", "install", "trainscanner" 
  end 
 
  test do 
    system "false" 
  end 
end 
