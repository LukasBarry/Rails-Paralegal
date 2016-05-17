class Database < ActiveRecord::Base
  belongs_to :buyer
  
  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      database = find_by_id(row["id"]) || new
      database.attributes = row.to_hash.slice(*accessible_attributes)
      database.save!
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.property.xlsx)
    when '.csv' then Roo::Csv.new(file.path, nil, :ignore)
    when '.xls' then Roo::Excel.new(file.path, nil, :ignore)
    when '.xlsx' then Roo::Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end
end
