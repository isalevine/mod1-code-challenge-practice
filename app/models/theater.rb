class Theater
  attr_reader :title, :city

  @@all = []

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end


  def performances
    Performance.all.select do |performance_instance|
      performance_instance.theater.title == self.title
    end
  end


  def musicals
    musical_list = []
    Performance.all.each do |performance_instance|
      if performance_instance.theater.title == self.title
        musical_list << performance_instance.musical
      end
    end
    musical_list
  end






end
