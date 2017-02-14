class Read < ApplicationRecord
  def self.top_ten_from_last_24
    results = where('created_at > ?', 24.hours.ago)
      .group('url')
      .limit(10)
      .count
    ordered = Hash[results.sort_by { |key, value| value }.reverse]
    ordered.keys
  end
end
