class UptermAppimage < Formula
    desc "A terminal emulator for the 21st century."
    homepage "https://github.com/railsware/upterm"
    version "0.4.3"
    url "https://github.com/railsware/upterm/releases/download/v#{version}/upterm-#{version}-x86_64-linux.AppImage"
    sha256 "b9eca1b5452c3ae8807d47f71178963ba66181ff349d8ddcab0db04c1f602663"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/upterm-#{version}-x86_64-linux.AppImage")
        bin.install_symlink("#{prefix}/upterm-#{version}-x86_64-linux.AppImage" => "upterm")
    end

    def caveats; <<~EOS
        Executable is linked as "upterm".
        EOS
    end
end
