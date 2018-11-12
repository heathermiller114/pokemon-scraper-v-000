class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id: 1, name: "unnamed", type: "untyped", db: @db)
    @id = id
    @name = name
    @type = type
  end
  
  def self.save
  end
end
