from utils.vector import DynamicVector


@register_passable("trivial")
struct Item:
    var name: StringLiteral
    var qty: Int

    fn __init__(name: StringLiteral, qty: Int) -> Self:
        return Self {name: name, qty: qty}


struct Entity:
    var name: StringLiteral

    fn __init__(inout self, name: StringLiteral):
        self.name = name


fn main():
    var lse = [Entity("Alice")]
    print(lse)

    var ls = DynamicVector[Item]()
    ls.push_back(Item("Alice", 2))
    ls.push_back(Item("Bob", 3))
    for i in range(len(ls)):
        print(ls[i].name)
        print(ls[i].qty)
