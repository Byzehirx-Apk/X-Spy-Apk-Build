.class public Landroidx/browser/customtabs/PostMessageService;
.super Landroid/app/Service;
.source "PostMessageService.java"


# instance fields
.field private mBinder:Landroid/support/customtabs/IPostMessageService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/PostMessageService;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Service;-><init>()V

    .line 31
    move-object v1, v0

    new-instance v2, Landroidx/browser/customtabs/PostMessageService$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/browser/customtabs/PostMessageService$1;-><init>(Landroidx/browser/customtabs/PostMessageService;)V

    iput-object v2, v1, Landroidx/browser/customtabs/PostMessageService;->mBinder:Landroid/support/customtabs/IPostMessageService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/browser/customtabs/PostMessageService;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/customtabs/PostMessageService;->mBinder:Landroid/support/customtabs/IPostMessageService$Stub;

    move-object v0, v2

    .end local v0    # "this":Landroidx/browser/customtabs/PostMessageService;
    return-object v0
.end method
