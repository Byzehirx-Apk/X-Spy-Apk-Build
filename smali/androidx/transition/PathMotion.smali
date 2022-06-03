.class public abstract Landroidx/transition/PathMotion;
.super Ljava/lang/Object;
.source "PathMotion.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/transition/PathMotion;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/transition/PathMotion;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public abstract getPath(FFFF)Landroid/graphics/Path;
.end method
