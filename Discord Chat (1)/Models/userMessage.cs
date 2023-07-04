using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;

namespace Discord_Chat__1_.Models
{
    public class userMessage
    {
        public userMessage()
        {
            listOfMessage = new List<message>();
            userDM = new List<User>();
        }
        public User currnetUser { get; set; }
        public List<message> listOfMessage { get; set; }
        public List<User> userDM { get; set; }
    }
}