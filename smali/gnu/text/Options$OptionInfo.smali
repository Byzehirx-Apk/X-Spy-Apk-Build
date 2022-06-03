.class public final Lgnu/text/Options$OptionInfo;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/text/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptionInfo"
.end annotation


# instance fields
.field defaultValue:Ljava/lang/Object;

.field documentation:Ljava/lang/String;

.field key:Ljava/lang/String;

.field kind:I

.field next:Lgnu/text/Options$OptionInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lgnu/text/Options$OptionInfo;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
