from utils.vector import DynamicVector


@register_passable("trivial")
struct Item:
    var name: StringLiteral
    var qty: Int

    fn __init__(name: StringLiteral, qty: Int) -> Self:
        return Self {name: name, qty: qty}


fn main():
    var item = Item("Alice", 2)
    var ls = DynamicVector[Item]()
    ls.push_back(item)
    print(len(ls))
    print(ls[0].name)
    print(ls[0].qty)
