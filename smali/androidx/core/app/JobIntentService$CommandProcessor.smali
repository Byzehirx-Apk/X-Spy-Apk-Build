.class final Landroidx/core/app/JobIntentService$CommandProcessor;
.super Landroid/os/AsyncTask;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CommandProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/app/JobIntentService;


# direct methods
.method constructor <init>(Landroidx/core/app/JobIntentService;)V
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CommandProcessor;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/app/JobIntentService;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/JobIntentService$CommandProcessor;->this$0:Landroidx/core/app/JobIntentService;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CommandProcessor;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroidx/core/app/JobIntentService$CommandProcessor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/JobIntentService$CommandProcessor;
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CommandProcessor;
    move-object v1, p1

    .local v1, "params":[Ljava/lang/Void;
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService$CommandProcessor;->this$0:Landroidx/core/app/JobIntentService;

    invoke-virtual {v3}, Landroidx/core/app/JobIntentService;->dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "work":Landroidx/core/app/JobIntentService$GenericWorkItem;
    if-eqz v3, :cond_0

    .line 392
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/JobIntentService$CommandProcessor;->this$0:Landroidx/core/app/JobIntentService;

    move-object v4, v2

    invoke-interface {v4}, Landroidx/core/app/JobIntentService$GenericWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/JobIntentService;->onHandleWork(Landroid/content/Intent;)V

    .line 394
    move-object v3, v2

    invoke-interface {v3}, Landroidx/core/app/JobIntentService$GenericWorkItem;->complete()V

    goto :goto_0

    .line 399
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/JobIntentService$CommandProcessor;
    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CommandProcessor;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroidx/core/app/JobIntentService$CommandProcessor;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CommandProcessor;
    move-object v1, p1

    .local v1, "aVoid":Ljava/lang/Void;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/JobIntentService$CommandProcessor;->this$0:Landroidx/core/app/JobIntentService;

    invoke-virtual {v2}, Landroidx/core/app/JobIntentService;->processorFinished()V

    .line 405
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CommandProcessor;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroidx/core/app/JobIntentService$CommandProcessor;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/JobIntentService$CommandProcessor;
    move-object v1, p1

    .local v1, "aVoid":Ljava/lang/Void;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/JobIntentService$CommandProcessor;->this$0:Landroidx/core/app/JobIntentService;

    invoke-virtual {v2}, Landroidx/core/app/JobIntentService;->processorFinished()V

    .line 410
    return-void
.end method
