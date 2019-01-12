class Pokemon

attr_accessor :id, :name, :type, :db, :hp
@@all = []

def initialize(keywords)
  
end

def self.save(name, type, db)
  db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
end

def self.find(id, db)
  poke_info = db.execute("SELECT * FROM pokemon WHERE id = ?", id).first
  Pokemon.new()
end


end
