.class public abstract Landroid/support/customtabs/ICustomTabsService$Stub;
.super Landroid/os/Binder;
.source "ICustomTabsService.java"

# interfaces
.implements Landroid/support/customtabs/ICustomTabsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.customtabs.ICustomTabsService"

.field static final TRANSACTION_extraCommand:I = 0x5

.field static final TRANSACTION_mayLaunchUrl:I = 0x4

.field static final TRANSACTION_newSession:I = 0x3

.field static final TRANSACTION_postMessage:I = 0x8

.field static final TRANSACTION_requestPostMessageChannel:I = 0x7

.field static final TRANSACTION_updateVisuals:I = 0x6

.field static final TRANSACTION_validateRelationship:I = 0x9

.field static final TRANSACTION_warmup:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub;
    move-object v1, v0

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 19
    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v1, v2, v3}, Landroid/support/customtabs/ICustomTabsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsService;
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "obj":Landroid/os/IBinder;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 28
    const/4 v2, 0x0

    move-object v0, v2

    .line 34
    .end local v0    # "obj":Landroid/os/IBinder;
    .local v1, "iin":Landroid/os/IInterface;
    :goto_0
    return-object v0

    .line 30
    .end local v1    # "iin":Landroid/os/IInterface;
    .restart local v0    # "obj":Landroid/os/IBinder;
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "android.support.customtabs.ICustomTabsService"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    move-object v1, v2

    .line 31
    .restart local v1    # "iin":Landroid/os/IInterface;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/customtabs/ICustomTabsService;

    if-eqz v2, :cond_1

    .line 32
    move-object v2, v1

    check-cast v2, Landroid/support/customtabs/ICustomTabsService;

    move-object v0, v2

    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/ICustomTabsService$Stub;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroid/support/customtabs/ICustomTabsService$Stub;
    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    move-object/from16 v1, p0

    .local v1, "this":Landroid/support/customtabs/ICustomTabsService$Stub;
    move/from16 v2, p1

    .local v2, "code":I
    move-object/from16 v3, p2

    .local v3, "data":Landroid/os/Parcel;
    move-object/from16 v4, p3

    .local v4, "reply":Landroid/os/Parcel;
    move/from16 v5, p4

    .local v5, "flags":I
    move v11, v2

    sparse-switch v11, :sswitch_data_0

    .line 198
    move-object v11, v1

    move v12, v2

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    invoke-super {v11, v12, v13, v14, v15}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    move v1, v11

    .end local v1    # "this":Landroid/support/customtabs/ICustomTabsService$Stub;
    :goto_0
    return v1

    .line 46
    .restart local v1    # "this":Landroid/support/customtabs/ICustomTabsService$Stub;
    :sswitch_0
    move-object v11, v4

    const-string/jumbo v12, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v11, 0x1

    move v1, v11

    goto :goto_0

    .line 51
    :sswitch_1
    move-object v11, v3

    const-string/jumbo v12, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    move-object v11, v3

    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    move-wide v6, v11

    .line 54
    .local v6, "_arg0":J
    move-object v11, v1

    move-wide v12, v6

    invoke-virtual {v11, v12, v13}, Landroid/support/customtabs/ICustomTabsService$Stub;->warmup(J)Z

    move-result v11

    move v8, v11

    .line 55
    .local v8, "_result":Z
    move-object v11, v4

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object v11, v4

    move v12, v8

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v11, 0x1

    move v1, v11

    goto :goto_0

    .line 56
    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    .line 61
    .end local v6    # "_arg0":J
    .end local v8    # "_result":Z
    :sswitch_2
    move-object v11, v3

    const-string/jumbo v12, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    move-object v11, v3

    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v11

    move-object v6, v11

    .line 64
    .local v6, "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v11, v1

    move-object v12, v6

    invoke-virtual {v11, v12}, Landroid/support/customtabs/ICustomTabsService$Stub;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z

    move-result v11

    move v7, v11

    .line 65
    .local v7, "_result":Z
    move-object v11, v4

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object v11, v4

    move v12, v7

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v11, 0x1

    move v1, v11

    goto :goto_0

    .line 66
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 71
    .end local v6    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v7    # "_result":Z
    :sswitch_3
    move-object v11, v3

    const-string/jumbo v12, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    move-object v11, v3

    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v11

    move-object v6, v11

    .line 75
    .restart local v6    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    const/4 v11, 0x0

    move-object v12, v3

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eq v11, v12, :cond_2

    .line 76
    sget-object v11, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v12, v3

    invoke-interface {v11, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    move-object v7, v11

    .line 82
    .local v7, "_arg1":Landroid/net/Uri;
    :goto_3
    const/4 v11, 0x0

    move-object v12, v3

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eq v11, v12, :cond_3

    .line 83
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v12, v3

    invoke-interface {v11, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    move-object v8, v11

    .line 89
    .local v8, "_arg2":Landroid/os/Bundle;
    :goto_4
    move-object v11, v3

    sget-object v12, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    move-object v9, v11

    .line 90
    .local v9, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    move-object v11, v1

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    move-object v15, v9

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/support/customtabs/ICustomTabsService$Stub;->mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v11

    move v10, v11

    .line 91
    .local v10, "_result":Z
    move-object v11, v4

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    move-object v11, v4

    move v12, v10

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_5
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v11, 0x1

    move v1, v11

    goto/16 :goto_0

    .line 79
    .end local v7    # "_arg1":Landroid/net/Uri;
    .end local v8    # "_arg2":Landroid/os/Bundle;
    .end local v9    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v10    # "_result":Z
    :cond_2
    const/4 v11, 0x0

    move-object v7, v11

    .restart local v7    # "_arg1":Landroid/net/Uri;
    goto :goto_3

    .line 86
    :cond_3
    const/4 v11, 0x0

    move-object v8, v11

    .restart local v8    # "_arg2":Landroid/os/Bundle;
    goto :goto_4

    .line 92
    .restart local v9    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .restart local v10    # "_result":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_5

    .line 97
    .end local v6    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v7    # "_arg1":Landroid/net/Uri;
    .end local v8    # "_arg2":Landroid/os/Bundle;
    .end local v9    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v10    # "_result":Z
    :sswitch_4
    move-object v11, v3

    const-string/jumbo v12, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    move-object v11, v3

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 101
    .local v6, "_arg0":Ljava/lang/String;
    const/4 v11, 0x0

    move-object v12, v3

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eq v11, v12, :cond_5

    .line 102
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v12, v3

    invoke-interface {v11, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    move-object v7, v11

    .line 107
    .local v7, "_arg1":Landroid/os/Bundle;
    :goto_6
    move-object v11, v1

    move-object v12, v6

    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Landroid/support/customtabs/ICustomTabsService$Stub;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    move-object v8, v11

    .line 108
    .local v8, "_result":Landroid/os/Bundle;
    move-object v11, v4

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    move-object v11, v8

    if-eqz v11, :cond_6

    .line 110
    move-object v11, v4

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    move-object v11, v8

    move-object v12, v4

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_7
    const/4 v11, 0x1

    move v1, v11

    goto/16 :goto_0

    .line 105
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_result":Landroid/os/Bundle;
    :cond_5
    const/4 v11, 0x0

    move-object v7, v11

    .restart local v7    # "_arg1":Landroid/os/Bundle;
    goto :goto_6

    .line 114
    .restart local v8    # "_result":Landroid/os/Bundle;
    :cond_6
    move-object v11, v4

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 120
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_result":Landroid/os/Bundle;
    :sswitch_5
    move-object v11, v3

    const-string/jumbo v12, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    move-object v11, v3

    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v11

    move-object v6, v11

    .line 124
    .local v6, "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    const/4 v11, 0x0

    move-object v12, v3

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eq v11, v12, :cond_7

    .line 125
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v12, v3

    invoke-interface {v11, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    move-object v7, v11

    .line 130
    .restart local v7    # "_arg1":Landroid/os/Bundle;
    :goto_8
    move-object v11, v1

    move-object v12, v6

    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Landroid/support/customtabs/ICustomTabsService$Stub;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z

    move-result v11

    move v8, v11

    .line 131
    .local v8, "_result":Z
    move-object v11, v4

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    move-object v11, v4

    move v12, v8

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_9
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v11, 0x1

    move v1, v11

    goto/16 :goto_0

    .line 128
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_result":Z
    :cond_7
    const/4 v11, 0x0

    move-object v7, v11

    .restart local v7    # "_arg1":Landroid/os/Bundle;
    goto :goto_8

    .line 132
    .restart local v8    # "_result":Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_9

    .line 137
    .end local v6    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_result":Z
    :sswitch_6
    move-object v11, v3

    const-string/jumbo v12, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    move-object v11, v3

    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v11

    move-object v6, v11

    .line 141
    .restart local v6    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    const/4 v11, 0x0

    move-object v12, v3

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eq v11, v12, :cond_9

    .line 142
    sget-object v11, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v12, v3

    invoke-interface {v11, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    move-object v7, v11

    .line 147
    .local v7, "_arg1":Landroid/net/Uri;
    :goto_a
    move-object v11, v1

    move-object v12, v6

    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Landroid/support/customtabs/ICustomTabsService$Stub;->requestPostMessageChannel(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z

    move-result v11

    move v8, v11

    .line 148
    .restart local v8    # "_result":Z
    move-object v11, v4

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    move-object v11, v4

    move v12, v8

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_b
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v11, 0x1

    move v1, v11

    goto/16 :goto_0

    .line 145
    .end local v7    # "_arg1":Landroid/net/Uri;
    .end local v8    # "_result":Z
    :cond_9
    const/4 v11, 0x0

    move-object v7, v11

    .restart local v7    # "_arg1":Landroid/net/Uri;
    goto :goto_a

    .line 149
    .restart local v8    # "_result":Z
    :cond_a
    const/4 v12, 0x0

    goto :goto_b

    .line 154
    .end local v6    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v7    # "_arg1":Landroid/net/Uri;
    .end local v8    # "_result":Z
    :sswitch_7
    move-object v11, v3

    const-string/jumbo v12, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    move-object v11, v3

    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v11

    move-object v6, v11

    .line 158
    .restart local v6    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v11, v3

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 160
    .local v7, "_arg1":Ljava/lang/String;
    const/4 v11, 0x0

    move-object v12, v3

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eq v11, v12, :cond_b

    .line 161
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v12, v3

    invoke-interface {v11, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    move-object v8, v11

    .line 166
    .local v8, "_arg2":Landroid/os/Bundle;
    :goto_c
    move-object v11, v1

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/customtabs/ICustomTabsService$Stub;->postMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v11

    move v9, v11

    .line 167
    .local v9, "_result":I
    move-object v11, v4

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    move-object v11, v4

    move v12, v9

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v11, 0x1

    move v1, v11

    goto/16 :goto_0

    .line 164
    .end local v8    # "_arg2":Landroid/os/Bundle;
    .end local v9    # "_result":I
    :cond_b
    const/4 v11, 0x0

    move-object v8, v11

    .restart local v8    # "_arg2":Landroid/os/Bundle;
    goto :goto_c

    .line 173
    .end local v6    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/os/Bundle;
    :sswitch_8
    move-object v11, v3

    const-string/jumbo v12, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    move-object v11, v3

    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v11

    move-object v6, v11

    .line 177
    .restart local v6    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v11, v3

    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move v7, v11

    .line 179
    .local v7, "_arg1":I
    const/4 v11, 0x0

    move-object v12, v3

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eq v11, v12, :cond_c

    .line 180
    sget-object v11, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v12, v3

    invoke-interface {v11, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    move-object v8, v11

    .line 186
    .local v8, "_arg2":Landroid/net/Uri;
    :goto_d
    const/4 v11, 0x0

    move-object v12, v3

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eq v11, v12, :cond_d

    .line 187
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v12, v3

    invoke-interface {v11, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    move-object v9, v11

    .line 192
    .local v9, "_arg3":Landroid/os/Bundle;
    :goto_e
    move-object v11, v1

    move-object v12, v6

    move v13, v7

    move-object v14, v8

    move-object v15, v9

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/support/customtabs/ICustomTabsService$Stub;->validateRelationship(Landroid/support/customtabs/ICustomTabsCallback;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result v11

    move v10, v11

    .line 193
    .restart local v10    # "_result":Z
    move-object v11, v4

    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object v11, v4

    move v12, v10

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    :goto_f
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v11, 0x1

    move v1, v11

    goto/16 :goto_0

    .line 183
    .end local v8    # "_arg2":Landroid/net/Uri;
    .end local v9    # "_arg3":Landroid/os/Bundle;
    .end local v10    # "_result":Z
    :cond_c
    const/4 v11, 0x0

    move-object v8, v11

    .restart local v8    # "_arg2":Landroid/net/Uri;
    goto :goto_d

    .line 190
    :cond_d
    const/4 v11, 0x0

    move-object v9, v11

    .restart local v9    # "_arg3":Landroid/os/Bundle;
    goto :goto_e

    .line 194
    .restart local v10    # "_result":Z
    :cond_e
    const/4 v12, 0x0

    goto :goto_f

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
