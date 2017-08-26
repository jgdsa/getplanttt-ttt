using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS2
{
    public partial class showcode :  Webpage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string filename = Request.QueryString["as"];
            string csfilename = Request.QueryString["cs"];
            string filePath1;
            string filePath2;
            if (filename == "register.aspx")
            {
                filePath1 = "C:\\inetpub\\wwwroot\\fit5192\\28198824\\webpages\\register.aspx";
                filePath2 = "C:\\inetpub\\wwwroot\\fit5192\\28198824\\webpages\\register.aspx.cs";
            }

            else if (filename == "Default.aspx" || filename == "web.Master" || filename == "subweb.Master" || filename == "default.aspx")
            {
                filePath1 = "C:\\inetpub\\wwwroot\\fit5192\\28198824\\" + filename;
                filePath2 = "C:\\inetpub\\wwwroot\\fit5192\\28198824\\" + csfilename;
            }

            else
            {
                filePath1 = "C:\\inetpub\\wwwroot\\fit5192\\28198824\\" + "locked\\" + filename;
                filePath2 = "C:\\inetpub\\wwwroot\\fit5192\\28198824\\" + "locked\\" + csfilename;
            }

            FileName.Text = Request.QueryString["as"];
            csfile.Text = Request.QueryString["cs"];
            //            FileInfo file = new FileInfo(Server.MapPath
            //(Request.ServerVariables["SCRIPT_NAME"]));
            FileInfo file = new FileInfo(filePath1);

            if (file.Extension == ".aspx"
              || file.Extension == ".skin"
              || file.Extension == ".css"
              || file.Extension == ".config"
              || file.Extension == ".Master")
            {
                Code.Text = ReadFile(filePath1);
                cscode.Text = ReadFile(filePath2);
            }
            else
            {
                Code.Text = "Sorry you can't read a file with an extension of " + file.Extension;
            }
        }
        private string ReadFile(string filepath)
        {
            string fileOutput = "";
            try
            {
                StreamReader FileReader = new StreamReader(filepath);
                //The returned value is -1 if no more characters are 
                //currently available.
                while (FileReader.Peek() > -1)
                {
                    //ReadLine() Reads a line of characters from the 
                    //current stream and returns the data as a string.
                    fileOutput += FileReader.ReadLine().Replace("<", "&lt;").
                    Replace("  ", "&nbsp;&nbsp;&nbsp;&nbsp;")
                                          + "<br />";
                }
                FileReader.Close();
            }
            catch (FileNotFoundException e)
            {
                fileOutput = e.Message;
            }
            return fileOutput;
        }
    }
}