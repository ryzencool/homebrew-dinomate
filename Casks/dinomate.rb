cask "dinomate" do
  version "0.1.3"
  sha256 "57bda6d4ac41bb8673fe868f29a0e59c611473044e03ddfd0af1da0580ecd574"

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
