class ElectronSsrAppimage < Formula
    desc "Shadowsocksr client using electron"
    homepage "https://github.com/erguotou520/electron-ssr"
    version "0.2.4"
    
    url "https://github.com/erguotou520/electron-ssr/releases/download/v#{version}/electron-ssr-#{version}-x86_64.AppImage"
    sha256 "26e106617fb29503c73aba650c45499569592eb773b1b3362e04c8cec60151df"

    bottle :unneeded
    cxxstdlib_check :skip
    conflicts_with "electron-ssr", :because => "both install `electron-ssr` binary"

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/electron-ssr-#{version}-x86_64.AppImage")
        bin.install_symlink("#{prefix}/electron-ssr-#{version}-x86_64.AppImage" => "electron-ssr")
    end

    def caveats; <<~EOS
        Executable is linked as "electron-ssr".
        EOS
    end
end
