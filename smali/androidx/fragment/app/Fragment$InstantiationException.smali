.class public Landroidx/fragment/app/Fragment$InstantiationException;
.super Ljava/lang/RuntimeException;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstantiationException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/Fragment$InstantiationException;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cause":Ljava/lang/Exception;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    return-void
.end method
