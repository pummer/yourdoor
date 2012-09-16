module YourDoor
  class TransUnionGeneralException < StandardError
    def initialize(message)
      super(message)
    end  
  end
  
  class TransUnionErrorException < StandardError
    def initialize(xml_message)
      
      begin
        error_code = xml_message.at_css("error code").content
        error_message = xml_message.at_css("error description").content
        
        super("TransUnion Error Occurred:\n Code: #{error_code}\n Message: #{error_message}")
      end
    rescue
      super("Error Occurred")
    end  
  end
  
end  