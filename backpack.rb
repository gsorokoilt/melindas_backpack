class Backpack

  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
    # Ensure appropriate items are added to backpack
    always_pack
    weather_pack
    day_of_week_pack
  end

  def always_pack
    @items << 'pants'
    @items << 'shirt'
  end


  def weather_pack
    weather = @attributes[:weather]
    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'
    end
  end


  def day_of_week_pack
    day_of_week = @attributes[:day_of_week]
    # Ensure gym shoes are added to backpack if it's a gym day
      if day_of_week == 'monday' || day_of_week == 'thursday'
        @items << 'gym shoes'
      end

      if day_of_week != 'saturday' && day_of_week != 'sunday'
        @items << 'packed lunch'
      end
  end

  # Prints a summary packing list for Melinda's backpack
  def packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end
end
