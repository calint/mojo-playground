from utils.vector import DynamicVector


struct Roome:
    var locations: DynamicVector[Location]
    var entities: DynamicVector[Entity]
    var items: DynamicVector[Item]

    fn __init__(inout self):
        self.locations = DynamicVector[Location]()
        self.entities = DynamicVector[Entity]()
        self.items = DynamicVector[Item]()


struct Location:
    var name: StringLiteral
    var items: DynamicVector[Int]
    var entities: DynamicVector[Int]

    fn __init__(inout self):
        self.name = "Unnamed"
        self.items = DynamicVector[Int]()
        self.entities = DynamicVector[Int]()


struct Item:
    var name: StringLiteral

    fn __init__(inout self):
        self.name = "Unnamed"


struct Entity:
    var name: StringLiteral
    var location_id: Int
    var items: DynamicVector[Int]

    fn __init__(inout self: Self):
        self.name = "Unnamed"
        self.location_id = 0
        self.items = DynamicVector[Int]()


fn main():
    var dv = DynamicVector[Item]()
    var it = Item()
    # dv.push_back(it)

    var roome = Roome()

    var loc = Location()
    loc.name = "roome"
    print(loc.name)
    # roome.locations.push_back(loc)

    var itm = Item()
    itm.name = "notebook"
    print(itm.name)

    var e = Entity()
    e.name = "Alice"
    e.location_id = 1
    e.items.push_back(1)
    print(e.name)
    print(e.items[0])

    let ls = ["a", "b", "c"]
    print(ls.get[0, StringLiteral]())
