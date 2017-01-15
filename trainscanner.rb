require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class Trainscanner < Formula 
  homepage "https://github.com/vitroid/TrainScanner" 
  url "https://github.com/vitroid/TrainScanner/archive/TrainScanner-v0.8.5.zip" 
  sha256 "eadc9ad89700968d9d80630c6ed7b2bae19e2dc8" 
 
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
