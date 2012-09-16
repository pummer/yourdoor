require 'nokogiri'
require 'typhoeus'

module YourDoor
  class TransUnion

    TU_URL = "https://netaccess-test.transunion.com/"
    TU_CERT_FILE = "yourdoor.pem"
    TU_CERT_PASS = "<MOVE TO ENV VAR>"

=begin
    def read_transactionControl_subscriber_memberCode()

    xml_path = File.expand_path(File.join(File.dirname(__FILE__), "tu_request.xml"))

    xml_file = Nokogiri::XML(File.open(xml_path))

    result = xml_file.at_css("transactionControl subscriber memberCode").content

    puts result

    result

    end

    def build_xml()
    builder = Nokogiri::XML::Builder.new do |xml|

    xml.root {

    xml.products {

    xml.widget {

    xml.id_ "10"

    xml.name "Awesome widget"

    }

    }

    }
    end
    puts builder.to_xml
    end

    def self.tu_builder()
    builder = Nokogiri::XML::Builder.new do |xml|

    xml.document = "transunion"
    end
    puts builder.to_xml
    end

    def self.run_credit_score

    xml_path = File.expand_path(File.join(File.dirname(__FILE__), "tu_request.xml"))

    xml_file = Nokogiri::XML(File.open(xml_path))
    #response = make_request!

    xml_response = Nokogiri::XML(make_request(xml_file).body)

    puts Integer(xml_response.at_css("addOnProduct results").content)

    #puts response
    end

    def self.test_response

    xml_path = File.expand_path(File.join(File.dirname(__FILE__), "tu_response.xml"))

    xml_file = Nokogiri::XML(File.open(xml_path))
    #response = make_request!

    puts xml_file.at_css("addOnProduct results").content

    end
=end

    def self.build_request(first_name, middle_name, last_name, street_number, street_name, city, state, zip, ssn)

      xml_path = File.expand_path(File.join(File.dirname(__FILE__), "tu_request.xml"))

      xml_file = Nokogiri::XML(File.open(xml_path))

      xml_file.at_css("person first").content = first_name
      xml_file.at_css("person middle").content = middle_name
      xml_file.at_css("person last").content = last_name
      xml_file.at_css("address street number").content = street_number
      xml_file.at_css("address street name").content = street_name
      xml_file.at_css("address location city").content = city
      xml_file.at_css("address location state").content = state
      xml_file.at_css("address location zipCode").content = zip
      xml_file.at_css("socialSecurity number").content = ssn

      # Might want to build in a date of birth field if it exists
      #xml_file.at_css("dateOfBirth").content = "DateOfBirth"

      return make_request(xml_file)

    end

    def self.make_request(xml_request)

      response = Typhoeus::Request.post(TU_URL,
      :body => xml_request.to_xml,
      :headers => {'Content-Type' => "application/xml"},
      :ssl_cert => TU_CERT_FILE,
      :ssl_key_password => TU_CERT_PASS,
      :disable_ssl_peer_verification => true,
      :disable_ssl_host_verification => true)

      # Throw Exception if Response is not 200
      if response.code != 200
        raise YourDoor::TransUnionException.new("Error Connecting to TransUnion Servers")
      end

      return process_response(response)

    end

    def self.process_response(response)

      begin
        xml_response = Nokogiri::XML(response.body)

        if xml_response.at_css("error")
          raise YourDoor::TransUnionErrorException.new(xml_response)
        end

        return Integer(xml_response.at_css("addOnProduct results").content)
      end
    rescue YourDoor::TransUnionErrorException => e
      raise e
    rescue
      raise YourDoor::TransUnionGeneralException.new("Error Occurred Parsing Respone")
      end
  end
end