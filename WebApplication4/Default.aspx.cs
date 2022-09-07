using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class _Default : Page
    {
        
            protected void Button1_Click(object sender, EventArgs e)
            {
                if (TextBox1.Text != string.Empty && TextBox2.Text != string.Empty && TextBox3.Text != string.Empty)
                {
                    ListBox1.Items.Add(TextBox1.Text);
                    DropDownList1.Items.Add(TextBox2.Text);
                    DropDownList2.Items.Add(TextBox3.Text);
                    Label1.Text = "Добавлен пользователь " + ListBox1.Items.Count + "!";
                    TextBox1.Text = null;
                    TextBox2.Text = null;
                    TextBox3.Text = null;
                }
                else { Label1.Text = "Заполните поля для ввода"; }
            }

            protected void Button2_Click(object sender, EventArgs e)
            {
                if (ListBox1.SelectedIndex >= 0)
                {
                    int index = ListBox1.SelectedIndex;
                    Label1.Text = "Удален пользователь " + (index + 1) + "!";
                    ListBox1.Items.RemoveAt(index);
                    DropDownList1.Items.RemoveAt(index);
                    DropDownList2.Items.RemoveAt(index);
                }
                else { Label1.Text = "Выберите пользователя"; }
            }

            protected void Table3_PreRender(object sender, EventArgs e)
            {
                for (int i = 0; i < ListBox1.Items.Count; i++)
                {
                    TableRow user = new TableRow();
                    TableCell id = new TableCell();
                    id.Text = (i + 1).ToString();
                    TableCell name = new TableCell();
                    name.Text = ListBox1.Items[i].ToString();
                    TableCell phone = new TableCell();
                    phone.Text = DropDownList1.Items[i].ToString();
                    TableCell address = new TableCell();
                    address.Text = DropDownList2.Items[i].ToString();
                    user.Cells.Add(id);
                    user.Cells.Add(name);
                    user.Cells.Add(phone);
                    user.Cells.Add(address);
                    Table3.Rows.Add(user);
                }
            }

            protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
            {

            }

            protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
            {

            }

            protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
            {

            }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}