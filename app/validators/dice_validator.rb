class DiceValidator < ActiveModel::EachValidator
  @@regexp = /\A\d+d\d+( ?(\+|-) ?\d+)?\Z/

  def validate_each(record, attribute, value)
    unless @@regexp.match?(value)
      record.errors[attribute] << options[:message] || "is not a valid dice descriptor"
    end
  end
end
