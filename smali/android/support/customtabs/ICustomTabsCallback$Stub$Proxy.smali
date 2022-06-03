.class Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICustomTabsCallback.java"

# interfaces
.implements Landroid/support/customtabs/ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/ICustomTabsCallback$Stub;
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
    .line 143
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;
    move-object v1, p1

    .local v1, "remote":Landroid/os/IBinder;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 144
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 145
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;
    move-object v1, v0

    iget-object v1, v1, Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object v0, v1

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;
    return-object v0
.end method

.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;
    move-object v1, p1

    .local v1, "callbackName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 179
    .local v3, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 181
    .local v4, "_reply":Landroid/os/Parcel;
    move-object v6, v3

    :try_start_0
    const-string/jumbo v7, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 182
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 184
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 190
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x3

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 191
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 195
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 196
    .line 197
    return-void

    .line 188
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 195
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;
    const-string/jumbo v1, "android.support.customtabs.ICustomTabsCallback"

    move-object v0, v1

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;
    return-object v0
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;
    move-object v1, p1

    .local v1, "extras":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v2, v5

    .line 201
    .local v2, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 203
    .local v3, "_reply":Landroid/os/Parcel;
    move-object v5, v2

    :try_start_0
    const-string/jumbo v6, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 204
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 205
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 211
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x4

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .line 212
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 216
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 217
    .line 218
    return-void

    .line 209
    :cond_0
    move-object v5, v2

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 216
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;
    move v1, p1

    .local v1, "navigationEvent":I
    move-object v2, p2

    .local v2, "extras":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 157
    .local v3, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 159
    .local v4, "_reply":Landroid/os/Parcel;
    move-object v6, v3

    :try_start_0
    const-string/jumbo v7, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    move-object v6, v3

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 162
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 169
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 173
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 174
    .line 175
    return-void

    .line 166
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 173
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "extras":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 222
    .local v3, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 224
    .local v4, "_reply":Landroid/os/Parcel;
    move-object v6, v3

    :try_start_0
    const-string/jumbo v7, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 225
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 227
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 233
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x5

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 234
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 238
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 239
    .line 240
    return-void

    .line 231
    :cond_0
    move-object v6, v3

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 238
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;
    move v1, p1

    .local v1, "relation":I
    move-object v2, p2

    .local v2, "origin":Landroid/net/Uri;
    move/from16 v3, p3

    .local v3, "result":Z
    move-object/from16 v4, p4

    .local v4, "extras":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    move-object v5, v8

    .line 244
    .local v5, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    move-object v6, v8

    .line 246
    .local v6, "_reply":Landroid/os/Parcel;
    move-object v8, v5

    :try_start_0
    const-string/jumbo v9, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    move-object v8, v5

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 249
    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    move-object v8, v2

    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 255
    :goto_0
    move-object v8, v5

    move v9, v3

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    move-object v8, v4

    if-eqz v8, :cond_2

    .line 257
    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    move-object v8, v4

    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 263
    :goto_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/customtabs/ICustomTabsCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v9, 0x6

    move-object v10, v5

    move-object v11, v6

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    .line 264
    move-object v8, v6

    invoke-virtual {v8}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    move-object v8, v6

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 268
    move-object v8, v5

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 269
    .line 270
    return-void

    .line 253
    :cond_0
    move-object v8, v5

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v6

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 268
    move-object v8, v5

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    move-object v8, v7

    throw v8

    .line 255
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 261
    :cond_2
    move-object v8, v5

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
