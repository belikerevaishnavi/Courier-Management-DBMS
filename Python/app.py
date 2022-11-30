import streamlit as st
import mysql.connector

from create import create
from delete import delete
from READ import read
from update import update
from query import query
from track import track

mydb = mysql.connector.connect(
 host="localhost",
 user="root",
 password=""
)
c = mydb.cursor()


def main():
 st.title("Courier Management System")
 menu = ["Add Order", "View Orders", "Edit Order Info", "Remove Order", "Queries","Track Order"]
 choice = st.sidebar.selectbox("Menu", menu)

 if choice == "Add Order":
  st.subheader("Enter Order Details:")
  create()

 elif choice == "View Orders":
  st.subheader("View Order Details:")
  read()

 elif choice == "Edit Order Info":
  st.subheader("Edited Order Details:")
  update()

 elif choice == "Remove Order":
  st.subheader("Delete Order:")
  delete()

 elif choice == "Queries":
  st.subheader("Write queries to execute:")
  query()

 elif choice == "Track Order":
  st.subheader("Tracking details:")
  track()

 else:
  st.subheader("About Courier Management")


if __name__ == '__main__':
 main()
