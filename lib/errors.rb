module UdaciListErrors
  class InvalidItemType < StandardError
  end

  class IndexExceedsListSize < StandardError
  end

  class InvalidFilterType < StandardError
  end
end

module TodoErrors
  class InvalidPriorityValue < StandardError
  end
end
