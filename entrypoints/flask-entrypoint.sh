#!/bin/bash
#
# Example of an entrypoint for Python/Flask apps
#
set -e

# Define help message
show_help() {
    echo """
Usage: docker run <imagename> COMMAND

Commands

dev     : Start a normal Django development server.
bash    : Start a bash shell
lint    : Run pylint
python  : Run a python command
uwsgi   : Run uwsgi server.
help    : Show this message
"""
}

# Run
case "$1" in
    dev)
        echo "Running Development Server..."
        # http://flask.pocoo.org/docs/0.11/cli/#cli
        #
        export FLASK_APP=main.py
        export FLASK_DEBUG=1
        flask run --port ${PORT} --host 0.0.0.0
    ;;
    bash)
        # Enable python to detect custom modules from the command line
        # Assuming that your source code is located in /app
        export PYTHONPATH=/app
        /bin/bash "${@:2}"
    ;;
    lint)
        pylint "${@:2}"
    ;;
    python)
        python "${@:2}"
    ;;
    uwsgi)
        echo "Running App (uWSGI)..."
        uwsgi --ini /deployment/uwsgi.ini
    ;;
    *)
        show_help
    ;;
esac
