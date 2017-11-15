class BracketsElectronAppimage < Formula
    desc "An open source code editor for the web, written in JavaScript, HTML and CSS."
    homepage "https://github.com/brackets-userland/brackets-electron"
    version "1.10.3"
    url "https://github.com/brackets-userland/brackets-electron/releases/download/v#{version}/brackets-electron-#{version}-x86_64.AppImage"
    sha256 "6a191bf260c499ba171d54a1cfdbfd2df1a3c2475cfc66ed8366265d7ef0b254"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/brackets-electron-#{version}-x86_64.AppImage")
        bin.install_symlink("#{prefix}/brackets-electron-#{version}-x86_64.AppImage" => "bracketse")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "bracketse".
        How does this differ to regular brackets?
        Brackets-Electron x.y.z will follow x.y of Brackets releases, with z being reserved for patches and merges of latest features which are available in brackets master repository and planned to be released in the next version. This way you can preview the upcoming features without running brackets from source.
        EOS
    end
end
