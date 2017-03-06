require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class Trainscanner < Formula 
  homepage "https://github.com/vitroid/TrainScanner"
  #It is dummy. Installation will be performed with pip.
  url "https://github.com/vitroid/homebrew-TrainScanner/archive/v0.1.2.zip" 
  sha256 "8b5787004b0cf8431ae62718b31eac149f57f24356e279e01be498ccb04ac924" 

  depends_on "pyqt5"
#  depends_on "python3"
  depends_on "opencv3" => ["with-ffmpeg", "with-tbb", "with-python3", "HEAD"]
 
  def install 
    system "make", "install"
  end 
 
  test do 
    system "false" 
  end 
end 
