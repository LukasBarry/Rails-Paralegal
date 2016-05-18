module DatabasesHelper
  require 'csv'
  def person(buyer)
   thing = buyer.split(' ')
   num = thing.shift
   csv_text = File.read('property.csv')
   csv = CSV.parse(csv_text, headers: true)
   $testing = csv.find{|row| row['Street Name'] == thing.join(' ') && row['Street Number'] == num
   }
  end
end
