require 'nokogiri'

module YourDoor
  class TransUnion
    def initialize()
      #build_xml
      read_transactionControl_subscriber_memberCode
      #tu_builder
    end
    
    
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
    
    def tu_builder()
      builder = Nokogiri::XML::Builder.new do |xml|

        xml.document = "transunion"
      end
      puts builder.to_xml
    end

  end
end