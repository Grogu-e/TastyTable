# TastyTable

A recipe-sharing web app built as a team capstone project. Users can create an account, log in, browse recipes with their ingredients and step-by-step instructions, and post to a community blog.

## Tech stack

- **Python / Flask**, organized into blueprints (`auth`, `recipe`, `blog`)
- **SQLite** relational database: users, recipes, ingredients and steps linked by foreign keys
- **Jinja2** HTML templates styled with **Bootstrap**

## Security

- Passwords are hashed with Werkzeug's `generate_password_hash`, never stored in plain text
- All queries use parameterized SQL (`?` placeholders) to prevent SQL injection
- Editing or deleting a recipe is limited to its author

## Run it locally

```bash
python -m venv venv
source venv/bin/activate        # Windows: venv\Scripts\activate
pip install -r requirements.txt
flask --app tastytable run --debug
```

Then open http://127.0.0.1:5000. The repo includes a sample database in `instance/` with a demo recipe.
To start from an empty database instead, run `flask --app tastytable init-db` (this erases existing data).

## Project structure

```
tastytable/
  __init__.py   app factory and top-level pages
  auth.py       register, login, logout
  recipe.py     list, view, search, create, edit, delete recipes
  blog.py       community blog posts
  db.py         database connection helpers
  schema.sql    table definitions
  templates/    Jinja2 HTML pages
```

## Future enhancements

- Add ingredients and steps when creating a recipe through the web form
- Scan a QR code of the ingredients you have at home and see which recipes you can make
