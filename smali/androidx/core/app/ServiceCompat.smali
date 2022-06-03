.class public final Landroidx/core/app/ServiceCompat;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ServiceCompat$StopForegroundFlags;
    }
.end annotation


# static fields
.field public static final START_STICKY:I = 0x1

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ServiceCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .locals 5
    .param p0    # Landroid/app/Service;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "service":Landroid/app/Service;
    move v1, p1

    .local v1, "flags":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 99
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Service;->stopForeground(I)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
