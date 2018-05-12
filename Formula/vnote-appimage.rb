class VnoteAppimage < Formula
    desc "A Vim-inspired note-taking application that knows programmers and Markdown better."
    homepage "https://tamlok.github.io/vnote"
    version "1.16"
    url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x86_64.AppImage"
    sha256 "2a88701d5fd7e4bd8ff596e92553bc21b89a7b0be357ffd41df0b6cc915be79e"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/VNote-#{version}-x86_64.AppImage")
        bin.install_symlink("#{prefix}/VNote-#{version}-x86_64.AppImage" => "vnote")
    end

    def caveats; <<~EOS
        Executable is linked as "vnote".
        EOS
    end
end
