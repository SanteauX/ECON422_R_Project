import os

files = [f for f in os.listdir('.') if os.path.isfile(f) if f.endswith(".csv")]

for i in range(0, len(files)):
    w = open(files[i], "r+")
    list = []
    for line in w:
        tx = line.replace(",", "")
        tx = tx.replace(";", ",")
        list.append(tx)
    w.close()
    w = open(files[i], "w")
    for line in list:
        w.write(line)


