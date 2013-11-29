module Weather

   def default
    @sunshine = true
  end

  def sunshine?
    @sunshine
  end

  def stormy
    @sunshine = false
  end

end 

 