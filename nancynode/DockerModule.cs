using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace nancynode
{

    using Nancy;

    public class DockerModule : NancyModule
    {

        public DockerModule()
            : base("Docker")
        {
            Get["/"] = parameters =>
            {
                return View["index"];
            };
        }

    }
}
