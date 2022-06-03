.class Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;


# direct methods
.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V
    .locals 4

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    .line 727
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 11

    .prologue
    .line 731
    move-object v1, p0

    .local v1, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;
    move-object v2, p1

    .local v2, "who":Landroid/graphics/drawable/Drawable;
    move-object v3, p2

    .local v3, "what":Ljava/lang/Runnable;
    move-wide v4, p3

    .local v4, "when":J
    move-object v6, v1

    iget-object v6, v6, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v7, v3

    move-wide v8, v4

    invoke-virtual {v6, v7, v8, v9}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 732
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "what":Ljava/lang/Runnable;
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 737
    return-void
.end method
