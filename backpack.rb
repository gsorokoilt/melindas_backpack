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
    # set up local variables used by rest of prepare method
    # Ensure appropriate items are added to backpack
    always_pack
    weather_pack
    day_of_week_pack
  end
# Ensure gym shoes are added to backpack if it's a gym day

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
      if day_of_week == 'monday' || day_of_week == 'thursday'
        #add gym shoes to items
        @items << 'gym shoes'
      end

      if day_of_week != 'saturday' && day_of_week != 'sunday'
        @items << 'packed lunch'
      elsif false
      # Used to bring snacks on weekend trips, but now I just buy 'em
        @items << 'snacks'
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
