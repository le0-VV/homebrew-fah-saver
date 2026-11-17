cask "fah-saver" do
  version "1.0.0"
  sha256 "d07c56e999fbec6e5059ab9f14f2ef66ea93a0ce6173ee8638980a6b47a0b804"

  url "https://github.com/le0-VV/FAH-saver/releases/download/v#{version}/FAHSaver-macos-arm64-v#{version}.zip"
  name "FAH Saver"
  desc "Folding@home protein model screensaver"
  homepage "https://github.com/le0-VV/FAH-saver"

  depends_on arch: :arm64
  depends_on :macos

  screen_saver "FAHSaver.saver"

  caveats <<~EOS
    This build is ad hoc signed and is not notarised.
    macOS may require explicit approval before it can run.

    If you previously installed FAH Saver manually, remove that copy from
    /Library/Screen Savers or ~/Library/Screen Savers before installing this cask.
    Keep your FAH Saver preferences when removing a manual copy.
  EOS
end
