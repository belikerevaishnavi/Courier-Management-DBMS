import datetime

import pandas as pd
import streamlit as st
from database import view_all_data, view_only_order_names, get_details, edit_details
from database import up_tot_cost

def update():
    result = view_all_data()
    """helloo"""
    #st.write(result)
    df = pd.DataFrame(result, columns=['user_id', 'ship_id', 'weight','tot_cost','to_addr', 'from_ld', 'to_ld'])
    with st.expander("Current orders"):
        st.dataframe(df)
    list_of_ship_id = [i[0] for i in view_only_order_names()]
    selected_order = st.selectbox("Shipment ID to Edit", list_of_ship_id)
    selected_result = get_details(selected_order)
    #st.write(selected_result)
    if selected_result:
        user_id = selected_result[0][0]
        ship_id = selected_result[0][1]
        weight = selected_result[0][2]
        tot_cost = selected_result[0][3]
        to_addr = selected_result[0][4]
        from_ld = selected_result[0][5]
        to_ld = selected_result[0][6]

        # Layout of Create
        col1, col2 = st.columns(2)
        with col1:
            n_user_id = st.number_input("User ID:",user_id)
            n_ship_id = st.text_input("Shipment ID:",ship_id)
            n_weight = st.number_input("Weight:",weight)
        with col2:
            n_from_ld = st.selectbox("Source Local Depot:", [from_ld, "DEL", "MUM", "CHE", "KOL", "BEN"])
            n_to_ld = st.selectbox("Destination Local Depot:", [to_ld, "DEL", "MUM", "CHE", "KOL", "BEN"])
            n_to_addr = st.text_input("To Address:",to_addr)

        if st.button("Update Order"):
            edit_details(n_user_id, n_ship_id, n_weight, n_from_ld, n_to_ld, n_to_addr, user_id, ship_id, weight, from_ld, to_ld, to_addr)
            st.success("Successfully updated:: {} to ::{}".format(ship_id, n_ship_id))
        if st.button("Calculate updated cost"):
            cost = up_tot_cost(n_weight, n_ship_id, n_from_ld, n_to_ld)
            st.success("Total cost : {}".format(cost))
    result2 = view_all_data()
    df2 = pd.DataFrame(result2, columns=['user_id', 'ship_id', 'weight','tot_cost', 'to_addr', 'from_ld', 'to_ld'])
    with st.expander("Updated data"):
        st.dataframe(df2)