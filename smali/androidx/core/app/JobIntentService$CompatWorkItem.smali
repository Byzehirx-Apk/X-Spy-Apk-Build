.class final Landroidx/core/app/JobIntentService$CompatWorkItem;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Landroidx/core/app/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CompatWorkItem"
.end annotation


# instance fields
.field final mIntent:Landroid/content/Intent;

.field final mStartId:I

.field final synthetic this$0:Landroidx/core/app/JobIntentService;


# direct methods
.method constructor <init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V
    .locals 6

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CompatWorkItem;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/app/JobIntentService;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move v3, p3

    .local v3, "startId":I
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/core/app/JobIntentService$CompatWorkItem;->this$0:Landroidx/core/app/JobIntentService;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 364
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/core/app/JobIntentService$CompatWorkItem;->mIntent:Landroid/content/Intent;

    .line 365
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/core/app/JobIntentService$CompatWorkItem;->mStartId:I

    .line 366
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 3

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CompatWorkItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/JobIntentService$CompatWorkItem;->this$0:Landroidx/core/app/JobIntentService;

    move-object v2, v0

    iget v2, v2, Landroidx/core/app/JobIntentService$CompatWorkItem;->mStartId:I

    invoke-virtual {v1, v2}, Landroidx/core/app/JobIntentService;->stopSelf(I)V

    .line 377
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CompatWorkItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/JobIntentService$CompatWorkItem;->mIntent:Landroid/content/Intent;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/JobIntentService$CompatWorkItem;
    return-object v0
.end method
