.class public final Landroidx/core/util/Pools;
.super Ljava/lang/Object;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/util/Pools$SynchronizedPool;,
        Landroidx/core/util/Pools$SimplePool;,
        Landroidx/core/util/Pools$Pool;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Pools;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method
