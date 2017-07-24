using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebForLinux.Startup))]
namespace WebForLinux
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
