class Pokemon
  
  attr_accessor :id, :name, :type, :db
  @@all_pokemon = []
  
  def initialize(id: 1, name: "unnamed", type: "untyped", db: @db)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all_pokemon << self
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id, db)
    pikachu_from_table = db.execute("SELECT * FROM pokemon WHERE id = #{id}")
    Pokemon.new(pikachu_from_table)
  end
end
