using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntegratingGoogleMap.Model
{
    public class DonorInfo : IEntity
    {
        /// <summary>
        /// ID
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// Amount Donated
        /// </summary>
        public float AmountDonated { get; set; }

        /// <summary>
        /// Donation Date
        /// </summary>
        public DateTime DonationDate { get; set; }

        /// <summary>
        /// Donation Date
        /// </summary>
        public int CauseID { get; set; }
    }
}
