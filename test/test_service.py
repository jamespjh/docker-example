# Tests require the docker container to be running
from os import environ
machine = environ['DOCKER_HOST'].split(':')[1]

def test_service():
    #connect to the web service
    #check we get the right number
    import requests
    import json
    url = "http:"+machine+":4567/3"
    response = requests.get(url)
    doubled = json.loads(response.content)['result']
    assert doubled == 6
