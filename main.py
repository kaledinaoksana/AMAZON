
import lib.web_utils as web
from htmls.classes import Book
from lib.save import CSVwork

search = "python"

search_line = search.replace(' ','+')
URL = f"https://www.amazon.com/s?k={search_line}"
csv_file = f"bases_csv/base_{search.replace(' ','_')}.csv"

# --------------------------------------------------------------------------- 
# CONNECTION TO SITE
bs = web.connect(URL)

# --------------------------------------------------------------------------- 
# FIND BOOKS FROM PAGE
books_from_page = Book.add_books_from_page(bs)

# --------------------------------------------------------------------------- 
# SAVE TO CSV
CSVwork.save_to_csv_books(books_from_page, csv_file)