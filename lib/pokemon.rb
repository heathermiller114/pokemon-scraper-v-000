class Pokemon
  
  attr_accessor :id, :name, :type, :db
  @@all_pokemon = []
  
  def initialize(id: 1, name: "unnamed", type: "untyped", db: @db)
    @id = id
    @name = name
    @type = type
    @@all_pokemon << self
  end
  
  def self.save(id, name, type)
    @db.execute("INSERT INTO pokemon (name, breed, age) VALUES (?, ?, ?)",name, breed, age)
    
  end
end
