.class Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
.super Ljava/lang/Object;
.source "INotificationSideChannel.java"

# interfaces
.implements Landroid/support/v4/app/INotificationSideChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/INotificationSideChannel$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    move-object v1, p1

    .local v1, "remote":Landroid/os/IBinder;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 98
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 99
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object v0, v1

    .end local v0    # "this":Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    return-object v0
.end method

.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move v2, p2

    .local v2, "id":I
    move-object v3, p3

    .local v3, "tag":Ljava/lang/String;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 139
    .local v4, "_data":Landroid/os/Parcel;
    move-object v6, v4

    :try_start_0
    const-string/jumbo v7, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    move-object v6, v4

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x2

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 146
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 147
    .line 148
    return-void

    .line 146
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 156
    .local v2, "_data":Landroid/os/Parcel;
    move-object v4, v2

    :try_start_0
    const-string/jumbo v5, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 157
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 161
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 162
    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    const-string/jumbo v1, "android.support.v4.app.INotificationSideChannel"

    move-object v0, v1

    .end local v0    # "this":Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    return-object v0
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move v2, p2

    .local v2, "id":I
    move-object v3, p3

    .local v3, "tag":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "notification":Landroid/app/Notification;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v5, v7

    .line 115
    .local v5, "_data":Landroid/os/Parcel;
    move-object v7, v5

    :try_start_0
    const-string/jumbo v8, "android.support.v4.app.INotificationSideChannel"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 116
    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    move-object v7, v5

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    move-object v7, v5

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 120
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    move-object v7, v4

    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v8, 0x1

    move-object v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 129
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 130
    .line 131
    return-void

    .line 124
    :cond_0
    move-object v7, v5

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v6

    throw v7
.end method
