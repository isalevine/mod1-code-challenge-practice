class Performance
  attr_reader :date, :musical, :theater

  @@all = []

  def initialize(date_string, musical_instance, theater_instance)
    @date = date_string
    @musical = musical_instance
    @theater = theater_instance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_strings
    @@all.each do |performance_instance|
      puts "#{performance_instance.musical.name}, #{performance_instance.theater.title}, #{performance_instance.date}."
    end
  end



  def hometown_setting?
    self.musical.setting_city == self.theater.city
  end








end
