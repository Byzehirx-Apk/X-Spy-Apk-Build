.class public Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;
.super Ljava/lang/Object;
.source "SQLiteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 15
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    return-object v0
.end method
