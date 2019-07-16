using CarDealership.Models.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarDealership.BLL
{
    public class GuildCarsManager
    {
        public IGuildCarRepository newGuildCarRepository;

        // DEPENDENCY INJECTION!!!
        public GuildCarsManager(IGuildCarRepository guildCarRepository)
        {
            newGuildCarRepository = guildCarRepository;
        }
    }
}