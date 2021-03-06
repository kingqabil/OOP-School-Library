require_relative '../person'
require_relative '../book'
require_relative '../rental'

describe Person do
  context 'When passing a name' do
    person = Person.new(id: nil, age: 25, name: 'sadiq', parent_permission: true)
    person_two = Person.new(id: nil, age: 12, name: 'dire', parent_permission: false)
    it 'should return first letter capital' do
      expect(person.validate_name).to eq 'Sadiq'
    end

    it 'should return true if he can use service' do
      expect(person.can_use_services?).to eq true
    end

    it 'should return false if he cannot use service' do
      expect(person_two.can_use_services?).to eq false
    end

    it 'should have empty rentals' do
      expect(person.rentals).to eq([])
    end

    it 'should add into rentals' do
      book = Book.new('Sadiq Habil', 'Dire Akanbi')
      person.add_rentals(book)
      expect(person.rentals.length).to eq 1
    end
  end
end
