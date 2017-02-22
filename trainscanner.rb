require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class Trainscanner < Formula 
  homepage "https://github.com/vitroid/TrainScanner"
  #It is dummy. Installation will be performed with pip.
  url "https://github.com/vitroid/homebrew-TrainScanner/archive/v0.1.0.zip" 
  sha256 "38b3a030dc9558dff428f105c0729b7fba353a55e3732121579e8c9871ed268f" 

  depends_on "pyqt5"
  depends_on "python3"
  depends_on "opencv3" => ["with-ffmpeg", "with-tbb", "with-python3", "HEAD"]
 
  def install 
    system "make", "install"
  end 
 
  test do 
    system "false" 
  end 
end 
