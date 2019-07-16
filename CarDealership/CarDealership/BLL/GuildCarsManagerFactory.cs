using CarDealership.Models.Repositories;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace CarDealership.BLL
{
    public class GuildCarsManagerFactory
    {
        public static GuildCarsManager Create()
        {
            string mode = ConfigurationManager.AppSettings["Mode"].ToString();

            switch (mode)
            {
                case "QA":
                    return new GuildCarsManager(new GuildCarRepositoryMock());
                case "PROD":
                    return new GuildCarsManager(new GuildCarRepositoryProd());
                default:
                    throw new Exception("Mode value in app config is not valid.");
            }
        }
    }
}