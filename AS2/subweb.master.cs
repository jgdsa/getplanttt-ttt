using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS2
{
    public partial class subweb : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetEventDates();
            Calendar1_Init(sender, e);
        }
        protected void NavigationTreeView_SelectedNodeChanged(object sender, EventArgs e)
        {

        }

        protected void GetEventDates()
        {
            dsEvent.SelectCommand = "SELECT [EventDate] FROM [Events]";
            DataView dv = (DataView)dsEvent.Select(DataSourceSelectArguments.Empty);
            LinkedList<DateTime> selday = new LinkedList<DateTime>();
            if (dsEvent.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
            {
                for (int i = dv.Table.Rows.Count - 1; i >= 0; i--)
                {
                    string eventDaystr = dv.Table.Rows[i][0].ToString();
                    DateTime current = Convert.ToDateTime(eventDaystr);
                    selday.AddFirst(current);
                }
            }
            Session["eventdate"] = selday;
        }

        protected string GetEventDetails(EventArgs e)
        {
            string eventDetails = "";
            string nextDay = Calendar1.SelectedDate.AddDays(1).ToShortDateString();
            string selectedDay = Calendar1.SelectedDate.ToShortDateString();
            dsEvent.SelectCommand =
        "SELECT [EventDate] ,[EventDescription]FROM [Events] WHERE ([EventDate]< '" +
        nextDay + "' and [EventDate]> '" + selectedDay + "')";

            DataView dv = (DataView)dsEvent.Select(DataSourceSelectArguments.Empty);
            if (dsEvent.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
            {
                for (int i = dv.Table.Rows.Count - 1; i >= 0; i--)
                {
                    string eventDaystr = dv.Table.Rows[i][0].ToString();
                    DateTime eventDay = Convert.ToDateTime(eventDaystr);
                    eventDaystr = eventDay.ToShortTimeString();
                    eventDetails += "At " + eventDaystr + ", " + dv.Table.Rows[i][1].ToString() + "<br/>";

                }
            }
            else
                eventDetails = "NO event for today!";
            return eventDetails;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            displayEvent.Text = GetEventDetails(e);
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            LinkedList<DateTime> displaydate = (LinkedList<DateTime>)Session["eventdate"];
            try
            {
                for (int i = displaydate.Count; i > 0; i--)
                {
                    Calendar1.SelectedDates.Add(displaydate.First.Value);
                    displaydate.RemoveFirst();
                    e.Cell.ForeColor = Color.FromName("#CCCCCC");
                }
            }
            catch (System.NullReferenceException ex)
            {
                displayEvent.Text = ex.Message;
            }
        }

        protected void Calendar1_Init(object sender, EventArgs e)
        {
            displayEvent.Text = GetEventDetails(e);
        }
    }
}