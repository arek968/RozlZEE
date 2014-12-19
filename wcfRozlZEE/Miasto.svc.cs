using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

namespace wcfRozlZEE
{
    [ServiceContract(Namespace = "")]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class Miasto
    {
        // To use HTTP GET, add [WebGet] attribute. (Default ResponseFormat is WebMessageFormat.Json)
        // To create an operation that returns XML,
        //     add [WebGet(ResponseFormat=WebMessageFormat.Xml)],
        //     and include the following line in the operation body:
        //         WebOperationContext.Current.OutgoingResponse.ContentType = "text/xml";
        [OperationContract]
        public void DoWork()
        {
            // Add your operation implementation here
            return;
        }

        // Add more operations here and mark them with [OperationContract]
        [OperationContract]
        public List<string> ListaMiast()
        {
            // Add your operation implementation here
            List<string> miasta = new List<string> ();
            miasta.Add("Gdańsk");
            miasta.Add("Gdynia");
            miasta.Add("Zurich");
            miasta.Add("Londyn");
            miasta.Add("Warszawa");
            return miasta;
        }
        [OperationContract]
        public string getMiasto(int id)
        {
            // Add your operation implementation here
            return "New York";
        }
    }
}
