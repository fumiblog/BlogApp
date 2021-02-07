require 'csv'

CSV.generate do |csv|
  csv_column_footprints = %w(Date Title Genre_id Price Body)
  csv << csv_column_footprints
  @footprints.each do |footprint|
    csv_column_values = [
      footprint.date,
      footprint.title,
      footprint.genre_id,
      footprint.price,
      footprint.body
    ]
    csv << csv_column_values
  end
end
