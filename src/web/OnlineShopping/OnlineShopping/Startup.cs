using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OnlineShopping.Startup))]
namespace OnlineShopping
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
