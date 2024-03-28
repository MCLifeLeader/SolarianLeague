using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;
using System.Text.Json.Serialization;
using Newtonsoft.Json;
using System.Net.Http.Headers;
using System.Net;
using System.Text;
using BlizzardAuth.Models.Guild.Base;

namespace BlizzardAuth;

public class TestingBlizzardAuth
{
    private readonly ILogger<TestingBlizzardAuth> _logger;

    public TestingBlizzardAuth(ILogger<TestingBlizzardAuth> logger)
    {
        _logger = logger;
    }

    /// <summary>
    /// This function is used to get an access token from the Blizzard API.
    /// </summary>
    /// <param name="req"></param>
    /// <returns></returns>
    [Function("GetBlizzardAuthToken")]
    public IActionResult GetBlizzardAuthToken([HttpTrigger(AuthorizationLevel.Anonymous, "get")] HttpRequest req)
    {
        _logger.LogInformation("C# HTTP trigger function processed a request.");

        BlizzardToken token = new BlizzardToken()
        {
            AccessToken = string.Empty
        };

        HttpClient client = new HttpClient();

        // Enter valid client id and secret here.
        string clientId = "clientId";
        string clientSecret = "clientSecret";

        // This endpoint works in local development and fails to execute after deployed to Azure.
        client.BaseAddress = new Uri("https://oauth.battle.net");
        client.DefaultRequestHeaders.Accept.Clear();
        client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        client.Timeout = TimeSpan.FromSeconds(120);

        byte[] byteArray = Encoding.ASCII.GetBytes($"{clientId}:{clientSecret}");
        client.DefaultRequestHeaders.Authorization = new("Basic", Convert.ToBase64String(byteArray));

        string route = "/token?grant_type=client_credentials";
        HttpResponseMessage response = client.PostAsync(route,
            new StringContent(string.Empty, Encoding.UTF8, "application/json")).Result;

        if (response.StatusCode == HttpStatusCode.OK)
        {
            TextReader reader = new StreamReader(response.Content.ReadAsStream());
            string content = reader.ReadToEnd();

            token = JsonConvert.DeserializeObject<BlizzardToken>(content);
        }
            
        return new OkObjectResult(new {t = token, r = response.StatusCode });
    }

    /// <summary>
    /// This function is used to get guild data from the Blizzard API.
    /// </summary>
    /// <param name="req"></param>
    /// <returns></returns>
    [Function("GetWowGuildData")]
    public IActionResult GetWowGuildData([HttpTrigger(AuthorizationLevel.Anonymous, "get")] HttpRequest req)
    {
        _logger.LogInformation("C# HTTP trigger function processed a request.");

        HttpClient client = new HttpClient();

        // If you enter a valid bearer token, this function will return the guild data.
        string bearerToken = "bearerToken";

        // This endpoint works in local development and deployed to Azure.
        client.BaseAddress = new Uri("https://us.api.blizzard.com");
        client.DefaultRequestHeaders.Accept.Clear();
        client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        client.Timeout = TimeSpan.FromSeconds(120);

        client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", bearerToken);

        string realm = "antonidas";
        string guildName = "solarian-league";
        string route = $"data/wow/guild/{realm}/{guildName}?namespace=profile-us";

        HttpResponseMessage response = client.GetAsync(route).Result;

        if (response.StatusCode == HttpStatusCode.OK)
        {
            TextReader reader = new StreamReader(response.Content.ReadAsStream());
            string content = reader.ReadToEnd();

            var data = JsonConvert.DeserializeObject<GuildRoot>(content);
            return new OkObjectResult(data);
        }

        return new OkObjectResult(new { r = response.StatusCode });
    }

    /// <summary>
    /// Test the same kind of request as the GetBlizzardAuthToken function, but with a different endpoint.
    /// </summary>
    /// <param name="req"></param>
    /// <returns></returns>
    [Function("GetResponseFromDummyEndpoint")]
    public IActionResult GetResponseFromDummyEndpoint([HttpTrigger(AuthorizationLevel.Anonymous, "get")] HttpRequest req)
    {
        _logger.LogInformation("C# HTTP trigger function processed a request.");

        BlizzardToken token = new BlizzardToken()
        {
            AccessToken = string.Empty
        };

        HttpClient client = new HttpClient();

        // These are intended to be dummy values
        string clientId = "dummy_clientId";
        string clientSecret = "dummy_clientSecret";

        // This endpoint works in local development and deployed to Azure. (Dummy endpoint)
        client.BaseAddress = new Uri("https://jsonplaceholder.typicode.com");
        client.DefaultRequestHeaders.Accept.Clear();
        client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        client.Timeout = TimeSpan.FromSeconds(120);

        byte[] byteArray = Encoding.ASCII.GetBytes($"{clientId}:{clientSecret}");
        client.DefaultRequestHeaders.Authorization = new("Basic", Convert.ToBase64String(byteArray));

        BlizzardToken dummyMessage = new BlizzardToken()
        {
            AccessToken = "testToken",
            ExpiresIn = 10000,
            Sub = "testSub",
            TokenType = "test"
        };

        // Similar kind of request as the GetBlizzardAuthToken function.
        string route = "/posts?grant_type=client_credentials";
        HttpResponseMessage response = client.PostAsync(route, 
            new StringContent(JsonConvert.SerializeObject(dummyMessage), Encoding.UTF8, "application/json")).Result;

        if (response.StatusCode == HttpStatusCode.OK || response.StatusCode == HttpStatusCode.Created)
        {
            TextReader reader = new StreamReader(response.Content.ReadAsStream());
            string content = reader.ReadToEnd();

            // mimic the response from the Blizzard API
            token = JsonConvert.DeserializeObject<BlizzardToken>(content);
        }

        return new OkObjectResult(new { t = token, r = response.StatusCode });
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