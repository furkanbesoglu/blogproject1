using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(blogproject1.Startup))]
namespace blogproject1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
