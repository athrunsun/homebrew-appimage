class NextcloudAppimage < Formula
  desc "A safe home for all your data"
  homepage "https://nextcloud.com"
  version "2.3.2"
  url "https://download.nextcloud.com/desktop/releases/Linux/Nextcloud-#{version}-x86_64.AppImage"
  sha256 "cc5d219d7a815e744b8371a2641256c29908a163bb2fef858252a536054a5a4f"

  bottle :unneeded
  cxxstdlib_check :skip

  def install
    prefix.install Dir["*"]
    chmod(0755, "#{prefix}/Nextcloud-#{version}-x86_64.AppImage")
    bin.install_symlink("#{prefix}/Nextcloud-#{version}-x86_64.AppImage" => "nextcloud")
  end

  def caveats; <<-EOS.undent
        Executable is linked as "nextcloud".
        EOS
  end
end
