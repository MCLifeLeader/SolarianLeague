using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;
using System.Text.Json.Serialization;
using Newtonsoft.Json;
using System.Net.Http.Headers;
using System.Net;
using System.Text;

namespace BlizzardAuth
{
    public class TestingBlizzardAuth
    {
        private readonly ILogger<TestingBlizzardAuth> _logger;

        public TestingBlizzardAuth(ILogger<TestingBlizzardAuth> logger)
        {
            _logger = logger;
        }

        [Function("GetBlizzardAuthToken")]
        public IActionResult GetBlizzardAuthToken([HttpTrigger(AuthorizationLevel.Anonymous, "get")] HttpRequest req)
        {
            _logger.LogInformation("C# HTTP trigger function processed a request.");

            BlizzardToken token = new BlizzardToken()
            {
                AccessToken = string.Empty
            };

            HttpClient client = new HttpClient();

            string clientId = "clientid";
            string clientSecret = "secret";

            client.BaseAddress = new Uri("https://oauth.battle.net");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            byte[] byteArray = Encoding.ASCII.GetBytes($"{clientId}:{clientSecret}");
            client.DefaultRequestHeaders.Authorization = new("Basic", Convert.ToBase64String(byteArray));

            client.Timeout = TimeSpan.FromSeconds(120);

            string route = "/token?grant_type=client_credentials";
            HttpResponseMessage response = client.PostAsync(route,
                new StringContent(string.Empty, Encoding.UTF8, "application/json")).Result;

            if (response.StatusCode == HttpStatusCode.OK)
            {
                TextReader reader = new StreamReader(response.Content.ReadAsStream());
                string content = reader.ReadToEnd();

                token = JsonConvert.DeserializeObject<BlizzardToken>(content);
            }
            
            return new OkObjectResult(token);
        }

        [Function("GetResponseFromDummyEndpoint")]
        public IActionResult GetResponseFromDummyEndpoint([HttpTrigger(AuthorizationLevel.Anonymous, "get")] HttpRequest req)
        {
            _logger.LogInformation("C# HTTP trigger function processed a request.");

            BlizzardToken token = new BlizzardToken()
            {
                AccessToken = string.Empty
            };

            HttpClient client = new HttpClient();

            string clientId = "client";
            string clientSecret = "secret";

            client.BaseAddress = new Uri("https://jsonplaceholder.typicode.com");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            byte[] byteArray = Encoding.ASCII.GetBytes($"{clientId}:{clientSecret}");
            client.DefaultRequestHeaders.Authorization = new("Basic", Convert.ToBase64String(byteArray));

            client.Timeout = TimeSpan.FromSeconds(120);

            BlizzardToken dummyMessage = new BlizzardToken()
            {
                AccessToken = "testToken",
                ExpiresIn = 10000,
                Sub = "testSub",
                TokenType = "test"
            };

            string route = "/posts?grant_type=client_credentials";
            HttpResponseMessage response = client.PostAsync(route, 
                new StringContent(JsonConvert.SerializeObject(dummyMessage), Encoding.UTF8, "application/json")).Result;

            if (response.StatusCode == HttpStatusCode.OK || response.StatusCode == HttpStatusCode.Created)
            {
                TextReader reader = new StreamReader(response.Content.ReadAsStream());
                string content = reader.ReadToEnd();

                token = JsonConvert.DeserializeObject<BlizzardToken>(content);
            }
            
            return new OkObjectResult(token);
        }


        public class BlizzardToken
        {
            [JsonProperty("access_token")]
            [JsonPropertyName("access_token")]
            public string AccessToken { get; set; } = string.Empty;
            [JsonProperty("token_type")]
            [JsonPropertyName("token_type")]
            public string TokenType { get; set; } = string.Empty;
            [JsonProperty("expires_in")]
            [JsonPropertyName("expires_in")]
            public int ExpiresIn { get; set; }
            [JsonProperty("sub")]
            [JsonPropertyName("sub")]
            public string Sub { get; set; } = string.Empty;
        }
    }
}
