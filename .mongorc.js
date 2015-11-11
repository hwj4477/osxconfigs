print("===============================================================================")
print("============================= MongoDB Shell ===================================")
print("===============================================================================")
print("\n")
print("Drop functions disabled : Databases, Collections, Indexes")
print("     => Make enable : mongo --norc")
print("\n")
print("===============================================================================")
print("\n")

var no = function() {
    print("Not on my watch.");
};

// drop databases
db.dropDatabase = DB.prototype.dropDatabase = no;

// drop collections
DBCollection.prototype.drop = no;

// drop indexes
DBCollection.prototype.dropIndex = no;
