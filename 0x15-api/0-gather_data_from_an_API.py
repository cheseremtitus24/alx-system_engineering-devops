#!/usr/bin/python3
"""
This module uses the urllib module
to request data from several Rest API
endpoints to retrieve todo list data
"""
import json
from urllib.error import HTTPError, URLError
from urllib.request import urlopen, Request
import sys


def decode_data(read_response, response):
    """
    read_response -> data from response.read()
    response -> actual response object
    This function extract the content charset and decodes
    it then returns the decoded data.
    """
    character_set = response.headers.get_content_charset()
    # decode the data
    decoded_raw_data = read_response.decode(character_set)
    return decoded_raw_data


def make_request(url, headers=None):
    """ Handles Error and returns API response body as well
    as the response object for ease of extracting more information
    for example the character_set used in the http headers for
    ease of decoding
    """
    request = Request(url, headers=headers or {})
    try:
        with urlopen(request, timeout=10) as response:
            # print(response.status)
            return response.read(), response
    except HTTPError as error:
        print(error.status, error.reason)
    except URLError as error:
        print(error.reason)
    except TimeoutError:
        print("Request timed out")


def call_rest_endpoints(urls):
    """
    Takes in a list of REST API endpoints and retrieves data, parses
    the data then prints the completed tasks of an employee
    """
    emp_full_name = None
    tasks_list = list()
    completed_tasks = list()
    total_tasks = 0
    try:
        for index, url in enumerate(urls):
            body, response = make_request(
                url,
                {"User-Agent": "cheserem"}
            )
            raw_json_data = decode_data(body, response)
            if index == 0:
                emp_full_name = json.loads(raw_json_data).get('name')
            else:
                tasks_list = json.loads(raw_json_data)
                total_tasks = len(tasks_list)
                completed_tasks = list(
                    filter(
                        lambda x: (
                            x.get('completed')),
                        tasks_list))
    except BaseException:
        pass

    else:
        print("Employee {} is done with tasks ({}/{}):".format(emp_full_name,
              len(completed_tasks), total_tasks))
        for task in completed_tasks:
            print("\t {}".format(task.get('title')))


if __name__ == '__main__':
    file_name = sys.argv[0]
    num_arguments_passed = len(sys.argv)
    if num_arguments_passed < 2 or num_arguments_passed > 2:
        print(f"Usage: {file_name} <employees_user_id>")
    else:
        user_id = sys.argv[1]
        urls = [
            f"https://jsonplaceholder.typicode.com/users/{user_id}",
            f"https://jsonplaceholder.typicode.com/users/{user_id}/todos"]
        call_rest_endpoints(urls)
