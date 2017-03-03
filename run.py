from bottle import *

@get('/api/version')
def get_data():
    return {'version': 1}


def main():
    run(host='0.0.0.0', port=8080, reloader=True, debug=True)


main()