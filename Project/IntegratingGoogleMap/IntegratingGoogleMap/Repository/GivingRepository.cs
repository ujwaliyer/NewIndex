using IntegratingGoogleMap.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntegratingGoogleMap.Repository
{
    public class GivingRepository
    {

        #region Private Vars
        private IntegratingGoogleMap.BBIndexEntities1 entities = new BBIndexEntities1(); 
        #endregion

        #region Public Functions

        /// <summary>
        /// Returns total donation amount towards a specific cause
        /// </summary>
        public IEnumerable<TotalDonationCause> GetTotalDonationsCauseWise()
        {
            var totalDonationsCauseWise = from d in entities.Donations
                                          join c in entities.Causes on d.CauseID equals c.ID
                                          group d by new
                                            {
                                                d.CauseID,
                                                c.CauseName
                                            } into grp
                                          select new TotalDonationCause
                                                   {
                                                       CauseName = grp.Key.CauseName,
                                                       TotalDonation = grp.Sum(x => x.AmountDonated).ToString()
                                                   };
            return totalDonationsCauseWise;
        } 
        #endregion

    }
}
