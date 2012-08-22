#require File.expand_path('../../../lib/yourdoor/transunion', __FILE__)
#Dir["../../../"].each {|file| puts file }
require File.dirname(__FILE__) + '/../../lib/yourdoor/transunion'




module YourDoor
  describe TransUnion do 
    describe "Read TransUnion Subscriber Member Code" do 
      it 'should print a member number' do
        trans = YourDoor::TransUnion.new
        trans.read_transactionControl_subscriber_memberCode.should == "05633723"
        
      end
    end
  end
end