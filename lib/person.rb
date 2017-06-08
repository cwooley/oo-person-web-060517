class Person
  attr_reader :name
  attr_writer :happiness, :hygiene
  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if @happiness < 0
      @happiness = 0
    elsif @happiness > 10
      @happiness = 10
    end
    @happiness
  end

  def hygiene
    if @hygiene < 0
      @hygiene = 0
    elsif @hygiene > 10
      @hygiene = 10
    end
    @hygiene
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene= @hygiene + 4
    @hygiene = self.hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness= @happiness + 2
    self.hygiene= @hygiene - 3
    @happiness = self.happiness
    @hygiene = self.hygiene
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness= @happiness + 3
    friend.happiness= friend.happiness + 3
    @happiness = self.happiness
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness= @happiness - 2
      @happiness = self.happiness
      person.happiness = person.happiness - 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness= @happiness + 1
      @happiness = self.happiness
      person.happiness = person.happiness + 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
