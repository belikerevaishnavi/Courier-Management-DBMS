import pandas as pd
import streamlit as st
import plotly.express as px
from database import view_all_data


def read():
    result = view_all_data()
    #st.write(result)
    df = pd.DataFrame(result, columns=['user_id', 'ship_id', 'weight','tot_cost', 'to_addr', 'from_ld', 'to_ld'])
    with st.expander("View all orders"):
        st.dataframe(df)
    with st.expander("Order Details"):
        odr_df = df['weight'].value_counts().to_frame()
        odr_df = odr_df.reset_index()
        st.dataframe(odr_df)
        p1 = px.pie(odr_df, names='index', values='weight')
        st.plotly_chart(p1)