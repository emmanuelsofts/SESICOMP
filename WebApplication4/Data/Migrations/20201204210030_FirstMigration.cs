using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace WebApplication4.Data.Migrations
{
    public partial class FirstMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Address",
                columns: table => new
                {
                    Address_id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Student_id = table.Column<int>(nullable: false),
                    varchar100 = table.Column<string>(name: "varchar(100)", nullable: true),
                    varchar45 = table.Column<string>(name: "varchar(45)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Address", x => x.Address_id);
                });

            migrationBuilder.CreateTable(
                name: "Email",
                columns: table => new
                {
                    varchar100 = table.Column<string>(name: "varchar(100)", nullable: false),
                    Student_id = table.Column<int>(nullable: false),
                    Email_type = table.Column<int>(nullable: false),
                    Created_on = table.Column<DateTime>(nullable: false),
                    Updated_on = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Email", x => x.varchar100);
                });

            migrationBuilder.CreateTable(
                name: "Phone",
                columns: table => new
                {
                    Phone_id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Student_id = table.Column<int>(nullable: false),
                    varchar30 = table.Column<string>(name: "varchar(30)", nullable: true),
                    Phone_type = table.Column<int>(nullable: false),
                    varchar5 = table.Column<string>(name: "varchar(5)", nullable: true),
                    Created_on = table.Column<DateTime>(nullable: false),
                    Updated_on = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Phone", x => x.Phone_id);
                });

            migrationBuilder.CreateTable(
                name: "Student",
                columns: table => new
                {
                    Student_id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    varchar45 = table.Column<string>(name: "varchar(45)", nullable: true),
                    Gender = table.Column<int>(nullable: false),
                    Created_on = table.Column<DateTime>(nullable: false),
                    Updated_on = table.Column<DateTime>(nullable: false),
                    Address_id = table.Column<int>(nullable: true),
                    Email_student = table.Column<string>(nullable: true),
                    Phone_id = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Student", x => x.Student_id);
                    table.ForeignKey(
                        name: "FK_Student_Address_Address_id",
                        column: x => x.Address_id,
                        principalTable: "Address",
                        principalColumn: "Address_id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Student_Email_Email_student",
                        column: x => x.Email_student,
                        principalTable: "Email",
                        principalColumn: "varchar(100)",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Student_Phone_Phone_id",
                        column: x => x.Phone_id,
                        principalTable: "Phone",
                        principalColumn: "Phone_id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Student_Address_id",
                table: "Student",
                column: "Address_id");

            migrationBuilder.CreateIndex(
                name: "IX_Student_Email_student",
                table: "Student",
                column: "Email_student");

            migrationBuilder.CreateIndex(
                name: "IX_Student_Phone_id",
                table: "Student",
                column: "Phone_id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Student");

            migrationBuilder.DropTable(
                name: "Address");

            migrationBuilder.DropTable(
                name: "Email");

            migrationBuilder.DropTable(
                name: "Phone");
        }
    }
}
