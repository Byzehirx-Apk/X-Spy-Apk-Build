.class Landroidx/core/app/NotificationManagerCompat$CancelTask;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Landroidx/core/app/NotificationManagerCompat$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancelTask"
.end annotation


# instance fields
.field final all:Z

.field final id:I

.field final packageName:Ljava/lang/String;

.field final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationManagerCompat$CancelTask;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 626
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    .line 627
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroidx/core/app/NotificationManagerCompat$CancelTask;->id:I

    .line 628
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/app/NotificationManagerCompat$CancelTask;->tag:Ljava/lang/String;

    .line 629
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/core/app/NotificationManagerCompat$CancelTask;->all:Z

    .line 630
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationManagerCompat$CancelTask;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move v2, p2

    .local v2, "id":I
    move-object v3, p3

    .local v3, "tag":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 633
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/core/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    .line 634
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/core/app/NotificationManagerCompat$CancelTask;->id:I

    .line 635
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/core/app/NotificationManagerCompat$CancelTask;->tag:Ljava/lang/String;

    .line 636
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/core/app/NotificationManagerCompat$CancelTask;->all:Z

    .line 637
    return-void
.end method


# virtual methods
.method public send(Landroid/support/v4/app/INotificationSideChannel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationManagerCompat$CancelTask;
    move-object v1, p1

    .local v1, "service":Landroid/support/v4/app/INotificationSideChannel;
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/core/app/NotificationManagerCompat$CancelTask;->all:Z

    if-eqz v2, :cond_0

    .line 642
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/support/v4/app/INotificationSideChannel;->cancelAll(Ljava/lang/String;)V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Landroidx/core/app/NotificationManagerCompat$CancelTask;->id:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationManagerCompat$CancelTask;->tag:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Landroid/support/v4/app/INotificationSideChannel;->cancel(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationManagerCompat$CancelTask;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "CancelTask["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 651
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string/jumbo v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 652
    move-object v2, v1

    const-string/jumbo v3, ", id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationManagerCompat$CancelTask;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 653
    move-object v2, v1

    const-string/jumbo v3, ", tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationManagerCompat$CancelTask;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 654
    move-object v2, v1

    const-string/jumbo v3, ", all:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/core/app/NotificationManagerCompat$CancelTask;->all:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 655
    move-object v2, v1

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 656
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationManagerCompat$CancelTask;
    return-object v0
.end method
