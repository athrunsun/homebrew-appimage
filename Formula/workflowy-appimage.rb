class WorkflowyAppimage < Formula
    desc "Workflowy"
    homepage "https://workflowy.com/hello"
    version "1.3.5-17133"
    
    url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy-x86_64.AppImage"
    sha256 "8f83c8ebbbedfc3c94517091938df5780dbdece7b3f14daa7e0ff90bbaf8af00"

    bottle :unneeded
    cxxstdlib_check :skip

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/WorkFlowy-x86_64.AppImage")
        bin.install_symlink("#{prefix}/WorkFlowy-x86_64.AppImage" => "workflowy")
    end

    def caveats; <<~EOS
        Executable is linked as "workflowy".
        EOS
    end
end