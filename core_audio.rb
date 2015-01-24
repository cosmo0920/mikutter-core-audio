# coding: utf-8
# afplayコマンドで音を鳴らす

Plugin.create :core_audio do

  command = "afplay"
  afplay_exist = command_exist?(command)

  defsound :core_audio, "CoreAudio" do |filename|
    bg_system(command, filename) if FileTest.exist?(filename) and afplay_exist end

end
