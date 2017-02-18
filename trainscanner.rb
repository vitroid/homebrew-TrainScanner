require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class Trainscanner < Formula 
  homepage "https://github.com/vitroid/TrainScanner"
  url "https://github.com/vitroid/homebrew-TrainScanner/raw/master/empty-0.1.0.tar.gz" 
  sha256 "b292a0d9941bf0c8161e0077356382ceb8286aa3521488e21abd6d8f4e02a293" 

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
