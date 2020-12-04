using Microsoft.EntityFrameworkCore.Migrations;

namespace WebApplication4.Data.Migrations
{
    public partial class SolvedVarcharBase4 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
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

            migrationBuilder.AlterColumn<int>(
                name: "Student_id",
                table: "Phone",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<int>(
                name: "Student_id",
                table: "Email",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<int>(
                name: "Student_id",
                table: "Address",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.CreateIndex(
                name: "IX_Phone_Student_id",
                table: "Phone",
                column: "Student_id");

            migrationBuilder.CreateIndex(
                name: "IX_Email_Student_id",
                table: "Email",
                column: "Student_id");

            migrationBuilder.CreateIndex(
                name: "IX_Address_Student_id",
                table: "Address",
                column: "Student_id");

            migrationBuilder.AddForeignKey(
                name: "FK_Address_Student_Student_id",
                table: "Address",
                column: "Student_id",
                principalTable: "Student",
                principalColumn: "Student_id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Email_Student_Student_id",
                table: "Email",
                column: "Student_id",
                principalTable: "Student",
                principalColumn: "Student_id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Phone_Student_Student_id",
                table: "Phone",
                column: "Student_id",
                principalTable: "Student",
                principalColumn: "Student_id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Address_Student_Student_id",
                table: "Address");

            migrationBuilder.DropForeignKey(
                name: "FK_Email_Student_Student_id",
                table: "Email");

            migrationBuilder.DropForeignKey(
                name: "FK_Phone_Student_Student_id",
                table: "Phone");

            migrationBuilder.DropIndex(
                name: "IX_Phone_Student_id",
                table: "Phone");

            migrationBuilder.DropIndex(
                name: "IX_Email_Student_id",
                table: "Email");

            migrationBuilder.DropIndex(
                name: "IX_Address_Student_id",
                table: "Address");

            migrationBuilder.AlterColumn<int>(
                name: "Student_id",
                table: "Phone",
                type: "int",
                nullable: false,
                oldClrType: typeof(int),
                oldNullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Student_id1",
                table: "Phone",
                type: "int",
                nullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "Student_id",
                table: "Email",
                type: "int",
                nullable: false,
                oldClrType: typeof(int),
                oldNullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Student_id1",
                table: "Email",
                type: "int",
                nullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "Student_id",
                table: "Address",
                type: "int",
                nullable: false,
                oldClrType: typeof(int),
                oldNullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Student_id1",
                table: "Address",
                type: "int",
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
    }
}
