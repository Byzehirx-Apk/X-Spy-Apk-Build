.class public abstract Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GlideDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final LOOP_FOREVER:I = -0x1

.field public static final LOOP_INTRINSIC:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    move-object v1, v0

    invoke-direct {v1}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isAnimated()Z
.end method

.method public abstract setLoopCount(I)V
.end method
