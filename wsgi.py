import os
from backend.app import create_app

# Create the application instance
# Use 'production' config when FLASK_ENV is not development
config_name = 'production' if os.getenv('FLASK_ENV') == 'production' else 'development'
app = create_app(config_name)

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)