.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;
.super Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatableTransition"
.end annotation


# instance fields
.field private final mA:Landroid/graphics/drawable/Animatable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Animatable;)V
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;
    move-object v1, p1

    .local v1, "a":Landroid/graphics/drawable/Animatable;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;)V

    .line 370
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    .line 371
    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 376
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 381
    return-void
.end method
