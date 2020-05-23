class Account

  def loan_file
    xml_file = File.read('app/assets/xml/loan.xml')
    @loan_file ||= Nokogiri::XML(xml_file)
  end

  # Searches and displays borrow name
  def borrow_name
    node_text('BorrowerFullNameUnformatted')
  end

  # Searches and displays loan number
  def loan_number
    node_text('LoanNumber')
  end

  private

  # Retrieves the inner text from the specified node
  def node_text(node)
    search_xml(node).children.text
  end

  # Searches the XML document for the relevant node
  def search_xml(node)
    loan_file.xpath("//#{node}")
  end
end
