class Post

  def self.post_types
    [Memo, Link, Task]
  end

  def self.create(type_index)
    post_types[type_index].new
  end

  def initialize
    @text = nil
    @created_at = Time.now
  end
  def read_from_console
    #todo
  end

  def to_strings
    #todo
  end

  def save
    file = File.new(file_path, 'w:UTF-8')
    for string in to_strings do
      file.puts string
    end

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__ )
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    return current_path + "/" + file_name
  end

end