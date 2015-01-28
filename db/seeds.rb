class Seed

  def initialize
    generate_mountains_peaks_and_trails
    remove_blank_trail_names
    # get_the_weather
  end

  def generate_mountains_peaks_and_trails
    VailScraper.new
    puts "Generate Vail, complete"

    KeystoneScraper.new
    puts "Generate Keystone, complete"

    BreckenridgeScraper.new
    puts "Generate Breckenridge, complete"

    BeaverCreekScraper.new
    puts "Generate Beaver Creek, complete"

    ArapahoeBasinScraper.new
    puts "Generate A Basin, complete"

    LovelandScraper.new
    puts "Generate Loveland, complete"

    WinterParkScraper.new
    puts "Generate Winter Park, complete"

    TellurideScraper.new
    puts "Generate Telluride, complete"

    PowderhornScraper.new
    puts "Generate Powderhorn, complete"

    CopperScraper.new
    puts "Generate Copper, complete"
  end

  def remove_blank_trail_names
    Trail.where(name: '').destroy_all
  end

  def get_the_weather
    Weather.new
    puts "Weather Updated"
  end
end

Seed.new