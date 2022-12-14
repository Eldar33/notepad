
class Link < Post

  def initialize
    super
    @url = nil
  end

  def read_from_console
    puts "Введите адрес ссылки"
    @url = STDIN.gets.chomp

    puts "Напишите пару слов о том, куда ведёт ссылка"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")} \n\r \n\r"

    [@url, @text, time_string]
  end
end