
require "nokogiri" 
require 'open-uri'
require 'rubygems'


def get_the_email_of_a_townhal_from_its_webpage url

  page2 = Nokogiri::HTML(open("http://annuaire-des-mairies.com"+url))
  mail= page2.css("tbody td")[7].text

  puts mail

end



def get_all_the_urls_of_val_doise_townhalls

  page1 = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
  links= page1.css("a.lientxt")
  
  urlTab = Array.new

  links.each do |link| 
  	linkk = link["href"]
    urlTab.push(linkk)
    puts urlTab
  end

 

  

end



get_all_the_urls_of_val_doise_townhalls


