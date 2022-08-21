# your code goes here
class Person
  attr_accessor :bank_account, :happiness,  :hygiene, :clean

  attr_reader :name

  def initialize(name, happiness = 8, hygiene = 8, bank_account = 25)
      @name = name
      @bank_account = bank_account
      @happiness = happiness
      @hygiene = hygiene
  end

  def bank_account=(bank_account)
      @bank_account = bank_account

  end

  def happiness=(happiness)
      @happiness= happiness.clamp(0,10)

  end

  def hygiene=(hygiene)
      @hygiene = hygiene.clamp(0,10)
  end

  def happy?
      self.happiness > 7? true : false
  end

  def clean?
      self.hygiene > 7? true : false
  end

  def get_paid(amount)
      self.bank_account += amount
      "all about the benjamins"
  end

  def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(friend, topic)

      if topic == 'politics'
          self.happiness -= 2
          friend.happiness -= 2
          "blah blah partisan blah lobbyist"

          elsif topic == 'weather'
              self.happiness += 1
              friend.happiness += 1
              "blah blah sun blah rain"

          else
              "blah blah blah blah blah"
      end
  end

end

wanene = Person.new('vee')
puts wanene.happiness
puts wanene.name

