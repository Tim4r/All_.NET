﻿using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Todoist.Migrations
{
    /// <inheritdoc />
    public partial class AddCategoryToGo : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateIndex(
                name: "IX_Goals_CategoryID",
                table: "Goals",
                column: "CategoryID");

            migrationBuilder.AddForeignKey(
                name: "FK_Goals_Categories_CategoryID",
                table: "Goals",
                column: "CategoryID",
                principalTable: "Categories",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Goals_Categories_CategoryID",
                table: "Goals");

            migrationBuilder.DropIndex(
                name: "IX_Goals_CategoryID",
                table: "Goals");
        }
    }
}
