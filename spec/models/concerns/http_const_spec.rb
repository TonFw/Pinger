require 'spec_helper'

describe HttpConst do
  before do
    # Aux vars
    rand_obj = Random.new

    # Possible answers
    @success = rand_obj.rand(200...299)
    @redirect = rand_obj.rand(300...399)
    @client_error = rand_obj.rand(400...499)
    @server_error = rand_obj.rand(500...599)
  end

  context 'Correct status' do
    it 'should be success' do
      expect(HttpConst.success? @success).to be_true
    end

    it 'should be redirect' do
      expect(HttpConst.redirect? @redirect).to be_true
    end

    it 'should be client_error' do
      expect(HttpConst.client_error? @client_error).to be_true
    end

    it 'should be server_error' do
      expect(HttpConst.server_error? @server_error).to be_true
    end
  end

  context 'Not correct status' do
    it 'should not be success' do
      expect(HttpConst.success? @client_error).to_not be_true
    end

    it 'should not be redirect' do
      expect(HttpConst.redirect? @success).to_not be_true
    end

    it 'should not be client_error' do
      expect(HttpConst.client_error? @server_error).to_not be_true
    end

    it 'should not be server_error' do
      expect(HttpConst.server_error? @redirect).to_not be_true
    end

    context 'HTTP Code Name' do
      it 'should return the name based on it number code' do
        # Vars
        const = HttpConst.codes
        @names = const.keys
        @numbers = const.values

        # Test 3 examples
        expect(HttpConst.code_name @numbers.first).to eq @names.first
        expect(HttpConst.code_name @numbers[(@numbers.length/2)-1]).to eq @names[(@names.length/2)-1]
        expect(HttpConst.code_name @numbers.last).to eq @names.last
      end
    end
  end
end