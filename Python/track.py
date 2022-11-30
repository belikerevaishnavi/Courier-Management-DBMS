import pandas as pd
import streamlit as st
from database import  view_track, view_only_order_names, find_track, find_dri, find_os, find_ds

def track():
    result = view_track()
    """helloo"""
    # st.write(result)
    df = pd.DataFrame(result, columns=['track_id', 'ship_id', 'vehicle_no', 'current_ld', 'ds_id'])
    with st.expander("Current orders"):
        st.dataframe(df)
    list_of_ship_id = [i[0] for i in view_only_order_names()]
    selected_order = st.selectbox("Shipment ID to Track", list_of_ship_id)
    selected_result = find_track(selected_order)
    #st.write(selected_result)
    if selected_result:
        track_id = selected_result[0][0]
        ship_id = selected_result[0][1]
        vel_id = selected_result[0][2]
        curr_ld = selected_result[0][3]
        ds_id = selected_result[0][4]
    if vel_id != None:
        vel_res = find_dri(vel_id)
        if vel_res:
            fname = vel_res[0][3]
            minit = vel_res[0][4]
            lname = vel_res[0][5]
        st.subheader("Track ID: {}".format(track_id))
        st.subheader("Ship ID: {}".format(ship_id))
        st.subheader("Vehicle ID: {}".format(vel_id))
        st.subheader("Driver ID: {}".format(vel_res[0][0]))
        st.subheader("Driver Name: {} {} {}".format(fname,minit,lname))
        st.subheader("Driver Phone number: {}".format(vel_res[0][6]))
    elif curr_ld != None:
        os_res = find_os(curr_ld)
        if os_res:
            fname = os_res[0][3]
            minit = os_res[0][4]
            lname = os_res[0][5]
        st.subheader("Track ID: {}".format(track_id))
        st.subheader("Ship ID: {}".format(ship_id))
        st.subheader("Local Depot: {}".format(curr_ld))
        st.subheader("Office Staff ID: {}".format(os_res[0][0]))
        st.subheader("Office Staff Name: {} {} {}".format(fname, minit, lname))
        st.subheader("Office Staff Phone number: {}".format(os_res[0][6]))
    elif ds_id != None:
        ds_res = find_ds(ds_id)
        if ds_res:
            fname = ds_res[0][3]
            minit = ds_res[0][4]
            lname = ds_res[0][5]
        st.subheader("Track ID: {}".format(track_id))
        st.subheader("Ship ID: {}".format(ship_id))
        st.subheader("Delivery Staff ID: {}".format(ds_res[0][0]))
        st.subheader("Delivery Staff Name: {} {} {}".format(fname, minit, lname))
        st.subheader("Delivery Staff Phone number: {}".format(ds_res[0][6]))





