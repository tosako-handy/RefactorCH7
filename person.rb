class Person
  extend Forwardable

  attr_accessor :department
  def delegator :@department, :manager
end
