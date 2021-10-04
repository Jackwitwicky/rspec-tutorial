shared_examples_for('a standard vehicle') do
  describe 'attributes' do

    # do not need subject explicitly defined if we use
    # a class name after describe
    # subject { Car.new }

    # use "subject" instead of "let"
    # if variable is subject of example
    # let(:car) { Car.new }

    # "let" is better than "before" for 
    # setting up instance variables
    # before(:example) do
    #   @car = Car.new
    # end
    it "allows reading and writing for :make" do
      # car = Car.new
      subject.make = 'Test'
      expect(subject.make).to eq('Test')
    end

    it "allows reading and writing for :year" do
      # car = Car.new
      subject.year = 9999
      expect(subject.year).to eql(9999)
    end

    it "allows reading and writing for :color" do
      # car = Car.new
      subject.color = 'foo'
      expect(subject.color).to eq('foo')
    end

    it "allows reading for :wheels" do
      # car = Car.new
      expect(subject.wheels).to eq(4)
    end

    it 'allows writing for :doors'
  end
end