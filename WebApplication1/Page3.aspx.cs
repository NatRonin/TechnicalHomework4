using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPrescriptionQueue();
            }
        }
        private void BindPrescriptionQueue()
        {
            List<Prescription> prescriptions = GetSamplePrescriptions();

            GridViewPrescriptions.DataSource = prescriptions;
            GridViewPrescriptions.DataBind();
        }

        private List<Prescription> GetSamplePrescriptions()
        {
            List<Prescription> prescriptions = new List<Prescription>
        {
            new Prescription { PrescriptionId = 1, PatientName = "Pet1", PrescriptionOrdered = "Medication1", ReceivingPharmacy = "Pharmacy1" },
            new Prescription { PrescriptionId = 2, PatientName = "Pet2", PrescriptionOrdered = "Medication2", ReceivingPharmacy = "Pharmacy2" },
        };

            return prescriptions;
        }

        public class Prescription
        {
            public int PrescriptionId { get; set; }
            public string PatientName { get; set; }
            public string PrescriptionOrdered { get; set; }
            public string ReceivingPharmacy { get; set; }
        }
    }
}