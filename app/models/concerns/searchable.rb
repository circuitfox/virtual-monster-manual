module Searchable
  extend ActiveSupport::Concern

  class_methods do
    def search(attrs, &filter)
      logger.debug "Searchable::search filter: #{block_given?}"
      logger.debug attrs.to_yaml
      likes = []
      data = []
      attrs.each_pair { |(key, query)|
        if block_given?
          query = filter.call(key, query)
        end

        if !query.blank?
          likes << "#{key} LIKE ?"
          data << "%#{query}%"
        end
      }
      sql = likes.join(" AND ")
      self.where(sql, *data)
    end
  end
end
