.class public Landroidx/core/app/ComponentActivity$ExtraData;
.super Ljava/lang/Object;
.source "ComponentActivity.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraData"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ComponentActivity$ExtraData;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
