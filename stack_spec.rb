require_relative 'stack'

describe Stack do

  let(:test_stack) { Stack.new }

  it "instantiates a new Stack object" do
    expect(test_stack). to be_a(Stack)
  end

  xit "adds a new element to the top of the stack" do
    test_stack.push("item")
    # expect(test_stack.structure.get(1)).to eq("item")
  end

end
