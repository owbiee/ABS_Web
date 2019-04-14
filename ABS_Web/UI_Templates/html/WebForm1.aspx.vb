
Namespace ABS_Web.UI_Templates.html
    Public Class WebForm1
        Inherits System.Web.UI.Page
        Dim strRturn_Data As String

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
            '<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

            If Not (Page.IsPostBack) Then
                'strRturn_Data = ABSWeb_Module_API.gnGET_CONNECTION_STRING()
                'lblReturn_Data.Text = strRturn_Data
                'Call Proc_Get_AllUsers()
                'Call Proc_Get_Roles()
                'Call Proc_Get_AllFunction()
            End If

        End Sub

        Private Sub btnUsers_Click(sender As Object, e As EventArgs) Handles btnUsers.Click
            Dim strUID As String = ""
            'Try
            strUID = cboUsers.SelectedItem.Value
            Call Proc_Show_User(strUID)
            'Catch ex As Exception
            '    Me.lblError.Text = "Error while fetching record..." & ex.Message.ToString()
            'End Try

        End Sub

        Private Sub cboUsers_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboUsers.SelectedIndexChanged
            Dim strUID As String = ""
            Try
                strUID = cboUsers.SelectedItem.Value
                Call Proc_Show_User(strUID)
            Catch ex As Exception
                Me.lblError.Text = "Error while selecting from dropdown box..." & ex.Message.ToString()
            End Try
        End Sub

        Private Sub btnUser_Sumbit_Click(sender As Object, e As EventArgs) Handles btnUser_Sumbit.Click

            Dim objABS_API As ABS_API.STNameSpace.STWebService = Nothing
            objABS_API = New ABS_API.STNameSpace.STWebService()

            Dim rowcnt As Integer = 0

            'lblError.Text = "Error message"

            Dim strCON As String = ABSWeb_Module_API.gnGET_CONNECTION_STRING()
            Dim strSQL As String = ""
            If txtUser_ID.Text = "" Then
