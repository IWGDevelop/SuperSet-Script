# Superset specific config
ROW_LIMIT = 10000
SQLALCHEMY_DATABASE_URI= "sqlite:////app/data/superset.db"
SECRET_KEY = 'Mz4PAfhuiid8mlMa9Cf/At6gfOo8o8hPh9S3aXAlWmn2KCp7jjppdvfw'

# Flask-WTF flag for CSRF
WTF_CSRF_ENABLED = True
# Add endpoints that need to be exempt from CSRF protection
WTF_CSRF_EXEMPT_LIST = []
# A CSRF token that expires in 1 year
WTF_CSRF_TIME_LIMIT = 60 * 60 * 24 * 365
COMPRESS_REGISTER = False

# Set this API key to enable Mapbox visualizations
MAPBOX_API_KEY = 'kjkj'
