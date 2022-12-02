# your code goes here
class Person


attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene

def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
end

def happiness= (num)
        
    @happiness = if num > 10 
                    10
    elsif num < 0
        0        
    else 
        num
    end

end

def happy?
     self.happiness > 7
end

def hygiene= (num)

    @hygiene = if num > 10
        10
    elsif num < 0 
        0
        else
            num
    end
end

def clean?
    self.hygiene > 7
end

def get_paid (amount)
    self.bank_account = self.bank_account + amount
    'all about the benjamins'
end

def take_bath 
    self.hygiene = self.hygiene + 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
end

def work_out
    self.hygiene = hygiene= (self.hygiene - 3)
    self.happiness = happiness= (self.happiness + 2)
    '♪ another one bites the dust ♫'
end

def call_friend (friend)
    self.happiness = happiness= (self.happiness + 3)
    friend.happiness = happiness= (friend.happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation (person, topic) 
    case topic
    when 'politics'
    self.happiness = happiness= (self.happiness - 2)
    person.happiness = happiness= (person.happiness - 2)
    'blah blah partisan blah lobbyist'
    when 'weather'
    self.happiness = happiness= (self.happiness + 1)
    person.happiness = happiness= (person.happiness + 1)
    'blah blah sun blah rain'
    else 
    'blah blah blah blah blah'
    end

end



end
