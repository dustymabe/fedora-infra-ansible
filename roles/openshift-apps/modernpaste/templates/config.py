import constants
import os

# Domain from which you will access this app
# If running on a port other than 80, append it after a colon at the end of the domain, e.g. 'domain.com:8080'
DOMAIN = "modernpaste-web-modernpaste.app.os.stg.fedoraproject.org"

# Use HTTPS by default?
# This is only used for deciding whether to use the http:// or https:// prefix when constructing full URLs,
# and is not related to your web server configuration.
DEFAULT_HTTPS = True

# The type of build environment
# build_environment.DEV won't minify CSS and Closure-compile JavaScript; build_environment.PROD will.
# Dev and prod environments also use separate databases, modern_paste_dev and modern_paste, respectively.
BUILD_ENVIRONMENT = constants.build_environment.PROD

# Option to use encrypted IDs rather than integer IDs
# Set this to True if you want paste IDs to be encrypted, e.g. displayed as h0GZ19np17iT~CtpuIH3NcnRi-rYnlYzizqToCmG3BY=
# If False, IDs will be displayed as regular, incrementing integers, e.g. 1, 2, 3, etc.
USE_ENCRYPTED_IDS = True

# Choose to allow paste attachments
# This will allow for users to attach files and images to pastes. If disabled, the MAX_ATTACHMENT_SIZE and
# ATTACHMENTS_DIR configuration constants will be ignored.
ENABLE_PASTE_ATTACHMENTS = False

# Allow only paste attachments below a certain size threshold, in MB
# Set this to 0 for an unlimited file size.
MAX_ATTACHMENT_SIZE = 5

# Location to store paste attachments
# Please use an absolute path and ensure that it is writable by www-data.
ATTACHMENTS_DIR = '/var/www/modern-paste-attachments'

# Choose to enable or disable user registration
# If False, the web interface will not allow access to the user registration page. Additionally, the API endpoint
# for creating new users will respond with an error.
# This is useful for private or internal installations that aren't intended for public use.
ENABLE_USER_REGISTRATION = False

# Choose to require users to be logged in to post pastes
# If True, the web interface will allow access to the paste post interface only if the user is signed in. Additionally,
# the API endpoint for creating new pastes will respond with an error if not authenticated with an API key tied to an
# existing, active user.
# This is useful for private or internal installations that aren't intended for public use.
REQUIRE_LOGIN_TO_PASTE = False

# AES key for generating encrypted IDs
# This is only relevant if USE_ENCRYPTED_IDS above is True. If not, this config parameter can be ignored.
# It is recommended, but not strictly required, for you to replace the string below with the output of os.urandom(32),
# so that the encrypted IDs generated for the app are specific to this installation.
#ID_ENCRYPTION_KEY = os.environ.get('ENCRYPTION_KEY')
ID_ENCRYPTION_KEY = '{{modernpaste_stg_encryption_key}}'

# Flask session secret key
# IMPORTANT NOTE: Open up a Python terminal, and replace the below with the output of os.urandom(32)
# This secret key should be different for every installation of Modern Paste.
#FLASK_SECRET_KEY = os.environ.get('SECRET_KEY')
FLASK_SECRET_KEY = '{{modernpaste_stg_session_key}}'

# Languages
# A list of all languages you want to support with the app. Add 'text' for plain text support.
# Only use strings from the directory app/static/build/lib/codemirror/mode
LANGUAGES = [
    'text',
    'clike',
    'cmake',
    'css',
    'd',
    'diff',
    'dockerfile',
    'erlang',
    'go',
    'haskell',
    'htmlmixed',
    'javascript',
    'jinja2',
    'lua',
    'markdown',
    'perl',
    'php',
    'python',
    'rpm',
    'rst',
    'ruby',
    'rust',
    'shell',
    'sql',
    'swift',
    'xml',
    'yaml',
]
