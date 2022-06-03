.class Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
.super Landroid/support/v4/app/INotificationSideChannel$Stub;
.source "NotificationCompatSideChannelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatSideChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSideChannelStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/app/NotificationCompatSideChannelService;


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompatSideChannelService;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/app/INotificationSideChannel$Stub;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v1, p0

    .local v1, "this":Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
    move-object v2, p1

    .local v2, "packageName":Ljava/lang/String;
    move v3, p2

    .local v3, "id":I
    move-object v4, p3

    .local v4, "tag":Ljava/lang/String;
    move-object v8, v1

    iget-object v8, v8, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/core/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    .line 93
    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v8

    move-wide v5, v8

    .line 95
    .local v5, "idToken":J
    move-object v8, v1

    :try_start_0
    iget-object v8, v8, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Landroidx/core/app/NotificationCompatSideChannelService;->cancel(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    move-wide v8, v5

    invoke-static {v8, v9}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-wide v8, v5

    invoke-static {v8, v9}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    move-object v8, v7

    throw v8
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 103
    move-object v1, p0

    .local v1, "this":Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
    move-object v2, p1

    .local v2, "packageName":Ljava/lang/String;
    move-object v6, v1

    iget-object v6, v6, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroidx/core/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    .line 104
    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v6

    move-wide v3, v6

    .line 106
    .local v3, "idToken":J
    move-object v6, v1

    :try_start_0
    iget-object v6, v6, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompatSideChannelService;->cancelAll(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    move-wide v6, v3

    invoke-static {v6, v7}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-wide v6, v3

    invoke-static {v6, v7}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    move-object v6, v5

    throw v6
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move v2, p2

    .local v2, "id":I
    move-object/from16 v3, p3

    .local v3, "tag":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "notification":Landroid/app/Notification;
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->getCallingUid()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Landroidx/core/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    .line 82
    invoke-static {}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->clearCallingIdentity()J

    move-result-wide v8

    move-wide v5, v8

    .line 84
    .local v5, "idToken":J
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Landroidx/core/app/NotificationCompatSideChannelService;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    move-wide v8, v5

    invoke-static {v8, v9}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-wide v8, v5

    invoke-static {v8, v9}, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->restoreCallingIdentity(J)V

    move-object v8, v7

    throw v8
.end method
