class TelephoneNumber
  attr_accessor :area_code
  attr_accessor :number

  def telephone_number
    "(#{areacode}) #{number}"
  end
end

