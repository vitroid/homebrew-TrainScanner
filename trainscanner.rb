require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class Trainscanner < Formula 
  homepage "https://github.com/vitroid/TrainScanner" 
  url "https://github.com/vitroid/TrainScanner/archive/v0.9.3.tar.gz" 
  #md5 "792d9c1882a4485689fb7b7c80739322" 
 
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
