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
        /// Number of GUIDs to generate (1-100, default: 1)
        /// Example: 3
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Format: 'default', 'uppercase', 'nohyphens', or 'braces' (default: default)
        /// Example: uppercase
        /// </summary>
        [JsonProperty("format")]
        public string Format { get; set; }
    }
}
