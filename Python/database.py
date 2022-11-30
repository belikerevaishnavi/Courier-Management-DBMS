import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="courier_management"
)
c = mydb.cursor()

def add_data(user_id, ship_id, weight, to_addr, from_ld, to_ld):
    c.execute('INSERT INTO orders (user_id, ship_id, weight, to_addr, from_ld, to_ld) VALUES (%s,%s,%s,%s,%s,%s);',
            (user_id, ship_id, weight, to_addr, from_ld, to_ld))
    mydb.commit()

def view_all_data():
    c.execute('SELECT * FROM orders')
    data = c.fetchall()
    return data

def view_only_order_names():
    c.execute('SELECT ship_id FROM orders')
    data = c.fetchall()
    return data


def get_details(ship_id):
    c.execute('SELECT * FROM orders WHERE ship_id="{}"'.format(ship_id))
    data = c.fetchall()
    return data


def edit_details(n_user_id, n_ship_id, n_weight, n_from_ld, n_to_ld, n_to_addr, user_id, ship_id, weight, from_ld, to_ld, to_addr):
    c.execute("UPDATE orders SET user_id=%s, ship_id=%s, weight=%s, from_ld=%s, to_ld=%s, to_addr=%s WHERE "
              "user_id=%s and ship_id=%s and weight=%s and from_ld=%s and to_ld=%s and to_addr=%s", (n_user_id, n_ship_id, n_weight, n_from_ld, n_to_ld, n_to_addr, user_id, ship_id, weight, from_ld, to_ld, to_addr))
    mydb.commit()
    data = c.fetchall()
    return data


def delete_data(ship_id):
    c.execute('DELETE FROM orders WHERE ship_id="{}"'.format(ship_id))
    mydb.commit()

def qexe(query):
    c.execute(query)
    data = c.fetchall()
    return data

def up_tot_cost(weight, sid, fld, tld):
    c.execute("SELECT cost FROM vehicle WHERE from_ld = %s and to_ld = %s", (fld, tld))
    i = c.fetchone()
    cost = int(i[0])
    val = (1.5*weight)+(cost)
    c.execute("UPDATE orders SET tot_cost=%s WHERE ship_id=%s", (val, sid))
    mydb.commit()
    return val

def view_track():
    c.execute('SELECT * FROM tracking')
    data = c.fetchall()
    return data

def find_track(sid):
    c.execute('SELECT * FROM tracking WHERE ship_id = "{}"'.format(sid))
    data = c.fetchall()
    return data

def find_dri(vid):
    c.execute('SELECT * FROM driver WHERE vehicle_no = "{}"'.format(vid))
    res1 = c.fetchall()
    dr = res1[0][1]
    c.execute('SELECT * FROM personal_details WHERE id = "{}"'.format(dr))
    data = c.fetchall()
    return data

def find_os(fld):
    c.execute('SELECT * FROM office_staff where ld_id = "{}"'.format(fld))
    res1 = c.fetchall()
    os = res1[0][1]
    c.execute('SELECT * FROM personal_details WHERE id = "{}"'.format(os))
    data = c.fetchall()
    return data

def find_ds(did):
    c.execute('SELECT * FROM delivery_staff where ds_id = "{}"'.format(did))
    res1 = c.fetchall()
    ds = res1[0][1]
    c.execute('SELECT * FROM personal_details WHERE id = "{}"'.format(ds))
    data = c.fetchall()
    return data
