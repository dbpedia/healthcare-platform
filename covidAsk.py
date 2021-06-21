# -*- coding: utf-8 -*-
"""
Created on Sun Jun 20 2021

https://github.com/dmis-lab/covidAsk
"""

import requests
import json
from requests.packages.urllib3.exceptions import InsecureRequestWarning


def covidAsk(query):
    params = {'query': query, 'strat': 'dense_first'}
    res = requests.get('https://covidask.korea.ac.kr/api', params=params, verify=False)
    outs = json.loads(res.text)
    return outs

query = "Is there concrete evidence for the presence of asymptomatic transmissions?"
results = covidAsk(query)

# Top 10 phrase answers from covidAsk
print([r['answer'] for r in results['ret']])


query = "Is there concrete evidence for the presence of COVID in pets?"
results = covidAsk(query)

# Top 10 phrase answers from covidAsk
print([r['answer'] for r in results['ret']])