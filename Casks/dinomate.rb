cask "dinomate" do
  version "0.1.15"
  sha256 "768d83b3b05528a78dcd9fe49ce2cfa1dc5409bc7c7bed4ab6819e040a5d0492"

  url "https://dinoapp.s3.bitiful.net/app/dinomate/mac-arm64/DinoMate-#{version}-mac-arm64.zip"
  name "DinoMate"
  desc "菜单栏划词翻译和截图翻译"
  homepage "https://dinox.info/guides/ddownload/download"

  livecheck do
    url "https://dinoapp.s3.bitiful.net/app/dinomate/mac-arm64/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "DinoMate.app"

  zap trash: [
    "~/Library/Application Support/dino-translate",
    "~/Library/Application Support/dinomate",
  ]
end
