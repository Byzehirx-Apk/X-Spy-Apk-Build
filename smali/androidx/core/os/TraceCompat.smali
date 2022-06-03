.class public final Landroidx/core/os/TraceCompat;
.super Ljava/lang/Object;
.source "TraceCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/TraceCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "sectionName":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 45
    move-object v1, v0

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public static endSection()V
    .locals 2

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 58
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 60
    :cond_0
    return-void
.end method
