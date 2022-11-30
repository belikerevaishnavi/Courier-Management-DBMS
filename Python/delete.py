import pandas as pd
import streamlit as st
from database import view_all_data, view_only_order_names, delete_data


def delete():
    result = view_all_data()
    df = pd.DataFrame(result, columns=['user_id', 'ship_id', 'weight','tot_cost','to_addr', 'from_ld', 'to_ld'])
    with st.expander("Current data"):
        st.dataframe(df)

    list_of_ship_id = [i[0] for i in view_only_order_names()]
    selected_ship = st.selectbox("Shipment to Delete", list_of_ship_id)
    st.warning("Do you want to delete ::{}".format(selected_ship))
    if st.button("Delete Order"):
        delete_data(selected_ship)
        st.success("Order has been deleted successfully")
    new_result = view_all_data()
    df2 = pd.DataFrame(new_result, columns=['user_id', 'ship_id', 'weight','tot_cost','to_addr', 'from_ld', 'to_ld'])
    with st.expander("Updated data"):
        st.dataframe(df2)