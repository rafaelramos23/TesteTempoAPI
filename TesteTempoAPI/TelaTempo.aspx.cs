using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net;
using System.IO;
using System.Runtime.Serialization.Json;
using System.Web.Script.Serialization;

namespace TesteTempoAPI
{
    public partial class TelaTempo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static string ConverterJsonToStringOnline(String sURL)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(sURL);
            WebResponse response = request.GetResponse();


            using (Stream stream = response.GetResponseStream())
            {
                StreamReader leitor = new StreamReader(stream, Encoding.UTF8);
                return leitor.ReadToEnd();

            }
        }
        protected void btnPesquisa_Click(object sender, EventArgs e)
        {
            // consumir API
            string sCidade = "";
            string sPais = "";
            string sRegiao = "";
            string sLatitude = "";
            string sLongitude = "";
            string sContinente = "";
            string sHoraLocal = "";
            string sTemperaturaC = "";
            string sTemperaturaF = "";

            string sCaminho = "http://api.weatherapi.com/v1/current.json?key=b49ab95e55604ef2945111201210505&q=%22" + txtPesquisa.Text + "%22&aqi=no";
            string sSTRJson = ConverterJsonToStringOnline(sCaminho);

            JavaScriptSerializer serializer = new JavaScriptSerializer();
            dynamic resultado = serializer.DeserializeObject(sSTRJson);

            foreach (KeyValuePair<string, object> Objeto in resultado)
            {
                var chave = Objeto.Key;
                if (chave == "location")
                {
                    dynamic valor = Objeto.Value;
                    foreach (KeyValuePair<string, object> ObjetoDetalhe in valor)
                    {
                        if (ObjetoDetalhe.Key == "name")
                        {
                            sCidade = ObjetoDetalhe.Value.ToString();

                        }
                        if (ObjetoDetalhe.Key == "region")
                        {
                            sRegiao = ObjetoDetalhe.Value.ToString();

                        }
                        if (ObjetoDetalhe.Key == "country")
                        {
                            sPais = ObjetoDetalhe.Value.ToString();

                        }
                        if (ObjetoDetalhe.Key == "lat")
                        {
                            sLatitude = ObjetoDetalhe.Value.ToString();

                        }
                        if (ObjetoDetalhe.Key == "lon")
                        {
                            sLongitude = ObjetoDetalhe.Value.ToString();

                        }
                        if (ObjetoDetalhe.Key == "tz_id")
                        {
                            sContinente = ObjetoDetalhe.Value.ToString();

                        }
                        if (ObjetoDetalhe.Key == "localtime")
                        {
                            sHoraLocal = ObjetoDetalhe.Value.ToString();

                        }
                    }
                }

                if (chave == "current")
                {
                    dynamic valor = Objeto.Value;
                    foreach (KeyValuePair<string, object> ObjetoDetalhe in valor)
                    {
                        if (ObjetoDetalhe.Key == "temp_c")
                        {
                            sTemperaturaC = ObjetoDetalhe.Value.ToString();

                        }
                        if (ObjetoDetalhe.Key == "temp_f")
                        {
                            sTemperaturaF = ObjetoDetalhe.Value.ToString();

                        }
                    }
                }
            }
            txtCidade.Text = sCidade;
            txtRegiao.Text = sRegiao;
            txtPais.Text = sPais;
            txtLatitude.Text = sLatitude;
            txtLongitude.Text = sLongitude;
            txtContinente.Text = sContinente;
            txtHoraLocal.Text = sHoraLocal;
            txtTemperaturaF.Text = sTemperaturaF;
            txtTemperaturaC.Text = sTemperaturaC;
            // txtTeste.Value = sCidade;
        }

        protected void txtPesquisa_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnlimpar_Click(object sender, EventArgs e)
        {
            txtPesquisa.Text = "";
            txtPesquisa.Focus();
            txtCidade.Text = "";
            txtRegiao.Text = "";
            txtPais.Text = "";
            txtLatitude.Text = "";
            txtLongitude.Text = "";
            txtContinente.Text = "";
            txtHoraLocal.Text = "";
            txtTemperaturaF.Text = "";
            txtTemperaturaC.Text = "";
        }
    }
}