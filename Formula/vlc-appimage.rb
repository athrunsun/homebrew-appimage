class VlcAppimage < Formula
    desc "VLC AppImage test."
    homepage "https://github.com/darealshinji/vlc-AppImage"
    version "2.2.6"
    url "https://github.com/darealshinji/vlc-AppImage/releases/download/continuous/VLC-#{version}.glibc2.16-x86_64.AppImage"
    sha256 "0073f7277c4125e64bd00bc30d40c80aa7733946b9715321ee00d0077726ed05"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/VLC-#{version}.glibc2.16-x86_64.AppImage")
        bin.install_symlink("#{prefix}/VLC-#{version}.glibc2.16-x86_64.AppImage" => "vlc")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "vlc".
        EOS
    end
end
