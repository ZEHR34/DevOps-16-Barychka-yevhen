while True:
    ip = list(map(int, input("ведіть ip адресу в форматі 10.0.1.1: ").split(".")))

    if len(ip) != 4 or len([i for i in ip if 0 <= i <= 255]) != 4:
        print("Неправильный IP-адрес")
        continue
    break

if 1<=ip[0]<=223:
    print("unicast")
elif 224<=ip[0]<=239:
    print("multicast")
elif len([i for i in ip if i==255]) == len(ip):
    print("local broadcast")
elif len([i for i in ip if i==0]) == len(ip):
    print("unassigned")
else:
    print("unused")