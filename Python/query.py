import pandas as pd
import streamlit as st
from database import qexe

def query():
    qry = st.text_input("Enter Query:")
    if st.button("Execute Query"):
        result = qexe(qry)
        df = pd.DataFrame(result)
        with st.expander("Query Result"):
            st.dataframe(df)