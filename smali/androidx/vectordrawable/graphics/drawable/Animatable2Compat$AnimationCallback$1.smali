.class Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "Animatable2Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->getPlatformCallback()Landroid/graphics/drawable/Animatable2$AnimationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;


# direct methods
.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;->this$0:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;->this$0:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback$1;->this$0:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method
