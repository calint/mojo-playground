struct Roome:
    pass


struct Item:
    var name: StringLiteral


struct Entity:
    var name: StringLiteral
    var location_id: Int


#    var items:[Int]


fn main():
    let o: Item
    o.name = "notebook"

    let e: Entity
    e.name = "Alice"
    print(o.name)

    let ls = ["a", "b", "c"]
    print(ls.get[0, StringLiteral]())
