# From: https://sorbet.org/docs/gradual
 
class Person
  attr_accessor :name
end

sig {params(person: Person).returns(Integer)}
def name_length(person)
  name = person.name # (*)
  T.reveal_type(name) # => T.untyped

  len = name.length
  T.reveal_type(len) # => T.untyped

  len
end
