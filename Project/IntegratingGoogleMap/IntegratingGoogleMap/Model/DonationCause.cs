using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntegratingGoogleMap.Model
{
    public class DonationCause :IEntity
    {
        /// <summary>
        /// ID
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// Cause name
        /// </summary>
        public string CauseName { get; set; }

        /// <summary>
        /// ZIP Code
        /// </summary>
        public string ZIPCode { get; set; }
    }
}
