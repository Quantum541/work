using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace StudentsDB
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Student> Students
        {
            get { return new DataAccess().GetStudents(); }

            
        }


        protected void  Page_PreRender(object sender, EventArgs e)
        {
            DataBind();
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            var button = sender as Button;
            var id = Convert.ToInt32(button.CommandArgument);
            new DataAccess().Remove(id);
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            var currentStudent = new Student();
            currentStudent.Namediscipline = TextBox1.Text;
            currentStudent.Hours = TextBox2.Text;
            currentStudent.Professor = TextBox3.Text;
            currentStudent.Assessment = TextBox4.Text;
            currentStudent.Date = TextBox5.Text;

            new DataAccess().Insert(currentStudent);
        }

        private void DataBind()
        {
            Repeater1.DataSource = Students;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)  // для обновления
        {
            new DataAccess().update(TextBox6.Text, TextBox7.Text);
        }
    }
}