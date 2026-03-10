class AgeValidationError < StandardError
  def initialize(message = 'エラーが発生しました')
    super(message)
  end
end