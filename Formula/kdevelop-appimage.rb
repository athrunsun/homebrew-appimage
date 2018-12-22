class KdevelopAppimage < Formula
    desc "A cross-platform IDE for C, C++, Python, QML/JavaScript and PHP"
    homepage "https://www.kdevelop.org"
    version "5.3.1"
    
    url "https://download.kde.org/stable/kdevelop/#{version}/bin/linux/KDevelop-#{version}-x86_64.AppImage"
    sha256 "be6b9b3cc3942c80a29a51c7d526e01e2e984df83dd9d84306f226096ee88130"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/KDevelop-#{version}-x86_64.AppImage")
        bin.install_symlink("#{prefix}/KDevelop-#{version}-x86_64.AppImage" => "kdevelop")
    end

    def caveats; <<~EOS
        Executable is linked as "kdevelop".
        EOS
    end
end
