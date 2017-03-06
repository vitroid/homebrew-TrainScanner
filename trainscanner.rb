require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class Trainscanner < Formula 
  homepage "https://github.com/vitroid/TrainScanner"
  #It is dummy. Installation will be performed with pip.
  url "https://github.com/vitroid/homebrew-TrainScanner/archive/v0.1.4.zip" 
  sha256 "a75e4f71b5ebf26553c53c5bbe5c2883ebd5e9d05b93d54b09aa8cbb5fea24c2" 

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
