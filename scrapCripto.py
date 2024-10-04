#
# Esta é uma simples implementação de um web scraping para constuir
# um grá fico das principais cripto moedas do site coingecko:
# url = "https://www.coingecko.com/en/crypto-gainers-losers"
# <!--testanto o clone remote --> 

import requests
from bs4 import BeautifulSoup

url = "https://www.coingecko.com/en/crypto-gainers-losers"
response = requests.get(url)
html_content = response.text

soup = BeautifulSoup(html_content, 'html.parser')

for coin in soup.find_all("tr"):
    # Tente extrair as informações necessárias de cada <tr>
    # Por exemplo, para o nome da moeda
    name = coin.find("span", class_="lg:tw-flex font-bold tw-items-center tw-justify-between")
    if name:
        name = name.text
        print(name)
    # Adicione código similar para extrair outras informações, como preço, variação, etc.




