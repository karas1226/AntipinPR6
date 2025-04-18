using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AntipinPR6
{
    internal class User
    {
        int id { get; }
        string login { get; set; }
        string password { get; set; }
        public User(int id, string login, string password)
        {
            this.id = id;
            this.login = login;
            this.password = password;
        }
    }
}
