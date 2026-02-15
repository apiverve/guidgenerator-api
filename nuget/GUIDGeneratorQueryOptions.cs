using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.GUIDGenerator
{
    /// <summary>
    /// Query options for the GUID Generator API
    /// </summary>
    public class GUIDGeneratorQueryOptions
    {
        /// <summary>
        /// Number of GUIDs to generate
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Output format
        /// </summary>
        [JsonProperty("format")]
        public string Format { get; set; }
    }
}
