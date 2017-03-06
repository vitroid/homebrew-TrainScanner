require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class Trainscanner < Formula 
  homepage "https://github.com/vitroid/TrainScanner"
  #It is dummy. Installation will be performed with pip.
  url "https://github.com/vitroid/homebrew-TrainScanner/archive/v0.1.3.zip" 
  sha256 "eb142499de6cfbb68f556c8d45772605bb4a5162631b17feabfcb89de00d59a2" 

  depends_on "pyqt5"
  depends_on "python3"
  depends_on "opencv3" => ["with-ffmpeg", "with-tbb", "with-python3", "HEAD"]
 
  def install 
    system "brew", "link", "opencv3", "--force"
    system "pip3", "install", "trainscanner"
  end 
 
  test do 
    system "false" 
  end 
end 
