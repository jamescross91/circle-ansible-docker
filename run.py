import logging
from bottle import *

@get('/api/version')
def get_data():
    return {'version': 1}


def main():
	logging.basicConfig(format='%(asctime)s %(message)s', level=logging.DEBUG)
	logging.info('Starting HTTP server')
	run(host='0.0.0.0', port=8000, reloader=True, debug=True)

main()