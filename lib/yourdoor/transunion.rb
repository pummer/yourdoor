require 'nokogiri'

module YourDoor
  class TransUnion
    def initialize()
      #build_xml
      read_transactionControl_subscriber_memberCode
      #tu_builder
    end
    
    
    def read_transactionControl_subscriber_memberCode()
      
      xml_file = Nokogiri::XML(File.open("tu_request.xml"))
      
      puts xml_file.at_css("transactionControl subscriber memberCode").content
      

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
    
    def tu_builder()
      builder = Nokogiri::XML::Builder.new do |xml|

        xml.document = "transunion"
      end
      puts builder.to_xml
    end

  end
end