" select PWD_REC_NO as fld_user_rec_no, PWD_ID as fld_user_id, PWD_USER_NAME as fld_user_name, PWD_USER_EMAIL as fld_user_email, PWD_KEYDTE as fld_user_keyed_date FROM ABSPASSTAB ORDER BY PWD_USER_NAME "
            Dim mytbl As DataTable = objABS_API.ABS_GetData_SQLQuery(strSQL, strCON)
                If UCase(Left(mytbl.Rows(0)(1).ToString(), 5)) = "ERROR" Then
                    ' show error
                    lblError.Text = mytbl.Rows(0)(1).ToString() & " - " & mytbl.Rows(0)(2).ToString()
                Else
                    'cboUsers.Items.Clear()
                    'cboUsers.Items.Add(New ListItem("--- select ---", "*"))
                    'For rowcnt = 0 To mytbl.Rows.Count - 1
                    '    cboUsers.Items.Add(New ListItem(mytbl.Rows(rowcnt)("fld_user_name").ToString(), mytbl.Rows(0)("fld_user_id").ToString()))
                    'Next
                    GV_User_List.DataSource = mytbl
                    GV_User_List.DataBind()
                End If

                objABS_API.Dispose()
                objABS_API = Nothing

    End Sub

        Private Sub Proc_Get_AllUsers()

            Dim objABS_API As ABS_API.STNameSpace.STWebService = Nothing
            objABS_API = New ABS_API.STNameSpace.STWebService()

            Dim rowcnt As Integer = 0

            'lblError.Text = "Error message"

            Dim strCON As String = ABSWeb_Module_API.gnGET_CONNECTION_STRING()
            Dim strSQL As String = " select PWD_REC_NO as fld_user_rec_no, PWD_ID as fld_user_id, PWD_USER_NAME as fld_user_name, PWD_USER_EMAIL as fld_user_email, PWD_KEYDTE as fld_user_keyed_date FROM ABSPASSTAB ORDER BY PWD_USER_NAME "
            Dim mytbl As DataTable = objABS_API.ABS_GetData_SQLQuery(strSQL, strCON)
            If UCase(Left(mytbl.Rows(0)(1).ToString(), 5)) = "ERROR" Then
                ' show error
                lblError.Text = mytbl.Rows(0)(1).ToString() & " - " & mytbl.Rows(0)(2).ToString()
            Else
                'cboUsers.Items.Clear()
                'cboUsers.Items.Add(New ListItem("--- select ---", "*"))
                'For rowcnt = 0 To mytbl.Rows.Count - 1
                '    cboUsers.Items.Add(New ListItem(mytbl.Rows(rowcnt)("fld_user_name").ToString(), mytbl.Rows(0)("fld_user_id").ToString()))
                'Next
                GV_User_List.DataSource = mytbl
                GV_User_List.DataBind()
            End If

            objABS_API.Dispose()
            objABS_API = Nothing

        End Sub

        Private Sub Proc_Get_Roles()

            Dim objABS_API As ABS_API.STNameSpace.STWebService = Nothing
            objABS_API = New ABS_API.STNameSpace.STWebService()

            Dim rowcnt As Integer = 0

            'lblError.Text = "Error message"

            Dim strCON As String = ABSWeb_Module_API.gnGET_CONNECTION_STRING()
            Dim strSQL As String = " select role_no as fld_role_rec_no, ROLE_NUM as fld_role_num, ROLE_NAME as fld_role_name, ROLE_KEYDTE as fld_role_keyed_date FROM ABSROLEMST ORDER BY ROLE_NAME "
            Dim mytbl As DataTable = objABS_API.ABS_GetData_SQLQuery(strSQL, strCON)
            If UCase(Left(mytbl.Rows(0)(1).ToString(), 5)) = "ERROR" Then
                ' show error
                lblError.Text = mytbl.Rows(0)(1).ToString() & " - " & mytbl.Rows(0)(2).ToString()
            Else
                cboRole_List_Function.Items.Clear()
                cboRole_List_Function.Items.Add(New ListItem("--- select ---", "*"))
                For rowcnt = 0 To mytbl.Rows.Count - 1
                    cboRole_List_Function.Items.Add(New ListItem(mytbl.Rows(rowcnt)("fld_role_name").ToString(), mytbl.Rows(0)("fld_role_num").ToString()))
                Next

                ' GV_All_Roles
                ' GV_Role_Master
                ' GV_Function_Master
                GV_All_Roles.DataSource = mytbl
                GV_All_Roles.DataBind()
                '
                GV_Role_Master.DataSource = mytbl
                GV_Role_Master.DataBind()
                '
            End If

            objABS_API.Dispose()
            objABS_API = Nothing

        End Sub

        Private Sub Proc_Show_User(pvUser_ID As String)

            Dim strUID As String = ""
            strUID = pvUser_ID

            Try
                If strUID = "" Or strUID = "*" Then
                    Me.lblError.Text = "Please select user to view or modifiy..."
                Else
                    Dim objABS_API As ABS_API.STNameSpace.STWebService = Nothing
                    objABS_API = New ABS_API.STNameSpace.STWebService()

                    Dim strCON As String = ABSWeb_Module_API.gnGET_CONNECTION_STRING()
                    Dim strSQL As String = " select top 1 * FROM ABSPASSTAB WHERE PWD_ID = '" & LTrim(RTrim(strUID)) & "'"
                    Dim mytbl As DataTable = objABS_API.ABS_GetData_SQLQuery(strSQL, strCON)
                    If UCase(Left(mytbl.Rows(0)(1).ToString(), 5)) = "ERROR" Then
                        ' show error
                        lblError.Text = mytbl.Rows(0)(1).ToString() & " - " & mytbl.Rows(0)(2).ToString()
                    Else
                        'If mytbl.Rows.Count > 0 Then
                        Me.txtUser_ID.Text = RTrim(mytbl.Rows(0)("PWD_ID") & vbNullString)
                        Me.txtUser_Name.Text = RTrim(mytbl.Rows(0)("PWD_USER_NAME") & vbNullString)
                        Me.txtUser_Email.Text = RTrim(mytbl.Rows(0)("PWD_USER_EMAIL") & vbNullString)
                        'End If

                    End If
                End If

            Catch ex As Exception
                Me.lblError.Text = "Error while getting user info..." & ex.Message.ToString()
            End Try

        End Sub


        Private Sub Proc_Get_AllFunction()

            Dim objABS_API As ABS_API.STNameSpace.STWebService = Nothing
            objABS_API = New ABS_API.STNameSpace.STWebService()

            Dim rowcnt As Integer = 0

            'lblError.Text = "Error message"

            Dim strCON As String = ABSWeb_Module_API.gnGET_CONNECTION_STRING()
            Dim strSQL As String = ""
            strSQL = strSQL & " select t.task_no as fld_task_rec_no, t.task_num as fld_task_num, t.task_name as fld_task_name "
            strSQL = strSQL & " ,r.role_num as fld_role_num, r.role_name as fld_role_name "
            strSQL = strSQL & " FROM ABSROLETASK AS t "
            strSQL = strSQL & " left join ABSROLEMST AS r on r.role_num = t.task_role_num "
            strSQL = strSQL & " order by t.task_name "
            Dim mytbl As DataTable = objABS_API.ABS_GetData_SQLQuery(strSQL, strCON)
            If UCase(Left(mytbl.Rows(0)(1).ToString(), 5)) = "ERROR" Then
                ' show error
                lblError.Text = mytbl.Rows(0)(1).ToString() & " - " & mytbl.Rows(0)(2).ToString()
            Else
                'cboRole_List_Function.Items.Clear()
                'cboRole_List_Function.Items.Add(New ListItem("--- select ---", "*"))
                'For rowcnt = 0 To mytbl.Rows.Count - 1
                '    cboRole_List_Function.Items.Add(New ListItem(mytbl.Rows(rowcnt)("fld_task_name").ToString(), mytbl.Rows(0)("fld_task_num").ToString()))
                'Next

                ' GV_All_Roles
                ' GV_Role_Master
                ' GV_Function_Master
                GV_Function_Master.DataSource = mytbl
                GV_Function_Master.DataBind()
                '
                'GV_Role_Master.DataSource = mytbl
                'GV_Role_Master.DataBind()
                '
            End If

            objABS_API.Dispose()
            objABS_API = Nothing

        End Sub

        Private Sub GV_User_List_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles GV_User_List.PageIndexChanging
            'Dim row As GridViewRow = GridView1.Rows(e.NewSelectedIndex)

            GV_User_List.PageIndex = e.NewPageIndex
            'GridView1.DataBind()
            'Call DoProc_DataBind(strR_ID)
            Me.lblError.Text = "Page " & GV_User_List.PageIndex + 1 & " of " & Me.GV_User_List.PageCount
        End Sub

        Private Sub GV_User_List_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GV_User_List.RowDataBound
            If e.Row.RowType = DataControlRowType.DataRow Then
                e.Row.Attributes("onmouseover") = "this.style.backgroundColor='aquamarine';"
                e.Row.Attributes("onmouseout") = "this.style.backgroundColor='white';"
                e.Row.ToolTip = "Click last column for selecting this row."
            End If
        End Sub

        Private Sub GV_User_List_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GV_User_List.SelectedIndexChanged
            ' GV_User_List
            'Me.txtCustID.Text = Now.ToString
            ' Get the currently selected row using the SelectedRow property.
            Dim row As GridViewRow = GV_User_List.SelectedRow

            ' Display the required value from the selected row.
            'Me.txtRecNo.Text = row.Cells(2).Text
            Me.txtUser_ID.Text = RTrim(row.Cells(2).Text)   ' for BoundField
            Me.txtUser_Name.Text = RTrim(row.Cells(3).Text)   ' for BoundField
            Me.txtUser_Email.Text = RTrim(row.Cells(4).Text)   ' for BoundField
            'Me.txtUser_Email.Text = RTrim(CType(row.Cells(3).FindControl("lblFld_Value"), Label).Text)     ' for ASP.NET control
            'Me.txtCodeName.Text = row.Cells(4).Text
            'Me.txtCustDesc.Text = row.Cells(5).Text

        End Sub

    End Class

End Namespace
