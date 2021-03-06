class Robot
  attr_accessor :name

  def self.taken_names
    @taken_names || []
  end

  def name
    @name ||= find_unique_name
  end

  def reset
    @name = nil
  end

private

  def find_unique_name
    begin
      name = NameGenerator.get
    end while Robot.taken_names.include? name

    name
  end

end

class NameGenerator
  class << self

    def get chars_size = 2, digits_size = 3
      random_string( chars_size ) + random_number( digits_size )
    end

  private

    def random_string length
      generate_string length, rand(65..90)
    end

    def random_number length
      generate_string length, rand(48..57)
    end

    def generate_string length, range
      length.times.map { range.chr }.join
    end

  end
end
