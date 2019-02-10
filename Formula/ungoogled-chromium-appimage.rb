class UngoogledChromiumAppimage < Formula
    desc "Google Chromium, sans integration with Google"
    homepage "https://github.com/Eloston/ungoogled-chromium"
    version "70.0.3538.110"

    url "https://dl.opendesktop.org/api/files/download/id/1542708924/s/178d7ae8df4b0c5809cce379fe61cec157b70d1065ec62b1d61915cbf41f1c2cd6f306150d05c72fa97471da138431019f71c21abe192c63c62387c0da74a11d/t/1549787261/u//ungoogled-chromium_70.0.3538.110-1_linux.AppImage"
    sha256 "5747536ff680b718736342c9c8e19c59c1cb62db536ed5774d70e6641da8f7a8"

    bottle :unneeded
    cxxstdlib_check :skip

    conflicts_with "ungoogled-chromium", :because => "both install chrome binaries"

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/ungoogled-chromium_#{version}-1_linux.AppImage")
        bin.install_symlink("#{prefix}/ungoogled-chromium_#{version}-1_linux.AppImage" => "ungoogled-chromium")
        bin.install_symlink("#{prefix}/ungoogled-chromium_#{version}-1_linux.AppImage" => "ugc")
    end

    def caveats; <<~EOS
        Executable is linked as "ungoogled-chromium" or "ugc".
        EOS
    end
end
