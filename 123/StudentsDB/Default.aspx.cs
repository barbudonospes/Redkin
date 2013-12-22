using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace Kinoafisha
{
    public partial class Default : System.Web.UI.Page
    {
      public List<Kino> Kino1
      {
          get { return new DataAccess().GetKino1(); }
      }
      
        protected void  Page_PreRender(object sender, EventArgs e)
        {
            DataBind();
        }

        //remove button
        protected void btn_Click(object sender, EventArgs e)
        {
            var button = sender as Button;
            var id = Convert.ToInt32(button.CommandArgument);

            new DataAccess().Remove(id);
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            if (OurFileUpload.HasFile)
            {
                string path = Server.MapPath("//");
                OurFileUpload.SaveAs(path + OurFileUpload.FileName);
            }
            var currentKino = new Kino();
            currentKino.jpg = OurFileUpload.FileName;
            currentKino.Title = TextBoxTitle.Text;
            currentKino.about = TextBoxabout.Text;

            new DataAccess().Insert(currentKino);
        }

        private void InitializeStidents()
        {
            Kino1.Add(new Kino()
            {
                jpg = "123",
                Title = "123",
                about = "123",
            });
        }

        private void DataBind()
        {
            Repeater1.DataSource = Kino1;
            Repeater1.DataBind();
        }
    }
}