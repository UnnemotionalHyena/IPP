class Db_etended_proxy
  def initialize(db_proxy)
    @db_proxy = db_proxy
  end

  def search_professor(name)
    @db_proxy.get_list.values.first.each do |key, value|
      if value.include?(name)
        return { key => value }
      end
    end
  end

  def search_subject(subject)
    @db_proxy.get_list.values.first.each do |key, value|
      if key.include?(subject)
        return { key => value }
      end
    end
  end
end