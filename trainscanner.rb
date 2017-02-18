require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class Trainscanner < Formula 
  homepage "https://github.com/vitroid/TrainScanner"
  #url "https://github.com/vitroid/homebrew-TrainScanner/archive/master.tar.gz" 
  #md5 "0487eb07677375d6b2399d8554f939b6" 
 
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
