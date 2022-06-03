.class public abstract Landroid/support/customtabs/IPostMessageService$Stub;
.super Landroid/os/Binder;
.source "IPostMessageService.java"

# interfaces
.implements Landroid/support/customtabs/IPostMessageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/IPostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/IPostMessageService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.customtabs.IPostMessageService"

.field static final TRANSACTION_onMessageChannelReady:I = 0x2

.field static final TRANSACTION_onPostMessage:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/IPostMessageService$Stub;
    move-object v1, v0

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 19
    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "android.support.customtabs.IPostMessageService"

    invoke-virtual {v1, v2, v3}, Landroid/support/customtabs/IPostMessageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/IPostMessageService;
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

    const-string/jumbo v3, "android.support.customtabs.IPostMessageService"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    move-object v1, v2

    .line 31
    .restart local v1    # "iin":Landroid/os/IInterface;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/customtabs/IPostMessageService;

    if-eqz v2, :cond_1

    .line 32
    move-object v2, v1

    check-cast v2, Landroid/support/customtabs/IPostMessageService;

    move-object v0, v2

    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Landroid/support/customtabs/IPostMessageService$Stub$Proxy;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/customtabs/IPostMessageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/IPostMessageService$Stub;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroid/support/customtabs/IPostMessageService$Stub;
    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroid/support/customtabs/IPostMessageService$Stub;
    move v1, p1

    .local v1, "code":I
    move-object v2, p2

    .local v2, "data":Landroid/os/Parcel;
    move-object/from16 v3, p3

    .local v3, "reply":Landroid/os/Parcel;
    move/from16 v4, p4

    .local v4, "flags":I
    move v8, v1

    sparse-switch v8, :sswitch_data_0

    .line 84
    move-object v8, v0

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    invoke-super {v8, v9, v10, v11, v12}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    move v0, v8

    .end local v0    # "this":Landroid/support/customtabs/IPostMessageService$Stub;
    :goto_0
    return v0

    .line 46
    .restart local v0    # "this":Landroid/support/customtabs/IPostMessageService$Stub;
    :sswitch_0
    move-object v8, v3

    const-string/jumbo v9, "android.support.customtabs.IPostMessageService"

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 51
    :sswitch_1
    move-object v8, v2

    const-string/jumbo v9, "android.support.customtabs.IPostMessageService"

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v8

    move-object v5, v8

    .line 55
    .local v5, "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 56
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v9, v2

    invoke-interface {v8, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    move-object v6, v8

    .line 61
    .local v6, "_arg1":Landroid/os/Bundle;
    :goto_1
    move-object v8, v0

    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/support/customtabs/IPostMessageService$Stub;->onMessageChannelReady(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)V

    .line 62
    move-object v8, v3

    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 59
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :cond_0
    const/4 v8, 0x0

    move-object v6, v8

    .restart local v6    # "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 67
    .end local v5    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v6    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    move-object v8, v2

    const-string/jumbo v9, "android.support.customtabs.IPostMessageService"

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v8

    move-object v5, v8

    .line 71
    .restart local v5    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 73
    .local v6, "_arg1":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 74
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v9, v2

    invoke-interface {v8, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    move-object v7, v8

    .line 79
    .local v7, "_arg2":Landroid/os/Bundle;
    :goto_2
    move-object v8, v0

    move-object v9, v5

    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/customtabs/IPostMessageService$Stub;->onPostMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 80
    move-object v8, v3

    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 77
    .end local v7    # "_arg2":Landroid/os/Bundle;
    :cond_1
    const/4 v8, 0x0

    move-object v7, v8

    .restart local v7    # "_arg2":Landroid/os/Bundle;
    goto :goto_2

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
