import streamlit as st
from database import add_data
from database import up_tot_cost

def create():
    col1, col2 = st.columns(2)
    with col1:
        user_id = st.number_input("User ID:")
        ship_id = st.text_input("Shipment ID:")
        weight = st.number_input("Weight:")
    with col2:
        from_ld = st.selectbox("Source Local Depot:", ["...","DEL","MUM","CHE","KOL","BEN"])
        to_ld = st.selectbox("Destination Local Depot:", ["...","DEL","MUM","CHE","KOL","BEN"])
        to_addr = st.text_input("To Address:")

    if st.button("Add Order"):
        add_data(user_id, ship_id, weight, to_addr, from_ld, to_ld)
        st.success("Successfully added Order: {}".format(ship_id))

    if st.button("Calculate total cost"):
        cost = up_tot_cost(weight, ship_id, from_ld, to_ld)
        st.success("Total cost : {}".format(cost))