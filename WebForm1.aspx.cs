using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Xsl;

namespace PracticeNet
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string typeMenu = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            LabelOne.Text = "Hello from behindCode";

            typeMenu = "0";

            if (Request.QueryString["Id"] != null)
            {
                typeMenu = Request.QueryString["Id"];
            }

            TransformXML();
        }

        private void TransformXML()
        {
            string xmlPath = ConfigurationManager.AppSettings["FileServer"].ToString() +
                "xml/menu.xml";

            string xsltPath = ConfigurationManager.AppSettings["FileServer"].ToString() +
                "xslt/StyledTemplate.xslt";

            XmlTextReader xmlTextReader = new XmlTextReader(xmlPath);

            XmlUrlResolver xmlUrlResolver = new XmlUrlResolver();
            xmlUrlResolver.Credentials = CredentialCache.DefaultCredentials;

            XsltSettings settings = new XsltSettings(true,true);

            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load(xsltPath, settings, xmlUrlResolver);

            StringBuilder sb = new StringBuilder();
            
            TextWriter textWriter = new StringWriter(sb);

            XsltArgumentList xsltArgumentList = new XsltArgumentList();
            xsltArgumentList.AddParam("TypeMenu", "", typeMenu);

            xslt.Transform(xmlTextReader, xsltArgumentList, textWriter);

            string result = sb.ToString();

            Response.Write(result);


        }
    }
}