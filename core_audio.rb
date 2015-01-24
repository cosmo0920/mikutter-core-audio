# coding: utf-8
# afplayコマンドで音を鳴らす

Plugin.create :core_audio do

  afplay_exist = command_exist?('afplay')

  defsound :core_audio, "CoreAudio" do |filename|
    bg_system("afplay", filename) if FileTest.exist?(filename) and afplay_exist end
end
