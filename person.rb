require_relative 'corrector'
require_relative 'rental'

class Person
  attr_accessor :name, :age, :rentals, :parent_permission
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..10.000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  private

    @name = @corrector.correct_name(@name)
  end
end
