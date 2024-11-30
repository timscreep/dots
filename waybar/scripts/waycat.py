import time

import psutil

cat = ""
prev_cat = 1
cats = [
    "",
    "",
    "",
    "",
    "",
]
next_cat = cats[prev_cat + 1]
while True:
    for cat in cats:
        cpu_percent = psutil.cpu_percent(interval=0.1)
        time.sleep(1 / cpu_percent)
        print(cat, cpu_percent)
