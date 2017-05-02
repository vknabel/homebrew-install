class Blaupause < Formula
  desc "Template generator for creating VIPER, MVC, MVVM, etc. templates"
  homepage "https://github.com/mRs-/Blaupause"
  url "https://github.com/mRs-/Blaupause/archive/0.1.0.tar.gz"
  sha256 "f194c8368b87263515e38bd85f5950374be63afd7e0f404a2220f4b1c0f36ca9"

  def install
    ENV.delete("CC")
    ENV["SDKROOT"] = MacOS.sdk_path
    system "swift", "build", "-c", "release", "-Xswiftc", "-static-stdlib"
    mv ".build/release/Blaupause", ".build/release/blaupause_tmp"
    mv ".build/release/blaupause_tmp", ".build/release/blaupause"
    bin.install ".build/release/blaupause"
    # Currently there is no *.dylib
    # lib.install Dir[".build/release/*.dylib"]
  end

  test do
    system "#{bin}/blaupause", "viper", "ViperFooBar"
    system "#{bin}/blaupause", "mvc", "MvcFooBar"
    system "#{bin}/blaupause", "mvvm", "MvvmFooBar"
  end
end
