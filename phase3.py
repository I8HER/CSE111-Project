import sqlite3
import re
from sqlite3 import Error

def openConnection(_dbFile):
    #print("++++++++++++++++++++++++++++++++++")
    #print("Open database: ", _dbFile)

    conn = None
    try:
        conn = sqlite3.connect(_dbFile)
        #print("success")
    except Error as e:
        print(e)

    #print("++++++++++++++++++++++++++++++++++")

    return conn

def closeConnection(_conn, _dbFile):
    #print("++++++++++++++++++++++++++++++++++")
    #print("Close database: ", _dbFile)

    try:
        _conn.close()
        print("success")
    except Error as e:
        print(e)

    #print("++++++++++++++++++++++++++++++++++")

def pTeam(_conn):
    print("printing teams:")
    cursor = _conn.cursor()
    cmd2 = f"""
    SELECT T_teamID,C_name,I_name
    FROM Team
    inner join Champion on T_champID = C_champID
    inner join Equipment on E_champID = T_champID
    inner join Item on I_itemID = E_itemID 
    GROUP by T_ID;
    """
    cursor.execute(cmd2)
    result1 = cursor.fetchall()
    print('{:<10} {:<15} {:<15}'.format("Team","Name","Items"))
    print('\n')
    for i in result1:
        print('{:<10} {:<15} {:<15}'.format(i[0],i[1],i[2])+'\n')
    mainMenu(_conn)
    
    
    
def printCham(cmd,cursor):
        cursor.execute(cmd)
        result1 = cursor.fetchall()
        print('{:<10} {:<15} {:<15} {:<15} {:<15} {:<15}'.format("Cost","Name","Origin","Origin","Class","Class"))
        print('\n')
        for i in result1:
            print('{:<10} {:<15} {:<15} {:<15} {:<15} {:<15}'.format(i[0],i[1],i[2],i[3],i[4],i[5])+'\n')
    
def pChamp(_conn):
    print("sorting champions by 1 for name, 2 for skin, 3 for range, 4 for origin, 5 for class, 6 for region, 7 for position, 8 for cost, 9 for Main Menu")
    task = int(input())
    if task == 1:
        cursor = _conn.cursor()
        cmd2 = f"""
        SELECT C_Price,C_name,o1.O_name,o2.O_name,cl1.CL_name,cl2.CL_name
        From Champion
        inner join Origin o1 on C_origin1ID = o1.O_originID
        inner join Origin o2 on C_origin2ID = o2.O_originID
        inner join Class cl1 on C_ClassID = cl1.CL_classID	
        inner join Class cl2 on C_Class2ID = cl2.CL_classID	
        order by c_name
        """
        printCham(cmd2,cursor)
    if task == 2:
        cursor=_conn.cursor()
        cmd2 = f"""
        SELECT C_Price,C_name,o1.O_name,o2.O_name,cl1.CL_name,cl2.CL_name
        From Champion
        inner join Origin o1 on C_origin1ID = o1.O_originID
        inner join Origin o2 on C_origin2ID = o2.O_originID
        inner join Class cl1 on C_ClassID = cl1.CL_classID	
        inner join Class cl2 on C_Class2ID = cl2.CL_classID	
        order by C_skin
        """
        printCham(cmd2,cursor)
    if task == 3:
        cursor=_conn.cursor()
        cmd2 = f"""
        SELECT C_Price,C_name,o1.O_name,o2.O_name,cl1.CL_name,cl2.CL_name
        From Champion
        inner join Origin o1 on C_origin1ID = o1.O_originID
        inner join Origin o2 on C_origin2ID = o2.O_originID
        inner join Class cl1 on C_ClassID = cl1.CL_classID	
        inner join Class cl2 on C_Class2ID = cl2.CL_classID	
        order by c_range
        """        
        printCham(cmd2,cursor)
    if task == 4:
        cursor=_conn.cursor()
        cmd2 = f"""
        SELECT C_Price,C_name,o1.O_name,o2.O_name,cl1.CL_name,cl2.CL_name
        From Champion
        inner join Origin o1 on C_origin1ID = o1.O_originID
        inner join Origin o2 on C_origin2ID = o2.O_originID
        inner join Class cl1 on C_ClassID = cl1.CL_classID	
        inner join Class cl2 on C_Class2ID = cl2.CL_classID	
        order by C_origin1ID, C_origin2ID
        """
        printCham(cmd2,cursor)
    if task == 5:
        cursor=_conn.cursor()
        cmd2 = f"""
        SELECT C_Price,C_name,o1.O_name,o2.O_name,cl1.CL_name,cl2.CL_name
        From Champion
        inner join Origin o1 on C_origin1ID = o1.O_originID
        inner join Origin o2 on C_origin2ID = o2.O_originID
        inner join Class cl1 on C_ClassID = cl1.CL_classID	
        inner join Class cl2 on C_Class2ID = cl2.CL_classID	
        order by C_classID,C_class2ID
        """
        printCham(cmd2,cursor)
    if task == 6:
        cursor=_conn.cursor()
        cmd2 = f"""
        SELECT C_Price,C_name,o1.O_name,o2.O_name,cl1.CL_name,cl2.CL_name
        From Champion
        inner join Origin o1 on C_origin1ID = o1.O_originID
        inner join Origin o2 on C_origin2ID = o2.O_originID
        inner join Class cl1 on C_ClassID = cl1.CL_classID	
        inner join Class cl2 on C_Class2ID = cl2.CL_classID	
        order by C_regionID
        """
        printCham(cmd2,cursor)
    if task == 7:
        cursor=_conn.cursor()
        cmd2 = f"""
        SELECT C_Price,C_name,o1.O_name,o2.O_name,cl1.CL_name,cl2.CL_name
        From Champion
        inner join Origin o1 on C_origin1ID = o1.O_originID
        inner join Origin o2 on C_origin2ID = o2.O_originID
        inner join Class cl1 on C_ClassID = cl1.CL_classID	
        inner join Class cl2 on C_Class2ID = cl2.CL_classID	
        order by C_positionID
        """
        printCham(cmd2,cursor)
    if task == 8:
        cursor=_conn.cursor()
        cmd2 = f"""
        SELECT C_Price,C_name,o1.O_name,o2.O_name,cl1.CL_name,cl2.CL_name
        From Champion
        inner join Origin o1 on C_origin1ID = o1.O_originID
        inner join Origin o2 on C_origin2ID = o2.O_originID
        inner join Class cl1 on C_ClassID = cl1.CL_classID	
        inner join Class cl2 on C_Class2ID = cl2.CL_classID	
        order by C_Price
        """
        printCham(cmd2,cursor)
    if task == 9 :
        mainMenu(_conn)

