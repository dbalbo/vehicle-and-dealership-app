require('rspec')
require('vehicle')
require('dealership')

describe('Dealership') do
	before() do
		Dealership.clear()
end

describe('#name') do
	it ('returns the name of the dealership')do
		test_dealership = Dealership.new('Secret Rip Off City Dealership')
		expect(test_dealership.name()).to(eq('Secret Rip Off City Dealership'))
	end
end

describe('#save') do
	it ('adds a dealership to an array of saved dealerships')do
		test_dealership = Dealership.new('Secret Rip Off City Dealership')
		test_dealership.save()
		expect(Dealership.all()).to(eq([test_dealership]))
	end
end


describe('.all') do
	it('is empty at first') do
		expect(Dealership.all()).to(eq([]))
	end
end

describe('.clear') do
	it('removes all dealerships from the array') do
		test_dealership = Dealership.new('Secret Rip Off City Dealership')
		test_dealership.save()
		Vehicle.clear()
		expect(Vehicle.clear()).to(eq([]))
	end
end

describe('.find') do
	it('searches for a dealership by its id and returns the name') do
		test_dealership = Dealership.new('Secret Rip Off City Dealership')
		test_dealership.save()
		test_dealership2 = Dealership.new('Carz are Awesome')
		test_dealership2.save()
		expect(Dealership.find(test_dealership2.id())).to(eq(test_dealership2))
	end
end

describe('#id') do
		it('returns the id of the dealership') do
			test_dealership = Dealership.new('Secret Rip Off City Dealership')
			test_dealership.save()
		end
	end

	describe('#add_car') do
		it('adds a vehicle to a specific dealership') do
			test_dealership = Dealership.new('Carz are Awesome')
			test_vehicle = Vehicle.new('Toyota', 'Prius', 2000)
			test_dealership.add_vehicle(test_vehicle)
			expect(test_dealership.vehicles()).to(eq([test_vehicle]))
		end
	end

end
