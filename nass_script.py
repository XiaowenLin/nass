#! /usr/bin/env python
import requests

commodities = ("CORN", "RICE", "SOYBEANS", "WHEAT")
stateFlips = (1,  2,  4,  5,  6,  8,  9,  10,   11,   12,   13,   15,   16,   17,   18,   19,   20,   21,   22,   23,   24,   25,   26,   27,   28,   29,   30,   31,   32,   33,   34,   35,   36,   37,   38,   39,   40,   41,   42,   44,   45,   46,   47,   48,   49,   50,   51,   53,   54,   55,   56,   60,   66,   72,   78)
years = range(1866, 2016)

apiKey = "76C41D69-F7FB-3883-8144-191FFE3FE90B"
base = "http://quickstats.nass.usda.gov/api/"
for commodity in commodities:
  for stateflip in stateFlips:
    for year in years:
      csvfile = commodity + str(year) + "flip" + str(stateflip) + ".csv"
      url = "api_GET/?key=" + apiKey + "&commodity_desc=" + commodity +  "&year__GE=" + \
            str(year) + "&state_fips_code=" + str(stateflip) + "&format=CSV"
      response = requests.get(base + url)
      if response.ok:
        f = open("./results/" + csvfile, 'w')
        f.write(response.text)
        f.close()
        print("T " + csvfile)


      print("F " + csvfile)
