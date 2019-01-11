class EdexUiAppimage < Formula
    desc "A science fiction terminal emulator designed for large touchscreens that runs on all major OSs."
    homepage "https://github.com/GitSquared/edex-ui"
    version "1.1.1"

    url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI.Linux.x86_64.AppImage"
    sha256 "a5869758f7e9c0388ee5861993e9a93f76b19b6b7898aa7cca52c4ac329deccc"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/eDEX-UI.Linux.x86_64.AppImage")
        bin.install_symlink("#{prefix}/eDEX-UI.Linux.x86_64.AppImage" => "edex-ui")
    end

    def caveats; <<~EOS
        Executable is linked as "edex-ui".
        EOS
    end
end
