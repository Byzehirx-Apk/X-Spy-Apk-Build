.class public final Landroidx/core/database/CursorWindowCompat;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/core/database/CursorWindowCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static create(Ljava/lang/String;J)Landroid/database/CursorWindow;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "windowSizeBytes":J
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    .line 42
    new-instance v3, Landroid/database/CursorWindow;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    move-object v0, v3

    .line 47
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 43
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_1

    .line 44
    new-instance v3, Landroid/database/CursorWindow;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 47
    :cond_1
    new-instance v3, Landroid/database/CursorWindow;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/database/CursorWindow;-><init>(Z)V

    move-object v0, v3

    goto :goto_0
.end method
