import pandas as pd
import random

product = ["iPhone 13", "MacBook Air", "Dell XPS", "iPad", "Headphones"]
country = ["Germany", "France", "usa", "Spain"]
status = ["Shipped", "Processing", "Cancelled", None]

data = []
for i in range(300):
    data.append({
        "order_id": i + 1,
        "order_date": f"2023-{random.randint(1,12)}-{random.randint(1,28)}",
        "product": random.choice(product),
        "quantity": random.randint(1, 3),
        "price": round(random.uniform(50, 1200), 2),
        "country": random.choice(country),
        "status": random.choice(status)
    })

df = pd.DataFrame(data)
df.to_csv("bronze.csv", index=False)
print("bronze data finished")