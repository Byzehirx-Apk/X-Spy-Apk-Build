.class abstract Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Transition"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;)V
    .locals 3

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    move-object v1, p1

    .local v1, "x0":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>()V

    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 2

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
    return v0
.end method

.method public reverse()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
