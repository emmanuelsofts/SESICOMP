using Microsoft.EntityFrameworkCore.Migrations;

namespace WebApplication4.Data.Migrations
{
    public partial class SolvedVarcharBase3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Student_Address_Address_id",
                table: "Student");

            migrationBuilder.DropForeignKey(
                name: "FK_Student_Email_Email_student",
                table: "Student");

            migrationBuilder.DropForeignKey(
                name: "FK_Student_Phone_Phone_id",
                table: "Student");

            migrationBuilder.DropIndex(
                name: "IX_Student_Address_id",
                table: "Student");

            migrationBuilder.DropIndex(
                name: "IX_Student_Email_student",
                table: "Student");

            migrationBuilder.DropIndex(
                name: "IX_Student_Phone_id",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "Address_id",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "Email_student",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "Phone_id",
                table: "Student");

            migrationBuilder.AddColumn<int>(
                name: "Student_id1",
                table: "Phone",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Student_id1",
                table: "Email",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Student_id1",
                table: "Address",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Phone_Student_id1",
                table: "Phone",
                column: "Student_id1");

            migrationBuilder.CreateIndex(
                name: "IX_Email_Student_id1",
                table: "Email",
                column: "Student_id1");

            migrationBuilder.CreateIndex(
                name: "IX_Address_Student_id1",
                table: "Address",
                column: "Student_id1");

            migrationBuilder.AddForeignKey(
                name: "FK_Address_Student_Student_id1",
                table: "Address",
                column: "Student_id1",
                principalTable: "Student",
                principalColumn: "Student_id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Email_Student_Student_id1",
                table: "Email",
                column: "Student_id1",
                principalTable: "Student",
                principalColumn: "Student_id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Phone_Student_Student_id1",
                table: "Phone",
                column: "Student_id1",
                principalTable: "Student",
                principalColumn: "Student_id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Address_Student_Student_id1",
                table: "Address");

            migrationBuilder.DropForeignKey(
                name: "FK_Email_Student_Student_id1",
                table: "Email");

            migrationBuilder.DropForeignKey(
                name: "FK_Phone_Student_Student_id1",
                table: "Phone");

            migrationBuilder.DropIndex(
                name: "IX_Phone_Student_id1",
                table: "Phone");

            migrationBuilder.DropIndex(
                name: "IX_Email_Student_id1",
                table: "Email");

            migrationBuilder.DropIndex(
                name: "IX_Address_Student_id1",
                table: "Address");

            migrationBuilder.DropColumn(
                name: "Student_id1",
                table: "Phone");

            migrationBuilder.DropColumn(
                name: "Student_id1",
                table: "Email");

            migrationBuilder.DropColumn(
                name: "Student_id1",
                table: "Address");

            migrationBuilder.AddColumn<int>(
                name: "Address_id",
                table: "Student",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Email_student",
                table: "Student",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Phone_id",
                table: "Student",
                type: "int",
                nullable: true);

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

            migrationBuilder.AddForeignKey(
                name: "FK_Student_Address_Address_id",
                table: "Student",
                column: "Address_id",
                principalTable: "Address",
                principalColumn: "Address_id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Student_Email_Email_student",
                table: "Student",
                column: "Email_student",
                principalTable: "Email",
                principalColumn: "Email_student",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Student_Phone_Phone_id",
                table: "Student",
                column: "Phone_id",
                principalTable: "Phone",
                principalColumn: "Phone_id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
