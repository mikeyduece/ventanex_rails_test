class Account

  # Searches and displays borrow name
  def borrower_name
    node_text('BorrowerFullNameUnformated')
  end

  # Searches and displays loan number
  def loan_number
    node_text('LoanNumber')
  end

  private

  # Reads and parses the loan xml file
  def loan_file
    xml_file = File.read('app/assets/xml/loan.xml')
    @loan_file ||= Nokogiri::XML(xml_file)
  end

  # Retrieves the inner text from the specified node
  def node_text(node)
    search_xml(node).children.text
  end

  # Searches the XML document for the relevant node
  def search_xml(node)
    loan_file.xpath("//#{node}")
  end
end
