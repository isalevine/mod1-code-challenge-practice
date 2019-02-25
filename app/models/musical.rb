class Musical
  attr_accessor :name
  attr_reader :setting_city

  @@all = []

  def initialize(name, setting_city)
    @name = name
    @setting_city = setting_city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_introductions
    self.all.each do |musical_instance|
      puts "Welcome, this is #{musical_instance.name}, set in #{musical_instance.setting_city}."
    end
  end


  def perform_in_theater(theater_instance, date_string)
    Performance.new(date_string, self, theater_instance)
  end

  def performances
    Performance.all.select do |performance_instance|
      performance_instance.musical.name == self.name
    end
  end



  def theaters
    theater_list = []
    Performance.all.each do |performance_instance|
      if performance_instance.musical.name == self.name
        theater_list << performance_instance.theater
      end
    end
    theater_list
  end



end
