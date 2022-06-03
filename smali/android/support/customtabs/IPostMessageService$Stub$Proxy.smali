.class Landroid/support/customtabs/IPostMessageService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPostMessageService.java"

# interfaces
.implements Landroid/support/customtabs/IPostMessageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/IPostMessageService$Stub;
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
    .line 90
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/IPostMessageService$Stub$Proxy;
    move-object v1, p1

    .local v1, "remote":Landroid/os/IBinder;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 91
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/customtabs/IPostMessageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 92
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/IPostMessageService$Stub$Proxy;
    move-object v1, v0

    iget-object v1, v1, Landroid/support/customtabs/IPostMessageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object v0, v1

    .end local v0    # "this":Landroid/support/customtabs/IPostMessageService$Stub$Proxy;
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/IPostMessageService$Stub$Proxy;
    const-string/jumbo v1, "android.support.customtabs.IPostMessageService"

    move-object v0, v1

    .end local v0    # "this":Landroid/support/customtabs/IPostMessageService$Stub$Proxy;
    return-object v0
.end method

.method public onMessageChannelReady(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/IPostMessageService$Stub$Proxy;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v2, p2

    .local v2, "extras":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 104
    .local v3, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 106
    .local v4, "_reply":Landroid/os/Parcel;
    move-object v6, v3

    :try_start_0
    const-string/jumbo v7, "android.support.customtabs.IPostMessageService"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 107
    move-object v6, v3

    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-interface {v7}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 108
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 109
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/customtabs/IPostMessageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 116
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 120
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 121
    .line 122
    return-void

    .line 107
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 113
    :cond_1
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 119
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 120
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public onPostMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/IPostMessageService$Stub$Proxy;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, p3

    .local v3, "extras":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v4, v7

    .line 126
    .local v4, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v5, v7

    .line 128
    .local v5, "_reply":Landroid/os/Parcel;
    move-object v7, v4

    :try_start_0
    const-string/jumbo v8, "android.support.customtabs.IPostMessageService"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    move-object v7, v4

    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-interface {v8}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :goto_0
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 130
    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 132
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/customtabs/IPostMessageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v8, 0x3

    move-object v9, v4

    move-object v10, v5

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    .line 139
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 143
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 144
    .line 145
    return-void

    .line 129
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 136
    :cond_1
    move-object v7, v4

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 142
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 143
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v6

    throw v7
.end method
