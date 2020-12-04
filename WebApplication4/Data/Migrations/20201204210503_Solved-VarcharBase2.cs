using Microsoft.EntityFrameworkCore.Migrations;

namespace WebApplication4.Data.Migrations
{
    public partial class SolvedVarcharBase2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "varchar(45)",
                table: "Student",
                newName: "First_name");

            migrationBuilder.RenameColumn(
                name: "varchar(30)",
                table: "Phone",
                newName: "Phone_number");

            migrationBuilder.RenameColumn(
                name: "varchar(5)",
                table: "Phone",
                newName: "Area_code");

            migrationBuilder.RenameColumn(
                name: "nvarchar(100)",
                table: "Email",
                newName: "Email_student");

            migrationBuilder.RenameColumn(
                name: "varchar(45)",
                table: "Address",
                newName: "City");

            migrationBuilder.RenameColumn(
                name: "varchar(100)",
                table: "Address",
                newName: "Address_line");

            migrationBuilder.AddColumn<string>(
                name: "Last_name",
                table: "Student",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Middle_name",
                table: "Student",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Country_code",
                table: "Phone",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "State",
                table: "Address",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Zip_postcode",
                table: "Address",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Last_name",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "Middle_name",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "Country_code",
                table: "Phone");

            migrationBuilder.DropColumn(
                name: "State",
                table: "Address");

            migrationBuilder.DropColumn(
                name: "Zip_postcode",
                table: "Address");

            migrationBuilder.RenameColumn(
                name: "First_name",
                table: "Student",
                newName: "varchar(45)");

            migrationBuilder.RenameColumn(
                name: "Phone_number",
                table: "Phone",
                newName: "varchar(30)");

            migrationBuilder.RenameColumn(
                name: "Area_code",
                table: "Phone",
                newName: "varchar(5)");

            migrationBuilder.RenameColumn(
                name: "Email_student",
                table: "Email",
                newName: "nvarchar(100)");

            migrationBuilder.RenameColumn(
                name: "City",
                table: "Address",
                newName: "varchar(45)");

            migrationBuilder.RenameColumn(
                name: "Address_line",
                table: "Address",
                newName: "varchar(100)");
        }
    }
}
