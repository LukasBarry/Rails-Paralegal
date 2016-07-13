module DatabasesHelper
  require 'csv'
  def person(buyer)
   num = buyer.split(' ').shift
   addr = buyer.split(' ').pop
   $testing = []
   CSV.foreach('property.csv', headers: true) do |row|
     $testing<<row['Street Name'] == addr && row['Street Number'] == num
   end
  end
end

  #  csv_text = File.read('property.csv')
  #  csv = CSV.parse(csv_text, headers: true)
  #  $testing = csv.find{|row| row['Street Name'] == thing.join(' ') && row['Street Number'] == num
  #  }
