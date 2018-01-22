class VnoteAppimage < Formula
    desc "A Vim-inspired note-taking application, especially for Markdown."
    homepage "https://tamlok.github.io/vnote"
    version "1.9"
    url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote_x86_64_#{version}.AppImage"
    sha256 "f1f1a1c3e53f3feb343a9275dba83f81e0acb0fa87e91d0dfe762b5b92a66e88"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/VNote_x86_64_#{version}.AppImage")
        bin.install_symlink("#{prefix}/VNote_x86_64_#{version}.AppImage" => "vnote")
    end

    def caveats; <<~EOS
        Executable is linked as "vnote".
        EOS
    end
end
