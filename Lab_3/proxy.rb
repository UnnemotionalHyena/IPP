module DATABASE
  attr_accessor :hash_with_a_lot_of_data
  def initialize
    @hash_with_a_lot_of_data = get_data_from_file
  end

  def get_data_from_file
    file = File.open("DATABASE/database.json", "a+")
    text = ""
    file.each_line do |line|
      text += line
    end
    file.close
    text
  end

  def put_data_to_file
    File.open("DATABASE/database.json", "r+") do |file|
      file.write(@hash_with_a_lot_of_data.to_json)
    end
  end
end


class Db_Proxy
  include DATABASE

  def initialize
    super()
    @data        = JSON.load(@hash_with_a_lot_of_data)
    @last_update = Time.now
  end

  def get_list
    { @last_update => @data }
  end

  def update_list
    @last_update = Time.now
    @data        = JSON.load(get_data_from_file)
    { @last_update => @data }
  end

  def add_subject(subject, teacher_name)
    unless subject =~ /^[a-zA-Z]+$/
      puts "Wrong subject"
      return
    end
    unless teacher_name =~ /^[a-zA-Z]+$/
      puts "wrong teacher name"
      return
    end

    @data[subject]           = teacher_name
    @hash_with_a_lot_of_data = @data
    put_data_to_file
    @last_update = Time.now
  end
end
