module Weather

   def default
    @sunny = true
  end

  def sunny?
    @sunny
  end

  def stormy
    @sunny = false
  end

  def michael_fish(figure=nil)
    figure ||= rand()
    if figure >= 0.8
      stormy
    else
      default
    end
  end

end 
  
 