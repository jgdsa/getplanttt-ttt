using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS2
{
    public partial class contact : Webpage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string strPath = "";

        protected void SendingEmail(object sender, EventArgs e)
        {
            MailMessage newMsg = new MailMessage();

            foreach (GridViewRow gvRow in GridView1.Rows)
            {
                CheckBox cb = (CheckBox)gvRow.FindControl("chkEmail");

                if (cb != null && cb.Checked)
                {
                    newMsg.To.Add(new MailAddress(gvRow.Cells[0].Text, gvRow.Cells[1].Text));
                }
            }

            newMsg.From = new MailAddress("15150650039@163.com", "sunyajing");
            newMsg.Subject = txtSubject.Text;
            newMsg.Body = txtMsg.Text;

            bool sendEmail = true;
            if (fileUpload.HasFile)
            {
                if (UpLoadFile(fileUpload.FileName))
                {
                    Attachment newAttach = new Attachment(strPath);
                    newMsg.Attachments.Add(newAttach);
                }
                else
                {
                    sendEmail = false;
                }
            }
            if (sendEmail)
            {
                try
                {
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.163.com";
                    smtp.Send(newMsg);
                    lblMail.Text = "Mail Successfully Sent";
                }
                catch (Exception exc)
                {
                    lblMail.Text = exc.Message;
                    txtMsg.Text = newMsg.From.Address + exc.StackTrace;
                }
            }
        }

        public bool UpLoadFile(string strFileName)
        {
            bool blnFileOK = false;
            string strExt =
              System.IO.Path.GetExtension(fileUpload.PostedFile.FileName);
            if ((strExt != ".gif") && (strExt != ".jpg"))
            {
                lblMail.Text = "Invalid File Type";
            }
            else
            {
                blnFileOK = true;
                strPath =
                  Server.MapPath(".") + "/UploadFiles/" + strFileName;
                fileUpload.PostedFile.SaveAs(strPath);
            }
            return blnFileOK;
        }
    }
}