import random

n_nodes = 250  # number of nodes to create

for i in range(n_nodes):
    node_id = i
    x = random.randint(0, 1999)
    y = random.randint(0, 1999)
    print(f"set node_({node_id}) [$ns node]")
    print(f"$node_({node_id}) set X_ {x}")
    print(f"$node_({node_id}) set Y_ {y}")
    print(f"$node_({node_id}) set Z_ 0")
