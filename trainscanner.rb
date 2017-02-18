require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class Trainscanner < Formula 
  homepage "https://github.com/vitroid/TrainScanner"
  url "https://github.com/vitroid/homebrew-TrainScanner/raw/master/empty.tar.gz" 
  sha256 "aaa57145a9e9e7e15a0800cf83003899146e8842" 

  version "v0.1.0"
  
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
