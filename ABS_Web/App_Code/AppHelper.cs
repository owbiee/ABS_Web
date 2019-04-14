//using System.Runtime.Caching;
using System.Web;
using ABS_Web.Model;


namespace ABS_Web.App_Code
{
    public class AppHelper
    {
        /*
        public static ABSPASSTAB GetCurrentUser()
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                var username = HttpContext.Current.User.Identity.Name;
                var currUser = (ABSPASSTAB)MemoryCache.Default.Get(username);

                if (currUser != null)
                    return currUser;

                // otherwise, user cant be found in list, or reload from db requested
                var unitOfWork = new UnitOfWork();
                var newUser = unitOfWork._userRepository.FindByID(username);

                AddToMemoryCache(newUser);
                return newUser;
            }
            else
                return null;
        }
        */
    }
}