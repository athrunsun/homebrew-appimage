class EdexUiAppimage < Formula
    desc "A science fiction terminal emulator designed for large touchscreens that runs on all major OSs."
    homepage "https://github.com/GitSquared/edex-ui"
    version "1.1.1"

    if MacOS.prefer_64_bit?
        url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI.Linux.x86_64.AppImage"
        sha256 "a5869758f7e9c0388ee5861993e9a93f76b19b6b7898aa7cca52c4ac329deccc"
    else
        url "https://github.com/GitSquared/edex-ui/releases/download/v#{version}/eDEX-UI.Linux.i386.AppImage"
        sha256 "7b182ff0a8532bcdcf6fe409ee1becf94ac829700f8aa1af9215eeb3c179cfec"
    end

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]

        if MacOS.prefer_64_bit?
            chmod(0755, "#{prefix}/eDEX-UI.Linux.x86_64.AppImage")
            bin.install_symlink("#{prefix}/eDEX-UI.Linux.x86_64.AppImage" => "edex-ui")
        else
            chmod(0755, "#{prefix}/eDEX-UI.Linux.i386.AppImage")
            bin.install_symlink("#{prefix}/eDEX-UI.Linux.i386.AppImage" => "edex-ui")
        end
    end

    def caveats; <<~EOS
        Executable is linked as "edex-ui".
        EOS
    end
end
