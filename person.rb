class Person
  extend Forwardable

  def delegator :@department, :manager
end
