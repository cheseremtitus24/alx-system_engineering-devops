#!/usr/bin/python3
"""
This module makes use of the requests module to send a get request to a
web url then output its payload on-screen
"""
import sys

import requests
from requests import HTTPError


def make_request(url, data=None, method='get', params=None):
    """
        :param url: resource URL to get content from
        :return: request body and http client object
    """
    try:
        with requests.Session() as s:
            if method == 'get':
                response = s.get(url=url, data=data, timeout=10, params=params)
            elif method == 'post':
                response = s.post(
                    url=url, data=data, timeout=10, params=params)

        # print(response.status_code)
        return response.text, response
    except HTTPError as error:
        print(error.status, error.reason)
    except TimeoutError:
        print("Request timed out")


if __name__ == '__main__':
    args_length = len(sys.argv)
    my_dict = {}
    if args_length == 2:
        param_value = sys.argv[1]
        my_dict['q'] = param_value
    else:
        my_dict['q'] = ""
    url = "http://0.0.0.0:5000/search_user"
    # url = "http://e2613abfb831.f9f2e9d2.alx-cod.online:5000/search_user"
    try:
        body, response = make_request(url=url, method='post', data=my_dict)
        # if status_code is btwn 200 and 400 response == True Else False
        if response:
            try:
                result_dict = response.json()
            except BaseException:
                print("Not a valid JSON")
            else:
                if result_dict:
                    id = result_dict['id']
                    name = result_dict['name']
                    print("[{}] {}".format(id, name))
                else:
                    print("No result")
        else:
            print("Error code:", response.status_code)

    except BaseException as e:
        print(e)
