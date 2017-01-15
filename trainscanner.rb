require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class Trainscanner < Formula 
  homepage "https://github.com/vitroid/TrainScanner" 
  url "https://github.com/vitroid/TrainScanner/archive/v0.8.5.tar.gz" 
  sha256 "fb97c6f30c380505d6a207f2cc1742065a632feb" 
 
  depends_on "pyqt5"
  depends_on "python3"
  depends_on "opencv3" => ["with-ffmpeg", "with-tbb", "with-python3", "HEAD"]
 
  def install 
    system "make", "all" 
  end 
 
  test do 
    system "false" 
  end 
end 
