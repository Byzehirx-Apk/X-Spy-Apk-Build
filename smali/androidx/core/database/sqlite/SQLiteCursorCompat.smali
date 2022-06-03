.class public final Landroidx/core/database/sqlite/SQLiteCursorCompat;
.super Ljava/lang/Object;
.source "SQLiteCursorCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/core/database/sqlite/SQLiteCursorCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static setFillWindowForwardOnly(Landroid/database/sqlite/SQLiteCursor;Z)V
    .locals 4
    .param p0    # Landroid/database/sqlite/SQLiteCursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "cursor":Landroid/database/sqlite/SQLiteCursor;
    move v1, p1

    .local v1, "fillWindowForwardOnly":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 46
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteCursor;->setFillWindowForwardOnly(Z)V

    .line 48
    :cond_0
    return-void
.end method
