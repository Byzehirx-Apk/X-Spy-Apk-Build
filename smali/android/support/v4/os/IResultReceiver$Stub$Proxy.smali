.class Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IResultReceiver.java"

# interfaces
.implements Landroid/support/v4/os/IResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/IResultReceiver$Stub;
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
    .line 68
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
    move-object v1, p1

    .local v1, "remote":Landroid/os/IBinder;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object v0, v1

    .end local v0    # "this":Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
    const-string/jumbo v1, "android.support.v4.os.IResultReceiver"

    move-object v0, v1

    .end local v0    # "this":Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
    return-object v0
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroid/support/v4/os/IResultReceiver$Stub$Proxy;
    move v1, p1

    .local v1, "resultCode":I
    move-object v2, p2

    .local v2, "resultData":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 83
    .local v3, "_data":Landroid/os/Parcel;
    move-object v5, v3

    :try_start_0
    const-string/jumbo v6, "android.support.v4.os.IResultReceiver"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 84
    move-object v5, v3

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 86
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/os/IResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x1

    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 95
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 96
    .line 97
    return-void

    .line 90
    :cond_0
    move-object v5, v3

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method
