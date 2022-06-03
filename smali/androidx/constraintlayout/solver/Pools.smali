.class final Landroidx/constraintlayout/solver/Pools;
.super Ljava/lang/Object;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/Pools$SimplePool;,
        Landroidx/constraintlayout/solver/Pools$Pool;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/Pools;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method
