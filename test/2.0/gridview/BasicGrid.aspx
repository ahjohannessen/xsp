<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<script runat="server">
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Simple GridView</h1>
    <p>
    This grid reads the data from <a href="data.xml">data.xml</a>.
    </p>
    <div>
        <asp:GridView AutoGenerateColumns="False" DataSourceID="XmlDataSource1" ID="GridView1"
			AllowPaging="True" PageSize="5"
			AllowSorting="True"
			AutoGenerateEditButton="True"
			AutoGenerateDeleteButton="True"
			AutoGenerateSelectButton="True"
			EnableSortingAndPagingCallbacks="false"
			DataKeyNames="name"
            runat="server">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                <asp:BoundField DataField="value" HeaderText="value" SortExpression="value"></asp:BoundField>
            </Columns>
			<AlternatingRowStyle BackColor="#FFFFc0"/>
			<SelectedRowStyle BackColor="red"/>
			<PagerSettings Mode="Numeric"/>
        </asp:GridView>
    
    </div>
        <asp:XmlDataSource DataFile="data.xml" ID="XmlDataSource1" runat="server"></asp:XmlDataSource>
    </form>
</body>
</html>
