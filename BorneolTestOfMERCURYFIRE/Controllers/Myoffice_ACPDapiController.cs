using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Text.Json;
using Dapper;
using Microsoft.Data.SqlClient;

namespace BorneolTestOfMERCURYFIRE.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class Myoffice_ACPDapiController : ControllerBase
    {
        private readonly IConfiguration _config;
        private readonly string _connStr;
        public Myoffice_ACPDapiController(IConfiguration config)
        {
            _config = config;
            _connStr = _config.GetConnectionString("MERCURYFIRE");
        }
        //查詢表中資料
        [HttpGet("GetAllMyoffice_ACPDs")]
        public async Task<IActionResult> GetAllMyoffice_ACPDs()
        {
            using var conStr = new SqlConnection(_connStr);
            var result = await conStr.QuerySingleAsync<string>("usp_GetAllMyoffice_ACPDs",
                commandType: CommandType.StoredProcedure);
            if (string.IsNullOrEmpty(result))
            {
                return NotFound("No data found.");
            }
            return Content(result, "application/json");
        }
        //新增一筆資料
        //JSON格式範例：
        //{
        //    "ACPD_SID":"0",
        //    "ACPD_Cname":"測試001",
        //    "ACPD_Ename":"test001",
        //    "ACPD_Sname":"test001",
        //    "ACPD_Email":"test001@test001.com",
        //    "ACPD_Status":"test001",
        //    "ACPD_Stop":"test001",
        //    "ACPD_StopMemo":"test001",
        //    "ACPD_LoginID":"0",
        //    "ACPD_LoginPWD":"test001",
        //    "ACPD_Memo":"test001",
        //    "ACPD_NowDateTime":"2025-06-24 00:00:00",
        //    "ACPD_NowID":"0",
        //    "ACPD_UPDDateTime":"2025-06-24 00:00:00",
        //    "ACPD_UPDID)":"0"
        //}
    [HttpPost("CreateMyoffice_ACPD")]
    public async Task<IActionResult> CreateMyoffice_ACPD([FromBody] JsonElement json)
    {
        using var conStr = new SqlConnection(_connStr);
        var jsonData = json.GetRawText();

        await conStr.ExecuteAsync("usp_CreateMyoffice_ACPD",
            new { Json = jsonData },
            commandType: CommandType.StoredProcedure);

        return Ok("新增成功");
    }
    //更新一筆資料
    [HttpPut("UpdateMyoffice_ACPD")]
    public async Task<IActionResult> UpdateMyoffice_ACPD([FromBody] JsonElement json)
    {
        using var conStr = new SqlConnection(_connStr);
        var jsonData = json.GetRawText();

        await conStr.ExecuteAsync("usp_UpdateMyoffice_ACPD",
            new { Json = jsonData },
            commandType: CommandType.StoredProcedure);

        return Ok("更新成功");
    }
    //刪除一筆資料
    [HttpDelete("DeleteMyoffice_ACPD")]
    public async Task<IActionResult> DeleteMyoffice_ACPD([FromBody] JsonElement json)
    {
        using var conStr = new SqlConnection(_connStr);
        var jsonData = json.GetRawText();

        await conStr.ExecuteAsync("usp_DeleteMyoffice_ACPD",
            new { Json = jsonData },
            commandType: CommandType.StoredProcedure);

        return Ok("刪除成功");
    }
}
}
