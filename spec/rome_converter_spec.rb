require '../lib/rome_converter.rb'

RSpec.describe RomeConverter do
	
	to_convert = RomeConverter.new

	describe "converting from decimal to roman" do
		it '1 to roman' do
			int_arg = 1
			expect(to_convert.to_rome(int_arg)).to eq("I")
		end

		it '4 to roman' do
			int_arg = 4
			expect(to_convert.to_rome(int_arg)).to eq("IV")
		end

		it '5 to roman' do
			int_arg = 5
			expect(to_convert.to_rome(int_arg)).to eq("V")
		end

		it '6 to roman' do
			int_arg = 6
			expect(to_convert.to_rome(int_arg)).to eq("VI")
		end

		it '10 to roman' do
			int_arg = 10
			expect(to_convert.to_rome(int_arg)).to eq("X")
		end

		it '27 to roman' do
			int_arg = 27
			expect(to_convert.to_rome(int_arg)).to eq("XXVII")
		end

		it '38 to roman' do
			int_arg = 38
			expect(to_convert.to_rome(int_arg)).to eq("XXXVIII")
		end

		it '49 to roman' do
			int_arg = 49
			expect(to_convert.to_rome(int_arg)).to eq("XLIX")
		end

		it '50 to roman' do
			int_arg = 50
			expect(to_convert.to_rome(int_arg)).to eq("L")
		end

		it '100 to roman' do
			int_arg = 100
			expect(to_convert.to_rome(int_arg)).to eq("C")
		end

		it '500 to roman' do
			int_arg = 500
			expect(to_convert.to_rome(int_arg)).to eq("D")
		end

		it '1000 to roman' do
			int_arg = 1000
			expect(to_convert.to_rome(int_arg)).to eq("M")
		end

		it '4999 to roman' do
			int_arg = 4999
			expect(to_convert.to_rome(int_arg)).to eq("MMMMCMXCIX")
		end

		it '5000 to roman (not possible)' do
			int_arg = 5000
			expect(to_convert.to_rome(int_arg)).not_to eq("")
		end

		it '0 to roman (not possible)' do
			int_arg = 0
			expect(to_convert.to_rome(int_arg)).not_to eq("MMMMM")
		end
	end

	describe "converting from roman to decimal" do
		it 'I to decimal' do
			string_arg = "I"
			expect(to_convert.to_dec(string_arg)).to eq(1)
		end

		it 'IV to decimal' do
			string_arg = "IV"
			expect(to_convert.to_dec(string_arg)).to eq(4)
		end

		it 'V to decimal' do
			string_arg = "V"
			expect(to_convert.to_dec(string_arg)).to eq(5)
		end

		it 'VI to decimal' do
			string_arg = "VI"
			expect(to_convert.to_dec(string_arg)).to eq(6)
		end
		
		it 'X to decimal' do
			string_arg = "X"
			expect(to_convert.to_dec(string_arg)).to eq(10)
		end

		it 'XXVII to decimal' do
			string_arg = "XXVII"
			expect(to_convert.to_dec(string_arg)).to eq(27)
		end

		it 'XXXVIII to decimal' do
			string_arg = "XXXVIII"
			expect(to_convert.to_dec(string_arg)).to eq(38)
		end

		it 'XLIX to decimal' do
			string_arg = "XLIX"
			expect(to_convert.to_dec(string_arg)).to eq(49)
		end

		it 'L to decimal' do
			string_arg = "L"
			expect(to_convert.to_dec(string_arg)).to eq(50)
		end

		it 'C to decimal' do
			string_arg = "C"
			expect(to_convert.to_dec(string_arg)).to eq(100)
		end

		it 'D to decimal' do
			string_arg = "D"
			expect(to_convert.to_dec(string_arg)).to eq(500)
		end

		it 'M to decimal' do
			string_arg = "M"
			expect(to_convert.to_dec(string_arg)).to eq(1000)
		end

		it 'MMMMCMXCIX to decimal' do
			string_arg = "MMMMCMXCIX"
			expect(to_convert.to_dec(string_arg)).to eq(4999)
		end

		it 'MMMMM to decimal' do
			string_arg = "MMMMM"
			expect(to_convert.to_dec(string_arg)).not_to eq(5000)
		end

	end
end