def addTeam(_conn):
    print("Enter Team Size")
    teamsize=int(input())+1
    temp=1
    cur=_conn.cursor()
    Tcur=cur.execute("SELECT MAX(T_ID) FROM Team")
    T_ID=filter(str.isdigit,str(Tcur.fetchall()))
    T_ID="".join(T_ID) 
    TDcur=cur.execute("SELECT MAX(T_teamID) FROM Team")
    TD_ID=filter(str.isdigit,str(TDcur.fetchall()))
    TD_ID="".join(TD_ID) 
    while(temp!=teamsize):
        T_ID=str(T_ID)
        print("Current team NO " + TD_ID + " Enter one number above")
        print("Enter Team ID ")
        TeamID=input()
        print("Enter Champion Name ")
        name=input()
        Ncur=cur.execute("SELECT C_champID FROM Champion WHERE C_name=?",(name,))
        cID=filter(str.isdigit,str(Ncur.fetchall()))
        cID="".join(cID)
        T_ID=int(T_ID)+temp
        result=[T_ID,TeamID,cID]
        print(T_ID)
        sql="""INSERT INTO Team(T_ID,T_teamID,T_champID) VALUES(?,?,?)"""
        cur.execute(sql,result)    
        temp+=1
    _conn.commit()
    mainMenu(_conn)

def viewOrigin(_conn):
    print("Enter 1 for Origin, 2 for Class")
    task=int(input())
    if task==1:
        cursor = _conn.cursor()
        cmd2 = f"""
        SELECT *
        FROM Origin
        """
        cursor.execute(cmd2)
        result1 = cursor.fetchall()
        print('{:<10} {:<15}'.format("Name","Comment"))
        print('\n')
        for i in result1:
            print('{:<10} {:<15}'.format(i[1],i[2])+'\n')
        mainMenu(_conn)
    if task==2:
        cursor = _conn.cursor()
        cmd2 = f"""
        SELECT *
        FROM Class
        """
        cursor.execute(cmd2)
        result1 = cursor.fetchall()
        print('{:<10} {:<15}'.format("Name","Comment"))
        print('\n')
        for i in result1:
            print('{:<10} {:<15}'.format(i[1],i[2])+'\n')
        mainMenu(_conn)
        
    
def mainMenu(conn):
    print("Enter 1 for view all teams, 2 for view all champions, 3 for add an new team, 4 for view origins/class name and comments,  5 for exiting")
    task=int(input())
    while(True):
        if task == 1:
            task = 10
            pTeam(conn)
        if task == 2:
            pChamp(conn)    
        if task == 3:
            addTeam(conn)
        if task == 4:
            viewOrigin(conn)
        if task == 5:
            exit()

def main():
    database = r"cse111.sqlite"
    # create a database connection
    conn = openConnection(database)
    print('\n')
    mainMenu(conn)
    closeConnection(conn, database)


if __name__ == '__main__':
    main()
