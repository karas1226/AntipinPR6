using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AntipinPR6
{
    class User
    {
        int id { get; }
        string username { get; set; }
        string password { get; set; }
        public User(int id, string username, string pass)
        {
            this.id = id;
            this.username = username;
            this.password = pass;
        }
    }

}
