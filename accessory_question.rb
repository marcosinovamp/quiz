class AccessoryQuestion
  attr_accessor :question, :answer, :options
  def initialize(question, answer, options = [])
    @question = question
    @answer = answer
    @options = options
  end

  def self.mount_question(accq)
    n = 0
    puts accq.question
    accq.options.split("\", \"").each { |x| puts "#{n += 1} - #{x.gsub("[\"","").gsub("\"]","")}" }
    ans = gets.chomp.to_i
    ans == accq.answer ? 'right' : 'wrong'
  end
end
