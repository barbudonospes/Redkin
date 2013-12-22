using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MongoDB.Bson;
using MongoDB.Driver;
using MongoDB.Driver.Builders;

namespace Kinoafisha
{
    public class DataAccess
    {
        private MongoCollection<Kino> GetCollection()
        {
            string connectionString =
                "mongodb://123:123@ds053178.mongolab.com:53178/kinoafisha";
            var client= new MongoClient(connectionString);
            var server = client.GetServer();
            var db = server.GetDatabase("kinoafisha");
            var collection = db.GetCollection<Kino>("db");
            return collection;
        }

        public void Insert(Kino kino)
        {
            var collection = GetCollection();
            collection.Insert(kino);
        }

        public List<Kino> GetKino1()
        {
            var collection = GetCollection();
            return collection.FindAllAs<Kino>().ToList();
        }

        public void Remove(int myId)
        {
            var collection = GetCollection();
            var query = Query<Kino>.EQ(e => e.MyID, myId);
            collection.Remove(query);

        }
    }
}