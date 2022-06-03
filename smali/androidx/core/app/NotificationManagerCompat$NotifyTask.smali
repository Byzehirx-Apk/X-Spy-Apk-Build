.class Landroidx/core/app/NotificationManagerCompat$NotifyTask;
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
    name = "NotifyTask"
.end annotation


# instance fields
.field final id:I

.field final notif:Landroid/app/Notification;

.field final packageName:Ljava/lang/String;

.field final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 7

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationManagerCompat$NotifyTask;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move v2, p2

    .local v2, "id":I
    move-object v3, p3

    .local v3, "tag":Ljava/lang/String;
    move-object v4, p4

    .local v4, "notif":Landroid/app/Notification;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 597
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->packageName:Ljava/lang/String;

    .line 598
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->id:I

    .line 599
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->tag:Ljava/lang/String;

    .line 600
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->notif:Landroid/app/Notification;

    .line 601
    return-void
.end method


# virtual methods
.method public send(Landroid/support/v4/app/INotificationSideChannel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationManagerCompat$NotifyTask;
    move-object v1, p1

    .local v1, "service":Landroid/support/v4/app/INotificationSideChannel;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->packageName:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->id:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->tag:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->notif:Landroid/app/Notification;

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/support/v4/app/INotificationSideChannel;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    .line 606
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationManagerCompat$NotifyTask;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "NotifyTask["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 611
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string/jumbo v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 612
    move-object v2, v1

    const-string/jumbo v3, ", id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 613
    move-object v2, v1

    const-string/jumbo v3, ", tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationManagerCompat$NotifyTask;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 614
    move-object v2, v1

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 615
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationManagerCompat$NotifyTask;
    return-object v0
.end method
