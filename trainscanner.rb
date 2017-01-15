require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class Trainscanner < Formula 
  homepage "https://github.com/vitroid/TrainScanner" 
  url "https://github.com/vitroid/TrainScanner/archive/v0.8.5.tar.gz" 
  sha256 "d5adbeba9537fcc23949c231d121a9f4a01b93a1" 
 
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
