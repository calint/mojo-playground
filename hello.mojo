from utils.vector import DynamicVector


@register_passable("trivial")
struct Item:
    var name: StringLiteral
    var qty: Int

    fn __init__(name: StringLiteral, qty: Int) -> Self:
        return Self {name: name, qty: qty}


fn main():
    var ls = DynamicVector[Item]()
    ls.push_back(Item("Alice", 2))
    print(len(ls))
    print(ls[0].name)
    print(ls[0].qty)
