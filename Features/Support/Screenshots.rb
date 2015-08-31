module Screenshots
  if Cucumber::OS_X
    def embed_screenshot(id)
      `screencapture -t png #{id}.png`
      embed("#{id}.png", "image/png")
    end
  elsif Cucumber::WINDOWS
    require 'watir/screen_capture'
    include Watir::ScreenCapture
    def embed_screenshot(id)
      screen_capture("#{id}.jpg", true)
      embed("#{id}.jpg", "image/jpeg")
    end
  else
    def embed_screenshot(id)
      STDERR.puts "Sorry - no screenshots on your platform yet."
    end
  end
end
World(Screenshots)

After do
  embed_screenshot("screenshot-#{Time.new.to_i}")
end