.class abstract Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VObject"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1408
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$1;)V
    .locals 3

    .prologue
    .line 1408
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
    move-object v1, p1

    .local v1, "x0":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$1;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;-><init>()V

    return-void
.end method


# virtual methods
.method public isStateful()Z
    .locals 2

    .prologue
    .line 1415
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
    return v0
.end method

.method public onStateChanged([I)Z
    .locals 3

    .prologue
    .line 1423
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
    move-object v1, p1

    .local v1, "stateSet":[I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
    return v0
.end method
