.class Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICustomTabsService.java"

# interfaces
.implements Landroid/support/customtabs/ICustomTabsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/ICustomTabsService$Stub;
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
    .line 204
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    move-object v1, p1

    .local v1, "remote":Landroid/os/IBinder;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 205
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 206
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    move-object v1, v0

    iget-object v1, v1, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object v0, v1

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    return-object v0
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    move-object v1, p1

    .local v1, "commandName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v3, v7

    .line 287
    .local v3, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v4, v7

    .line 290
    .local v4, "_reply":Landroid/os/Parcel;
    move-object v7, v3

    :try_start_0
    const-string/jumbo v8, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 293
    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 299
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v8, 0x5

    move-object v9, v3

    move-object v10, v4

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    .line 300
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    .line 301
    const/4 v7, 0x0

    move-object v8, v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 302
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v8, v4

    invoke-interface {v7, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v7

    .line 309
    .local v5, "_result":Landroid/os/Bundle;
    :goto_1
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 310
    move-object v7, v3

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 311
    .line 312
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    return-object v0

    .line 297
    .end local v5    # "_result":Landroid/os/Bundle;
    .restart local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    :cond_0
    move-object v7, v3

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 310
    move-object v7, v3

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v6

    throw v7

    .line 305
    :cond_1
    const/4 v7, 0x0

    move-object v5, v7

    .restart local v5    # "_result":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    const-string/jumbo v1, "android.support.customtabs.ICustomTabsService"

    move-object v0, v1

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    return-object v0
.end method

.method public mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/ICustomTabsCallback;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object/from16 v2, p2

    .local v2, "url":Landroid/net/Uri;
    move-object/from16 v3, p3

    .local v3, "extras":Landroid/os/Bundle;
    move-object/from16 v4, p4

    .local v4, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    move-object v5, v9

    .line 254
    .local v5, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    move-object v6, v9

    .line 257
    .local v6, "_reply":Landroid/os/Parcel;
    move-object v9, v5

    :try_start_0
    const-string/jumbo v10, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 258
    move-object v9, v5

    move-object v10, v1

    if-eqz v10, :cond_0

    move-object v10, v1

    invoke-interface {v10}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    :goto_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 259
    move-object v9, v2

    if-eqz v9, :cond_1

    .line 260
    move-object v9, v5

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    move-object v9, v2

    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 266
    :goto_1
    move-object v9, v3

    if-eqz v9, :cond_2

    .line 267
    move-object v9, v5

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    move-object v9, v3

    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 273
    :goto_2
    move-object v9, v5

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 274
    move-object v9, v0

    iget-object v9, v9, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v10, 0x4

    move-object v11, v5

    move-object v12, v6

    const/4 v13, 0x0

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    .line 275
    move-object v9, v6

    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    .line 276
    const/4 v9, 0x0

    move-object v10, v6

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eq v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_3
    move v7, v9

    .line 279
    .local v7, "_result":Z
    move-object v9, v6

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 280
    move-object v9, v5

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 281
    .line 282
    move v9, v7

    move v0, v9

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    return v0

    .line 258
    .end local v7    # "_result":Z
    .restart local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 264
    :cond_1
    move-object v9, v5

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 279
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v6

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 280
    move-object v9, v5

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    move-object v9, v8

    throw v9

    .line 271
    :cond_2
    move-object v9, v5

    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 276
    :cond_3
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v2, v6

    .line 236
    .local v2, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v3, v6

    .line 239
    .local v3, "_reply":Landroid/os/Parcel;
    move-object v6, v2

    :try_start_0
    const-string/jumbo v7, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    move-object v6, v2

    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-interface {v7}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 241
    move-object v6, v0

    iget-object v6, v6, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x3

    move-object v8, v2

    move-object v9, v3

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    .line 242
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 243
    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 246
    .local v4, "_result":Z
    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 247
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 248
    .line 249
    move v6, v4

    move v0, v6

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    return v0

    .line 240
    .end local v4    # "_result":Z
    .restart local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 243
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 246
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 247
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method public postMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "extras":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    move-object v4, v8

    .line 367
    .local v4, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    move-object v5, v8

    .line 370
    .local v5, "_reply":Landroid/os/Parcel;
    move-object v8, v4

    :try_start_0
    const-string/jumbo v9, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    move-object v8, v4

    move-object v9, v1

    if-eqz v9, :cond_0

    move-object v9, v1

    invoke-interface {v9}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    :goto_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 372
    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 374
    move-object v8, v4

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 380
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v9, 0x8

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    .line 381
    move-object v8, v5

    invoke-virtual {v8}, Landroid/os/Parcel;->readException()V

    .line 382
    move-object v8, v5

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    move v6, v8

    .line 385
    .local v6, "_result":I
    move-object v8, v5

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 386
    move-object v8, v4

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 387
    .line 388
    move v8, v6

    move v0, v8

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    return v0

    .line 371
    .end local v6    # "_result":I
    .restart local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 378
    :cond_1
    move-object v8, v4

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 385
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v5

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 386
    move-object v8, v4

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    move-object v8, v7

    throw v8
.end method

.method public requestPostMessageChannel(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v2, p2

    .local v2, "postMessageOrigin":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v3, v7

    .line 342
    .local v3, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v4, v7

    .line 345
    .local v4, "_reply":Landroid/os/Parcel;
    move-object v7, v3

    :try_start_0
    const-string/jumbo v8, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    move-object v7, v3

    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-interface {v8}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :goto_0
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 347
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 348
    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 354
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v8, 0x7

    move-object v9, v3

    move-object v10, v4

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    .line 355
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    .line 356
    const/4 v7, 0x0

    move-object v8, v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eq v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_2
    move v5, v7

    .line 359
    .local v5, "_result":Z
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 360
    move-object v7, v3

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 361
    .line 362
    move v7, v5

    move v0, v7

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    return v0

    .line 346
    .end local v5    # "_result":Z
    .restart local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 352
    :cond_1
    move-object v7, v3

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 359
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 360
    move-object v7, v3

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v6

    throw v7

    .line 356
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v2, p2

    .local v2, "bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v3, v7

    .line 317
    .local v3, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v4, v7

    .line 320
    .local v4, "_reply":Landroid/os/Parcel;
    move-object v7, v3

    :try_start_0
    const-string/jumbo v8, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 321
    move-object v7, v3

    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-interface {v8}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :goto_0
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 322
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 323
    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 329
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v8, 0x6

    move-object v9, v3

    move-object v10, v4

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    .line 330
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    .line 331
    const/4 v7, 0x0

    move-object v8, v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eq v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_2
    move v5, v7

    .line 334
    .local v5, "_result":Z
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 335
    move-object v7, v3

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 336
    .line 337
    move v7, v5

    move v0, v7

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    return v0

    .line 321
    .end local v5    # "_result":Z
    .restart local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 327
    :cond_1
    move-object v7, v3

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 334
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 335
    move-object v7, v3

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v6

    throw v7

    .line 331
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public validateRelationship(Landroid/support/customtabs/ICustomTabsCallback;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    move-object v1, p1

    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    move/from16 v2, p2

    .local v2, "relation":I
    move-object/from16 v3, p3

    .local v3, "origin":Landroid/net/Uri;
    move-object/from16 v4, p4

    .local v4, "extras":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    move-object v5, v9

    .line 393
    .local v5, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    move-object v6, v9

    .line 396
    .local v6, "_reply":Landroid/os/Parcel;
    move-object v9, v5

    :try_start_0
    const-string/jumbo v10, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 397
    move-object v9, v5

    move-object v10, v1

    if-eqz v10, :cond_0

    move-object v10, v1

    invoke-interface {v10}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    :goto_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 398
    move-object v9, v5

    move v10, v2

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    move-object v9, v3

    if-eqz v9, :cond_1

    .line 400
    move-object v9, v5

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    move-object v9, v3

    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 406
    :goto_1
    move-object v9, v4

    if-eqz v9, :cond_2

    .line 407
    move-object v9, v5

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    move-object v9, v4

    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 413
    :goto_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v10, 0x9

    move-object v11, v5

    move-object v12, v6

    const/4 v13, 0x0

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    .line 414
    move-object v9, v6

    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    .line 415
    const/4 v9, 0x0

    move-object v10, v6

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eq v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_3
    move v7, v9

    .line 418
    .local v7, "_result":Z
    move-object v9, v6

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 419
    move-object v9, v5

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 420
    .line 421
    move v9, v7

    move v0, v9

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    return v0

    .line 397
    .end local v7    # "_result":Z
    .restart local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 404
    :cond_1
    move-object v9, v5

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 418
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v6

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 419
    move-object v9, v5

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    move-object v9, v8

    throw v9

    .line 411
    :cond_2
    move-object v9, v5

    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 415
    :cond_3
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public warmup(J)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    move-wide v1, p1

    .local v1, "flags":J
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v3, v7

    .line 218
    .local v3, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    move-object v4, v7

    .line 221
    .local v4, "_reply":Landroid/os/Parcel;
    move-object v7, v3

    :try_start_0
    const-string/jumbo v8, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    move-object v7, v3

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 223
    move-object v7, v0

    iget-object v7, v7, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v8, 0x2

    move-object v9, v3

    move-object v10, v4

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    .line 224
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    .line 225
    const/4 v7, 0x0

    move-object v8, v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eq v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v5, v7

    .line 228
    .local v5, "_result":Z
    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 229
    move-object v7, v3

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 230
    .line 231
    move v7, v5

    move v0, v7

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    return v0

    .line 225
    .end local v5    # "_result":Z
    .restart local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 229
    move-object v7, v3

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v7, v6

    throw v7
.end method
