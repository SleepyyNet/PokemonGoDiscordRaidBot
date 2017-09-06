﻿using System;
using System.Collections.Generic;
using System.Text;

namespace PokemonGoRaidBot.Data.Objects
{
    public class DiscordServerEntity
    {
        public ulong Id { get; set; }
        public string Name { get; set; }

        public List<DiscordChannelEntity> Channels { get; set; }

        public DateTime FirstSeenDate { get; set; }
        public DateTime LastSeenDate { get; set; }
    }
}