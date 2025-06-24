其實我做完Controller+SSMS SP後，已經沒有時間修問題了，但我知道其實我沒有真的成功完成
謝謝貴司給的機會，是很寶貴的經驗

JSON格式範例:
新增
{
  "ACPD_SID":0,
  "ACPD_Cname":"測試001",
  "ACPD_Ename":"test001",
  "ACPD_Sname":"test001",
  "ACPD_Email":"test001@test001.com",
  "ACPD_Status":"",
  "ACPD_Stop":"",
  "ACPD_StopMemo":"",
  "ACPD_LoginID":"",
  "ACPD_LoginPWD":"",
  "ACPD_Memo":"",
  "ACPD_NowDateTime":"",
  "ACPD_NowID":"",
  "ACPD_UPDDateTime":"",
  "ACPD_UPDID)":""
}

修改
{
      "ACPD_SID": "0P175610749462070853",
      "ACPD_Cname": "測試001",
      "ACPD_Ename": "test001",
      "ACPD_Sname": "test001",
      "ACPD_Email": "test001@test001.com",
      "ACPD_Status": 0,
      "ACPD_Stop": false,
      "ACPD_StopMemo": "",
      "ACPD_LoginID": "",
      "ACPD_LoginPWD": "",
      "ACPD_Memo": "",
      "ACPD_NowDateTime": "1900-01-01T00:00:00",
      "ACPD_NowID": "",
      "ACPD_UPDDateTime": "1900-01-01T00:00:00"
}

刪除
{
      "ACPD_SID": "0P175610749462070853"
}
