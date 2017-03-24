
import pandas as pd
import numpy as np
from openpyxl import load_workbook


def created_calculated(data_raw,data_key,data_calc):

    #Define indicator fields

    data_calc['Qualify Resi positive'] = np.where(data_raw['QP Resi Positive']>=data_key["Resi Positive"], 'Y', 'N')
    data_calc['Qualify Resi trouble'] = np.where(data_raw['QP Resi Trouble']>=data_key["Resi Trouble"], 'Y', 'N')
    data_calc['Qualify SB positive'] = np.where(data_raw['QP SB Positive']>=data_key["SB Postive"], 'Y', 'N')
    data_calc['Qualify SB trouble'] = np.where(data_raw['QP SB Trouble']>=data_key["SB Touble"], 'Y', 'N')
    data_calc['Qualify Productivity'] = np.where(data_raw['QP Productivity']>=data_key["Productivity"], 'Y', 'N')
    data_calc['Qualify OTA'] = np.where(data_raw['QP OTA']>=data_key["OTA"], 'Y', 'N')
    data_calc.head()
    #Define points

    data_calc["Points Resi positive"]=np.where(data_calc["Qualify Resi positive"]=="Y", 100.*(data_raw["Total techs Resi Positive"]-data_raw["Rank Resi Positive"])/data_raw["Total techs Resi Positive"],"NAN")                    
    data_calc["Points Resi trouble"]=np.where(data_calc["Qualify Resi trouble"]=="Y", 100.*(data_raw["Total techs Resi Trouble"]-data_raw["Rank Resi Trouble"])/data_raw["Total techs Resi Trouble"],"NAN")  
    data_calc["Points SB positive"]=np.where(data_calc["Qualify SB positive"]=="Y", 100.*(data_raw["Total Techs SB positive"]-data_raw["Rank SB positive"])/data_raw["Total Techs SB positive"],"NAN")
    data_calc["Points SB trouble"]=np.where(data_calc["Qualify SB trouble"]=="Y", 100.*(data_raw["Total Techs SB trouble"]-data_raw["Rank SB trouble"])/data_raw["Total Techs SB trouble"],"NAN")
    data_calc["Points Productivity"]=np.where(data_calc["Qualify Productivity"]=="Y", 100.*(data_raw["Total Productivity"]-data_raw["Rank Productivity"])/data_raw["Total Productivity"],"NAN")
    data_calc["Points OTA"]=np.where(data_calc["Qualify OTA"]=="Y", 100.*(data_raw["Total OTA"]-data_raw["Rank OTA"])/data_raw["Total OTA"],"NAN")
    data_calc.head()
    #Calculate Weighted Points

    data_calc["Weighted Points Resi positive"]=np.where(data_calc["Qualify Resi positive"]=="Y",data_calc["Points Resi positive"].astype("float")*data_raw["QP Resi Positive"].astype("float")/(data_raw["QP Resi Positive"].astype("float")+data_raw["QP Resi Trouble"].astype("float")) ,0)
    data_calc["Weighted Points Resi trouble"]=np.where(data_calc["Qualify Resi trouble"]=="Y",data_calc["Points Resi trouble"].astype("float")*data_raw["QP Resi Trouble"].astype("float")/(data_raw["QP Resi Positive"].astype("float")+data_raw["QP Resi Trouble"].astype("float")) ,0)
    data_calc["Weighted Points SB positive"]=np.where(data_calc["Qualify SB positive"]=="Y",data_calc["Points SB positive"].astype("float")*data_raw["QP SB Positive"].astype("float")/(data_raw["QP SB Positive"].astype("float")+data_raw["QP SB Trouble"].astype("float")) ,0)
    data_calc["Weighted Points SB trouble"]=np.where(data_calc["Qualify SB trouble"]=="Y",data_calc["Points SB trouble"].astype("float")*data_raw["QP SB Trouble"].astype("float")/(data_raw["QP SB Positive"].astype("float")+data_raw["QP SB Trouble"].astype("float")) ,0)
    data_calc["Total Points Productivity"]=np.where(data_calc["Points Productivity"]>0,data_calc["Points Productivity"],0)
    data_calc["Total Points OTA"]=np.where(data_calc["Points OTA"]>0,data_calc["Points OTA"],0)
    data_calc["Total Points Repeat"]=data_calc["Weighted Points Resi positive"]+data_calc["Weighted Points Resi trouble"]+data_calc["Weighted Points SB positive"]+data_calc["Weighted Points SB trouble"]
    data_calc["Score"]=data_calc["Total Points Productivity"].astype("float")*data_key["Business Weights Productivity"].astype("float")+data_calc["Total Points OTA"].astype("float")*data_key["Business Weights OTA"].astype("float")+data_calc["Total Points Repeat"].astype("float")*data_key["Business Weights Repeat"].astype("float")
    data_calc.head()
    #Define xlsx writer
    writer = pd.ExcelWriter('pandas_simple.xlsx', engine='xlsxwriter')
    book = load_workbook('322_work_testing_scorecard.xlsx')
    writer = pd.ExcelWriter('322_work_testing_scorecard.xlsx', engine='openpyxl') 
    writer.book = book
    writer.sheets = dict((ws.title, ws) for ws in book.worksheets)
    #write
    data_calc.to_excel(writer, "CalculatedP",index=False)
    writer.save()
if __name__=='__main__':    
#Load data from excel
    data1=pd.read_excel("322_work_testing_scorecard.xlsx","Raw")
    data2=pd.read_excel("322_work_testing_scorecard.xlsx","KeyP")
    data3=pd.read_excel("322_work_testing_scorecard.xlsx","CalculatedP") #blank currently


    created_calculated(data1,data2,data3)

