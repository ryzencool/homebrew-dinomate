cask "dinomate" do
  version "0.1.14"
  sha256 "4b658c5f447f38bbdb10c30e22a0177342353c89a35d45d5466fb1a1527b62ef"

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
