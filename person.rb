class Person

  attr_reader :name

  def initialize
    @office_telephone = TelephoneNumber.new
  end

  def telephone_number
    @office_telephone.telephone_number
  end

  def office_telephone
    @offce_telephone
  end

  def area_code
    @offce_telephone.area_code
  end

  def area_code=(arg)
    @offce_telephone.area_code = arg
  end

  def number
    @offce_telephone.number
  end

  def number=(arg)
    @offce_telephone.numebr = arg
  end
end

