class LightTableAppimage < Formula
    desc "The Light Table IDE, the next generation code editor."
    homepage "https://github.com/LightTable/LightTable/wiki#os-distributions-package"
    version "0.8.1"
    url "https://bintray.com/athrunsun/appimage/download_file?file_path=LightTable-#{version}_x64.AppImage.tar.gz"
    sha256 "1e75717397fefa3d472e5235a288236a24f288842d1dafa5e9dc490723812ab0"

    bottle :unneeded
    cxxstdlib_check :skip
    conflicts_with "light-table"

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/LightTable-#{version}_x64.AppImage")
        bin.install_symlink("#{prefix}/LightTable-#{version}_x64.AppImage" => "light")
    end

    def caveats; <<-EOS.undent
        This formula is actually downloading appimage from my bintray repo: https://bintray.com/athrunsun/appimage/lighttable.
        Executable is linked as "light".
        EOS
    end
end
