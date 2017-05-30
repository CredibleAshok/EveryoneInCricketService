using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web.Http;
using Microsoft.Owin.Security.OAuth;
using Newtonsoft.Json.Serialization;
using System.Configuration;
using System.Web.Http.Cors;

namespace WinterCricket
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            //string local = String.Format("http://{0}", Environment.MachineName.ToLower());
            string domains = ConfigurationManager.AppSettings["CorsAccessString"];// ? local : ConfigurationManager.AppSettings["CorsAccessString"];
            // Define and add values to variables: origins, headers, methods (can be global)               

            var cors = new EnableCorsAttribute(domains, "*", "*");
            config.EnableCors(cors);
            // Web API configuration and services
            // Configure Web API to use only bearer token authentication.
            config.SuppressDefaultHostAuthentication();
            config.Filters.Add(new HostAuthenticationFilter(OAuthDefaults.AuthenticationType));

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}
